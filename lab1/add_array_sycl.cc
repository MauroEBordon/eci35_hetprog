#include <iostream>
#include <random>
#include <vector>
#include <CL/sycl.hpp>

#include "add_array.hh"

const size_t n{8192*8192};

using namespace sycl;

int main() {
	std::vector<float> A(n), B(n), C(n);
	queue q{ host_selector{}};
	std::cout << q.get_device().get_info<info::device::name>() << '\n';
	{
		buffer bufA {A}, bufB {B};
		
		q.submit([&] (handler &h){
			auto A = bufA.get_access(h, write_only);
			auto B = bufB.get_access(h, write_only);

			h.parallel_for(n, [=] (auto i){
				A[i] = i;
				B[i] = i;
			});
		});
	}
	// q.wait();

	for (int i = 0; i < 8; i++)
		std::cout << "A[" << i << "] = " << A[i] << std::endl;
	{
		buffer bufA {A}, bufB {B}, bufC {C};
		q.submit([&](handler &h) {
			auto A = bufA.get_access(h, read_only);
			auto B = bufB.get_access(h, read_only);
			auto C = bufC.get_access(h, write_only);

			h.parallel_for(n, [=](auto i){
				C[i] = A[i] + B[i];
			});
		});
	}
	for (int i = 0; i < 8; i++)
		std::cout << "C[" << i << "] = " << C[i] << std::endl;
}
