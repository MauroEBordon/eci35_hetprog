#include <iostream>
#include <random>
#include <vector>

#include <CL/sycl.hpp>

namespace {
  constexpr size_t n = 1000000;
};

class naive;

int main() {
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

  sycl::queue q;
  {
    sycl::buffer A_sycl(A);
    sycl::buffer res_sycl(res);

    q.submit([&](sycl::handler &h){
      sycl::accessor AA(A_sycl, h, sycl::read_only);
      sycl::accessor RES(res_sycl,h, sycl::write_only);
      h.single_task<class naive>([=](){
        float mul = 1.0f;
        for(size_t i = 0; i<n;++i){
          mul *= AA[i];
        }
        RES[0] = mul;
      });
    });
  }

    std::cout << "res[0] = " << res[0] << std::endl;
}
