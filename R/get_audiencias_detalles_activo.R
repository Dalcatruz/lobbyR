
#' Obtener audiencias con detalles de cada sujeto activo y busqueda de un representado en particular
#'
#' @param num_page El número de paginas a retornar.La api entrega 10 audiencias por pagina
#' @param representado El nombre de una firma, compañia, empresa y cualquier organización o particular que se encuentre en el rango de paginas que buscó.
#'
#' @return Dataframe con las audiencias de una firma, compañia, empresa y cualquier organización o particular. Entrega la audiencia y e información de todos los que participaron en la audiencia.
#' @export
#'
#' @examples
#' get_audiencias_detalles_activo(1, representado='ureta')

get_audiencias_detalles_activo <- function(num_page, representado) {

  url <- "https://www.leylobby.gob.cl/api/v1/audiencias?&page="

  data_audiencias_raw <- lapply(1:num_page, function(x) jsonlite::fromJSON(paste0(url, x), flatten = TRUE)$data)
  data_audiencias <- do.call(rbind, data_audiencias_raw)

  detalle_audiencias_urls <- data_audiencias$detalles_url

  detalle_audiencias_raw <- lapply(detalle_audiencias_urls, function(x) jsonlite::fromJSON(x, flatten = TRUE)$asistentes)
  detalle_audiencias <- do.call(rbind, detalle_audiencias_raw)

  total_detalle_audiencias <- merge(detalle_audiencias, data_audiencias, by="id_audiencia")

  filters_auds <- total_detalle_audiencias[stringr::str_detect(total_detalle_audiencias$representa.nombre,paste0("(?i)", representado)), ]

  return(filters_auds)
}

