#' Read CSV duplicate
#'
#' @param path  path to filename
#'
#' @return a \code{tibble}
#' @export
#' @importFrom readr read_csv
#' @examples
#' csv= system.file("extdata","sample_data.csv", package = "compol")
#' data_read (csv)
data_read=function(path) {
  readr::read_csv(path)
}
