

#' Obtención de audiencias
#' @param ini_page Es el número de pagina inicial de audiencias
#'
#' @param num_page Es el número de pagina final de audiencias
#'
#' @return Un \dataframe con las audiencias estructuradas
#'
#' @importFrom jsonlite fromJSON
#' @export
#'
#' @examples
#' get_audiencias_pag(num_page=3)
#'

get_audiencias_pag <- function(ini_page=1, num_page){

  url <- "https://www.leylobby.gob.cl/api/v1/audiencias?&page="

  data_audiencias_raw <- lapply(ini_page:num_page, function(x) jsonlite::fromJSON(paste0(url, x), flatten = TRUE)$data)
  data_audiencias <- do.call(rbind, data_audiencias_raw)

  return(data_audiencias)

}
