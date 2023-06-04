#' Xround
#'
#' Convenience function for rounding numbers
#'
#' @param x numeric vector
#' @param digits integer indicating the number of decimal places
#' @param half_up Boolean indicating rounding method to be used. Default is TRUE.
#'
#' @return numeric vector
#' @export
xround <- function(x, digits=0, half_up=TRUE) {
  if (half_up) {
    janitor::round_half_up(x, digits=digits)
  } else {
    round(x, digits=digits)
  }
}
