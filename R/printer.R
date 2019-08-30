#' Title
#'
#' @param r what you want in the second column
#' @param x what you want in the first column
#'
#' @return A tibble
#' @export
#'
#'
#'@importFrom tibble data_frame
#'@importFrom utils head adist
#'@importFrom dplyr select
#'@examples
#' printer(x=rnorm(10), r= rnorm(10))
printer= function(r,x) {
  x=data.frame(x=x, r=r)
  print(head(x))
  return(x)
}
