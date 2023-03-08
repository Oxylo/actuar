test_that("Present Value is calculated correctly", {
  ERROR.THRESHOLD <- 0.0001
  df <- readxl::read_excel("data/testset.xlsx", sheet = "PV")
  expected <- df$pv_xls

  calculated <- mapply(pv, df$rate,
                       df$nperiods, df$payment, df$fvalue, df$prae)

  delta <- expected - calculated
  check <- (sum(abs(delta)) < ERROR.THRESHOLD)

  # temp code to produce some output during testing
  # tmp <- cbind(df, calculated, delta)
  # tmp$delta <- format(round(tmp$delta, 3), nsmall = 2)
  # print("/nn")
  # print(tmp)

  expect_true(check)
})
