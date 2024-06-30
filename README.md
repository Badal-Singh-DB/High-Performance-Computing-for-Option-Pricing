# High Performance Computing for Option Pricing

(downloads/my.jpg)
This project aims to develop a computational model for pricing options using finite difference methods. The project involves the following components:

### Problem Statement

Options are financial derivatives that give the holder the right, but not the obligation, to buy or sell an underlying asset at a predetermined price on or before a certain date. The price of an option is determined by several factors, including the underlying asset price, volatility, risk-free rate, and time to maturity. The Black-Scholes model is a widely used mathematical model for pricing options, but it has some limitations, such as assuming constant volatility and ignoring dividends.

### Project Objectives

The objectives of this project are:

1. To develop a computational model for pricing options using finite difference methods.
2. To implement the model in OCaml and use the Owl numerical library for matrix operations.
3. To test the model using a dataset of options prices and compare the results with the Black-Scholes model.
4. To analyze the performance of the model and identify areas for improvement.

### Methodology

The project will involve the following steps:

1. Literature review: Review existing research on options pricing models and finite difference methods.
2. Model development: Develop a computational model for pricing options using finite difference methods.
3. Implementation: Implement the model in OCaml and use the Owl numerical library for matrix operations.
4. Testing: Test the model using a dataset of options prices and compare the results with the Black-Scholes model.
5. Analysis: Analyze the performance of the model and identify areas for improvement.

### Expected Outcomes

The expected outcomes of this project are:

1. A computational model for pricing options using finite difference methods.
2. An implementation of the model in OCaml using the Owl numerical library.
3. A comparison of the model's performance with the Black-Scholes model.
4. An analysis of the model's strengths and weaknesses.

### Project Structure

The project consists of the following directories and files:

* `src/`: contains the OCaml source code for the project
	+ `main.ml`: the entry point of the program, responsible for loading data, computing options prices, and printing results
	+ `options.ml`: defines the `Option` type and functions for working with options
	+ `pricing.ml`: implements the options pricing algorithm using finite difference methods
	+ `utils.ml`: provides utility functions for working with arrays, matrices, and numerical computations
	+ `data.ml`: loads and preprocesses the options data from the `options_data.csv` file
* `data/`: contains the options data file
	+ `options_data.csv`: contains 100 data points for options pricing, with columns for strike price, underlying price, volatility, risk-free rate, and time to maturity
* `_tags`: a file used by the Dune build system to specify build flags and dependencies
* `dune`: the Dune build file, which specifies the project's dependencies and build rules
* `dune-project`: a file that specifies the project's metadata, such as its name and version
* `Makefile`: a Makefile that provides a simple way to build and run the project
* `README.md`: this file, which provides an overview of the project and its contents

### Building and Running the Project


1. Install OCaml and Dune.
2. Clone the project.
3. Run `make build` to build the project.
4. Run `make run` to execute the project and see the option prices.
5. Run `make test` to execute any test cases.


