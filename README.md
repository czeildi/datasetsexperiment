# datasetsexperiment

The goal of datasetsexperiment is to be a minimal R package to test usage of external and internal data in R packages

## Installation

You can install the dev version of datasetsexperiment from Github

``` r
devtools::install_github("czeildi/datasetsexperiment")
```

## Usage

see `reprex.R`

## Background

In a package you might have a dataset that you want to use in your functions and want to publicize as well as external dataset. In this case you should save this dataset as *both* internal and external data with

```r
devtools::use_data(external_and_internal)
devtools::use_data(external_and_internal, internal = TRUE)
```

If you only save your data as external data:

You get a `R CMD check` note about undefined global variables: `external_only`. This you can eliminate with `r utils::globalVariables("external_only")` but then you only conceal the problem.

If your package is loaded, everything looks fine but if someone want's to use your function without loading your package: `r datasetsexperiment::function_using_externalonly_data` it will fail with `object external_only not found`. This error will be probably frustrating as your user can see the data just fine with `r datasetsexperiment::external_only`.
