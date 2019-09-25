
#' Actualización resumen de datos del lobby
#'
#' @param resumen_lobby Muestra un resumen de el numero e instituciones, cargos_pasivos, cargos_activos y audiencias.
#'
#' @return un resumen de datos de instituciones, cargos_pasivos, cargos_activos y audiencias.
#' @export
#'
#' @examples
#' lobACT(resumen_lobby=1)
lobACT<- function() {

  url1<-"https://www.leylobby.gob.cl/api/v1/instituciones/"

  inst <- jsonlite::fromJSON(url1, flatten = TRUE)

  instituciones<-inst$total

  url2<- "https://www.leylobby.gob.cl/api/v1/audiencias/"

  auds<- jsonlite::fromJSON(url2, flatten = TRUE)

  audiencias<- auds$total

  url3<- "https://www.leylobby.gob.cl/api/v1/cargos-pasivos/"

  c_pasivos<- jsonlite::fromJSON(url3, flatten = TRUE)

  cargos_pasivos<- c_pasivos$total

  url4<- "https://www.leylobby.gob.cl/api/v1/cargos-activos/"

  c_activos<- jsonlite::fromJSON(url4, flatten = TRUE)

  cargos_activos<- c_activos$total

  aud_by_inst<- audiencias/instituciones

  aud_by_cpas<- audiencias/cargos_pasivos


  resumen_lobby<- cbind.data.frame(instituciones,audiencias, cargos_pasivos,cargos_activos, aud_by_inst,aud_by_cpas)



  return(resumen_lobby)



}


