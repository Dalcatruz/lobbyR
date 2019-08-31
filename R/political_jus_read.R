#' Read CSV duplicate (political data juv)
#'
#' @param path  path to filename
#'
#' @return a \code{tibble}
#' @export
#' @importFrom readr read_csv
#' @examples
#' data_political= system.file("extdata","data_political_juv.csv",package = "compol")
#' political_read_data(csv)
political_read_data= function(path){
readr::read_csv(path)
}
