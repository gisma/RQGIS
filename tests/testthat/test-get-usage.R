context("get_usage")

test_that("get_usage() yields correct output", {
  testthat::skip_on_appveyor()
  testthat::skip_on_cran()
  # testthat::skip_on_travis()

  expect_output(get_usage(alg = "qgis:polygoncentroids", intern = FALSE))

  expect_is(
    get_usage(alg = "qgis:polygoncentroids", intern = TRUE),
    "character"
  )
})
