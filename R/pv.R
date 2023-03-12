#' Present Value
#'
#' PV calculates the present value of a loan or an investment, based on a constant interest rate.
#' You can use PV with either periodic, constant payments (such as a mortgage or other loan),
#' or a future value that's your investment goal.
#'
#' @param rate Required float. The interest rate per period. For example, if you obtain an automobile loan at a 10 percent annual interest rate and make monthly payments, your interest rate per month is 10%/12, or 0.83%. You would enter 10%/12, or 0.83%, or 0.0083, into the formula as the rate.
#' @param nperiods Required float. The total number of payment periods in an annuity. For example, if you get a four-year car loan and make monthly payments, your loan has 4*12 (or 48) periods. You would enter 48 into the formula for nperiods.
#' @param payment Required float. The payment made each period and cannot change over the life of the annuity. Typically, payment includes principal and interest but no other fees or taxes. For example, the monthly payments on a $10,000, four-year car loan at 12 percent are $263.33. You would enter -263.33 into the formula as the payment. If payment is omitted, you must include the fvalue argument.
#' @param fvalue Optional float. The future value, or a cash balance you want to attain after the last payment is made. If fvalue is omitted, it is assumed to be 0 (the future value of a loan, for example, is 0). For example, if you want to save $50,000 to pay for a special project in 18 years, then $50,000 is the future value. You could then make a conservative guess at an interest rate and determine how much you must save each month. If fvalue is omitted, you must include the payments argument.
#' @param prae Optional Boolean. True when payments are due at the beginning of the period, FALSE when payments are due at the end of the period.
#'
#' @return Float.
#' @export
#'
#' @examples
#' # the monthly payments on a $10,000, four-year car loan at 12 percent are $263.33.
#' pv(rate=0.01, nperiods=48, payment=-263.33)
pv <- function(rate, nperiods, payment, fvalue, prae = TRUE) {
  if (rate == 0) {
    out <- -1 * (payment * nperiods + fvalue)
  } else {
    v <- 1 / (1 + rate)
    multiplier <- ifelse(prae, 1, v)
    out <-
      -1 * (multiplier * ((payment * (1 - v ** nperiods) / (1 - v))) + fvalue * (1 + rate) ** (-nperiods))
  }

  return(out)
}
