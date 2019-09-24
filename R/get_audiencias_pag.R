

#' Obtención de audiencias
#'
#' @param num_page Es el número de paginas de audiencias a retornar, la API devuelve de a 10 audiencias por pagina
#'
#' @return Un \dataframe con las audiencias estructuradas
#' @export
#'
#' @examples
#' get_audiencias_pag(num_page=3)
#'
get_audiencias_pag<- function(num_page){

  url<-"https://www.leylobby.gob.cl/api/v1/audiencias?&page="

  data_audiencias<- data.frame()

  for (i in 1:num_page) {

    acum<-fromJSON(paste0(url,i), flatten = TRUE)$data

    data_audiencias<- rbind(data_audiencias,acum)

  }

  return(data_audiencias)

}
