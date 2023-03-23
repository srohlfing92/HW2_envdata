test_that("runoff_rates_works", {

#  expect_equal(runoff_rates(land_area = 25, application_rate = 20, precipitation = 0), runoff_rate = 0)
#  expect_equal(runoff_rates(land_area = 100, application_rate = 0, precipitation = 20), runoff_rate = 0)
 
  expect_that(runoff_rates(land_area = 25, application_rate = 20, precipitation = 0)$runoff_rate, equals(0))
  expect_that(runoff_rates(land_area = 100, application_rate = 0, precipitation = 20)$runoff_rate, equals(0)) 
  expect_that(runoff_rates(land_area = 100, application_rate = 0, precipitation = 20)$nutrient_conc, equals(0))
  
})

## run test_file("../tests/test_computes_NPV.R)
## test_dir("../tests") # runs all tests in test folder
