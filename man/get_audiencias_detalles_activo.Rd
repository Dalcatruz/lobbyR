% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_audiencias_detalles_activo.R
\name{get_audiencias_detalles_activo}
\alias{get_audiencias_detalles_activo}
\title{Obtener audiencias con detalles de cada sujeto activo y busqueda de un representado en particular}
\usage{
get_audiencias_detalles_activo(num_page, representado)
}
\arguments{
\item{num_page}{El número de paginas a retornar.La api entrega 10 audiencias por pagina}

\item{representado}{El nombre de una firma, compañia, empresa y cualquier organización o particular que se encuentre en el rango de paginas que buscó.}
}
\value{
Dataframe con las audiencias de una firma, compañia, empresa y cualquier organización o particular. Entrega la audiencia y e información de todos los que participaron en la audiencia.
}
\description{
Obtener audiencias con detalles de cada sujeto activo y busqueda de un representado en particular
}
\examples{
get_audiencias_detalles_activo(1,representado='ureta')

}
