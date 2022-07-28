#include <iomanip>
#include <iostream>
#include <limits>

using my_float = float;

auto pi_taylor(size_t steps) -> my_float {

    my_float pi = 0.0;
    my_float sign = 1.0;
    for(size_t i = 0; i<steps;i++){
        my_float n = (my_float) i; 
        pi +=  sign/((2*n)+1);
        sign = -sign;
    }

    return 4.0*pi;
}

int main(int argc, const char *argv[]) {

    // read the number of steps from the command line
    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);

    }

    size_t steps = std::stoll(argv[1]);
    auto pi = pi_taylor(steps);

    std::cout << "For " << steps << ", pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << std::endl;
}
