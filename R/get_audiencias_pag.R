

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
get_audiencias_pag<- function(ini_page,num_page){

  url<-"https://www.leylobby.gob.cl/api/v1/audiencias?&page="

  data_audiencias<- data.frame()

  for (i in ini_page:num_page) {

    acum<-jsonlite::fromJSON(paste0(url,i), flatten = TRUE)$data

    data_audiencias<- rbind(data_audiencias,acum)

  }

  return(data_audiencias)

}
