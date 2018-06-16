context("test-data.R")

test_that("print internal data in body works", {
    expect_silent(print_internal_in_body())
})

test_that("print external data in body works", {
    expect_silent(print_external_in_body())
})

test_that("print internal data from argument works", {
    expect_silent(print_internal_from_argument())
})

test_that("print external data from argument works", {
    expect_silent(print_external_from_argument())
})
