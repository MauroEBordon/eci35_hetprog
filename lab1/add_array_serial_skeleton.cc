#include <iostream>
#include <random>
#include <vector>
#include <chrono>

#include "add_array.hh"

using namespace add_array;

int main() {
	std::vector<float> A, B, C;

  // ensure the vectors are contiguous
	A.reserve(n);
	B.reserve(n);
	C.reserve(n);

	std::random_device rd;
	std::mt19937 gen(rd());
	std::uniform_real_distribution<float> dis(0.0f, 1.0f);

  // use a random value to initialize the first element to avoid compiler
  // optimizations
	float value = dis(gen);
	float value2 = dis(gen);
	A.push_back(value);
	B.push_back(value2);

  // initialize the array
  // ...
	for(size_t i = 1;i<n;++i){
		A[i] = (A[i-1]*i)-i;
		B[i] = (B[i-1]*i)-i;
	}

	// add the two vectors
  // ...
	#pragma omp parallel for
	for(size_t i = 0;i<n;++i){
		C[i] = A[i] + B[i];
	}

  // print the first 8 elements
	for(size_t i = 0; i<8;++i)
		std::cout << C[i] << std::endl;
  // ...
  //std::cout << "hola";
}
