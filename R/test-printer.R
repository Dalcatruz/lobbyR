
testthat::context("Just testing printer fuctionality")

testthat::test_that("Whether printer gives us the same output",{

  set.seed(1)
  res= printer(x=rnorm(5), r= rnorm(5))

  expect_equal(nrow(res),5)

  cm= colMeans(res)
  expect_equal(cm,c(x =  0.0381229710572167, r = 0.459566970977344))

} )
