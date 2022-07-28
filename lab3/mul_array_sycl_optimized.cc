#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>

namespace {
  constexpr size_t n = 1024;
};

class optimized;

int main()
{
    std::vector<float> A, res(1);

    A.reserve(n);

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(0.55f, 0.56f);

    float value = dis(gen);
    A.push_back(value);

    for(size_t i = 1; i < n; ++i) {
	A.push_back(A[0] + static_cast<float>(i)/static_cast<float>(n));
    }

  const size_t m = 5;

  sycl::queue q;
  {
    sycl::buffer A_sycl(A);
    sycl::buffer res_sycl(res);

    q.submit([&](sycl::handler &h){
      sycl::accessor AA(A_sycl, h, sycl::read_only);
      sycl::accessor RES(res_sycl,h, sycl::write_only);
      h.single_task<class optimized>([=](){
        float mul = 1.0f;
        float shift[m] = {1.0f};

        for(size_t i=0;i<n; ++i){
          auto cur = shift[m-1] * AA[i];

          #pragma unroll
          for(size_t j=m-1; j>0;--j){
            shift[j] =shift[j-1];
          }
          shift[0] = cur;
        }

        #pragma unroll
        for(size_t i = 0; i<m;++i){
          mul *= shift[i];
        }
        RES[0] = mul;
      });
    });
  }

    std::cout << "res[0] = " << res[0] << std::endl;
}
