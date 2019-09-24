#' My Hello CpyE function
#'
#' @param x The name of the person to say hi to.
#'
#' @return the output from \code{\link{print}}
#' @export
#'
#' @examples
#' hello("Sergio )
#' \dontrun{
#' hello("Steve")
#' }
#'
hello <- function(x) {
  print(paste0("Hola amigo/a ",x, " bienvenido a comportamiento politico y electoral de APCP"))
}


