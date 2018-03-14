
context("carre")

test_that("longueur du vecteur", {
  x <- c(5,7,8,2)
  res <- squared(x)

  expect_length(res,4)
})
