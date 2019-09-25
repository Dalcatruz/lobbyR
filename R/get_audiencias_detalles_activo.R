
#' Obtener audiencias con detalles de cada sujeto activo y busqueda de un representado en particular
#'
#' @param num_page El número de paginas a retornar.La api entrega 10 audiencias por pagina
#' @param representado El nombre de una firma, compañia, empresa y cualquier organización o particular que se encuentre en el rango de paginas que buscó.
#'
#' @return Dataframe con las audiencias de una firma, compañia, empresa y cualquier organización o particular. Entrega la audiencia y e información de todos los que participaron en la audiencia.
#' @export
#'
#' @examples
#' get_audiencias_detalles_activo(1,representado='ureta')
#'
get_audiencias_detalles_activo<- function(num_page ,representado) {

  url<-"https://www.leylobby.gob.cl/api/v1/audiencias?&page="

  data_audiencias<- data.frame()

  for (i in 1:num_page) {

    acum<-jsonlite::fromJSON(paste0(url,i), flatten = TRUE)$data

    data_audiencias<- rbind(data_audiencias,acum)

  }

  detalle_audiencias<- data_audiencias$detalles_url

  ad<- data.frame()

  detail<- data.frame()

  for (i in 1:length(detalle_audiencias)) {

    detalle_by_audiencias<-jsonlite::fromJSON(detalle_audiencias[[i]], flatten = TRUE)[15]

    detalle_by_audiencias <- data.frame(detalle_by_audiencias)

    detail<- rbind(detail,detalle_by_audiencias)

    total_detalle_audiencia<-merge(detail, data_audiencias, by.x="asistentes.id_audiencia", by.y="id_audiencia")

    total_detalle_audiencias<- rbind(ad, total_detalle_audiencia)

  }

  filters_auds<- total_detalle_audiencias[stringr::str_detect(total_detalle_audiencias$asistentes.representa.nombre,paste0("(?i)",representado)), ]

  return(filters_auds)

}

