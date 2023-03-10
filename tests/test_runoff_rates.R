test_that("runoff_rates_works", {

  expect_equal(runoff_rates(land_area = 25, application_rate = 20, precipitation = 0), 0)
  expect_equal(runoff_rates(land_area = 100, application_rate = 0, precipitation = 20), 0)
})

## run test_file("../tests/test_computes_NPV.R)
## test_dir("../tests") # runs all tests in test folder

ifelse(a == c(2,3), TRUE, FALSE)
[1] TRUE TRUE
> expect_equal(a, c(2,3))