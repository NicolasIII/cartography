
context("imputation valeurs manquantes")

test_that("plus de NA", {
  x <- c(1,5,6,4,NA,2)
  res <- imput_na(x)

  expect_false(anyNA(res))
})

test_that ("Pas d'imputation de caracteres", {
  expect_warning(imput_na(c(letters, NA)))
})


test_that("imputation mediane", {
 x <- rnorm(100)
 x[50] <- NA
 res <- imput_na(x,"mediane")

 expect_equal(res[50], median(x, na.rm = TRUE))
})
