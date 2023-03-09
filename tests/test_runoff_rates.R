test_that("runoff_rates_works", {

  expect_equal(runoff(precipitation = 0), 0)
  expect_equal(runoff(application_rate = 0), 0)
})

## run test_file("../tests/test_computes_NPV.R)
## test_dir("../tests") # runs all tests in test folder