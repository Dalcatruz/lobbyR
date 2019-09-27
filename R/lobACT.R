#' Actualización resumen de datos del lobby
#'
#' @param resumen_lobby Muestra un resumen de el numero e instituciones, cargos_pasivos, cargos_activos y audiencias.
#'
#' @return Un resumen de datos de instituciones, cargos_pasivos, cargos_activos y audiencias.
#' @export
#'
#' @examples
#' lobACT(resumen_lobby=1)

lobACT <- function() {

  urls <- c("https://www.leylobby.gob.cl/api/v1/instituciones/",
            "https://www.leylobby.gob.cl/api/v1/audiencias/",
            "https://www.leylobby.gob.cl/api/v1/cargos-pasivos/",
            "https://www.leylobby.gob.cl/api/v1/cargos-activos/")

  ctotales <- sapply(urls, function(x) jsonlite::fromJSON(x, flatten = TRUE)$total)

  resumen_lobby <- round(c(ctotales, ctotales[2]/ctotales[1], ctotales[2]/ctotales[3]), 1)
  resumen_lobby <- setNames(resumen_lobby, c("instituciones",
                                             "audiencias",
                                             "cargos_pasivos",
                                             "cargos_activos",
                                             "aud_by_inst",
                                             "aud_by_cpas"))

  return(resumen_lobby)
}


