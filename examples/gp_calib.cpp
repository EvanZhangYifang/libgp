#include "gp.h"
#include "gp_utils.h"
#include <fstream>
#include <chrono>

#include <Eigen/Dense>

int main(int argc, char const *argv[])
{
    int dim = 6;
    int data_size = 1000;
    std::string input_data;
    libgp::GaussianProcess gp(dim, "CovSum ( CovSEiso, CovNoise)");
    // initialize hyper parameter vector
    Eigen::VectorXd params(gp.covf().get_param_dim());
    params << log(391.2473830698102), 0.0, 0.0;
    // set parameters of covariance function
    gp.covf().set_loghyper(params);

    std::ifstream data_training("/home/embedded/exo_muscle_ws/src/libgp/examples/data_training.txt");
    double x[dim];
    double y, tss = 0, error, f;
    if (data_training.is_open())
    {
        for (int i = 0; i < data_size; ++i)
        {
            for (int j = 0; j < dim; ++j)
            {
                getline(data_training, input_data);
                x[j] = std::stold(input_data);
            }
            getline(data_training, input_data);
            y = std::stold(input_data);
            gp.add_pattern(x, y);
        }
        data_training.close();
    }

    // initialize Gaussian process for 2-D input using the squared exponential
    // covariance function with additive white noise.

    // add training patterns
    auto code_start = std::chrono::system_clock::now();
    std::ifstream data_testing("/home/embedded/exo_muscle_ws/src/libgp/examples/data_training.txt");
    if (data_testing.is_open())
    {
        for (int i = 0; i < data_size; ++i)
        {
            for (int j = 0; j < dim; ++j)
            {
                getline(data_testing, input_data);
                x[j] = std::stold(input_data);
            }
            getline(data_testing, input_data);
            y = std::stold(input_data);
            f = gp.f(x);
            error = f - y;
            tss += error * error;
        }
        data_testing.close();
    }
    auto code_end = std::chrono::system_clock::now();
    std::chrono::duration<double> elapsed_seconds = code_end - code_start;
    std::cout << "elapsed time: " << elapsed_seconds.count() << std::endl;
    std::cout << "mse = " << sqrt(tss / data_size) << std::endl;
    return EXIT_SUCCESS;

}
