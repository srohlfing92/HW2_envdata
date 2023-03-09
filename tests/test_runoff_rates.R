test_that("runoff_rates_works", {

  expect_equal(runoff_rates(land_area = 10, application_rate = 20, precipitation = 0), 0)
  expect_equal(runoff_rates(land_area = 10, application_rate = 0, precipitation = 20), 0)
})

## run test_file("../tests/test_computes_NPV.R)
## test_dir("../tests") # runs all tests in test folder