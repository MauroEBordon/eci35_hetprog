#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>
// Header locations and some DPC++ extensions changed between beta09 and beta10
// Temporarily modify the code sample to accept either version
#define BETA09 20200827
#if __SYCL_COMPILER_VERSION <= BETA09
    #include <ext/intel/fpga_extensions.hpp>
    namespace INTEL = sycl::intel;  // Namespace alias for backward compatibility
#else
    #include <ext/intel/fpga_extensions.hpp>
#endif

using namespace sycl;

const size_t pipe_entries = 16; // ensure 512 bit burst
using a_pipe = pipe<                 // Defined in the SYCL headers. also ext::intel::pipe
    class a_read_pipe,   // An identifier for the pipe.
    float,                            // The type of data in the pipe.
    pipe_entries>;

using b_pipe = pipe<                 // Defined in the SYCL headers. also ext::intel::pipe
    class b_read_pipe,   // An identifier for the pipe.
    float,                            // The type of data in the pipe.
    pipe_entries>;

using c_pipe = pipe<                 // Defined in the SYCL headers. also ext::intel::pipe
    class c_write_pipe,   // An identifier for the pipe.
    float,                            // The type of data in the pipe.
    pipe_entries>;


int main() {

    const size_t n = 32;

    std::vector<float> A, B, C(n);

    A.reserve(n);
    B.reserve(n);

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(0.0f, 1.0f);

    float value = dis(gen);
    A.push_back(value);
    B.push_back(value - 1.0f);

    for(size_t i = 1; i < n; ++i) {
        A.push_back(A[0]+i);
        B.push_back(B[0]+i);
    }

#if defined(FPGA_EMULATOR)
    ext::intel::fpga_emulator_selector device_selector;
#else
    ext::intel::fpga_selector device_selector;
#endif

    // property list to enable SYCL profiling for the device queue
    auto props = property_list{property::queue::enable_profiling()};
    {
        buffer AA{A}, BB{B}, CC{C};
        queue q(device_selector);
        q.submit([&](handler &h) {
            accessor A_A(AA, h, read_only);
            h.single_task([=]() {
                for (size_t i = 0; i < n; ++i) {
                    a_pipe::write(A_A[i]);
                }
            });
        });

        q.submit([&](handler &h) {
            accessor B_B(BB, h, read_only);  
            h.single_task([=]() {
                for (size_t i = 0; i < n; ++i) {
                    b_pipe::write(B_B[i]);
                }
            });
        });

        q.submit([&](handler &h) {
            h.single_task([=]() {
                for (size_t i = 0; i < n; ++i) {
                    c_pipe::write(a_pipe::read() + b_pipe::read());
                }
            });
        });

        q.submit([&](handler &h) {
            accessor C_C(CC, h, write_only);
            h.single_task([=]() {
                for (size_t i = 0; i < n; ++i) {
                    float input = (float) c_pipe::read();
                    C_C[i] = input;
                }
            });
        });

    }

    for (int i = 0; i < 8; i++) {
      std::cout << "C[" << i << "] = " << C[i] << std::endl;
    }
}
