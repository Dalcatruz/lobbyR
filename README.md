
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lobbyR

<!-- badges: start -->

<!-- badges: end -->

``` r
# install.packages("devtools")
remotes::install_github("Dalcatruz/lobbyR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(lobbyR)
## basic example code
```

``` r
mis_audiencias<- get_audiencias_pag(2)
head(mis_audiencias)
#>   id_audiencia id_sujeto_pasivo id_cargo id_institucion
#> 1            1              318      220            157
#> 2            2              272      197            206
#> 3            3              644      655            394
#> 4            4              300      212            377
#> 5            5              275      199            197
#> 6            6               82       45            395
#>                     nombres        apellidos
#> 1 PATRICIA ELIZABETH MARTA    SILVA MELENDEZ
#> 2                   Alberto Undurraga Vicuña
#> 3                   Antonio      Frey Valdés
#> 4                   Javiera      Montes Cruz
#> 5          Francisco Javier     Diaz Verdugo
#> 6           Vivianne Amelia     Blanlot Soza
#>                                            cargo
#> 1                               Subsecretario(a)
#> 2                     Ministro de Obras Públicas
#> 3                               Subsecretario(a)
#> 4                               Subsecretario(a)
#> 5                      Subsecretario del Trabajo
#> 6 Consejero(a) del Consejo para la Transparencia
#>                        nombre_institucion
#> 1 Subsecretaría General de la Presidencia
#> 2            Ministerio de Obras Públicas
#> 3  Subsecretaría de Prevención del Delito
#> 4                Subsecretaría de Turismo
#> 5               Subsecretaría del Trabajo
#> 6           Consejo para la Transparencia
#>                                                                                                                                                                                                                                                                                   referencia
#> 1     1. Modificación de la ley N°18.593 sobre Tribunales Electorales Regionales, en relación a su artículo 10 N°1.\n2. Mecanismos para fiscalizar a municipios que no han constituido COSOC.\n3. En caso de eventual reforma constitucional, incluir mecanismos de participación ciudadana.
#> 2 La Asociación tiene inquietud en la modificación del reglamento de consultores, donde quieren colaborar. \nRegistro de Contratistas: Asociación manifiesta que la idea es proteger al MOP en relación a asegurar la calidad de los servicios que se prestan en el ámbito de la ingeniería.
#> 3                                                                                                                                                                                      Presentar un software creado para la prevención del delito, cooperación ciudadana y gestión policial.
#> 4                                                                                                                                Propuestas de mejoras a fin de resolver problemas que se presentan.\nAlgunas miradas estratégicas del turismo social desde el punto de vista de la empresa.
#> 5                                                                                                                                                                                                                                      Informar situación laboral IberoAmericana Radio Chile
#> 6                                                                        Visita de cortesía en la que se tocarían temas de la colaboración del IFAI y el CPLT en la Red para la Transparencia y Acceso a la Información Pública (RTA) y la Red Iberoamericana de Protección de Datos (RIPD).
#>   forma                                                        lugar
#> 1     P                                        Oficina subsecretaria
#> 2     P                                  Sala reuniones Ministro MOP
#> 3     P                                 Sala de reuniones SPD piso 8
#> 4     P                                     Subsecretaría de Turismo
#> 5     P                                       Gabinete Subsecretaría
#> 6     P Consejo para la Transparencia\nMorande 360, piso 6\nSantiago
#>            comuna        fecha_inicio       fecha_termino
#> 1            <NA> 2014-12-03 11:00:00 2014-12-03 12:00:00
#> 2            <NA> 2014-12-02 19:30:00 2014-12-02 20:00:00
#> 3            <NA> 2014-11-28 15:30:00 2014-11-28 16:30:00
#> 4            <NA> 2014-12-05 15:00:00 2014-12-05 16:00:00
#> 5            <NA> 2014-12-05 15:00:00 2014-12-05 16:00:00
#> 6 Santiago Centro 2014-12-09 15:30:00 2014-12-09 16:30:00
#>                                       sujeto_pasivo_url
#> 1 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/318
#> 2 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/272
#> 3 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/644
#> 4 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/300
#> 5 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/275
#> 6  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/82
#>                                        institucion_url
#> 1 https://www.leylobby.gob.cl/api/v1/instituciones/157
#> 2 https://www.leylobby.gob.cl/api/v1/instituciones/206
#> 3 https://www.leylobby.gob.cl/api/v1/instituciones/394
#> 4 https://www.leylobby.gob.cl/api/v1/instituciones/377
#> 5 https://www.leylobby.gob.cl/api/v1/instituciones/197
#> 6 https://www.leylobby.gob.cl/api/v1/instituciones/395
#>                                      detalles_url
#> 1 https://www.leylobby.gob.cl/api/v1/audiencias/1
#> 2 https://www.leylobby.gob.cl/api/v1/audiencias/2
#> 3 https://www.leylobby.gob.cl/api/v1/audiencias/3
#> 4 https://www.leylobby.gob.cl/api/v1/audiencias/4
#> 5 https://www.leylobby.gob.cl/api/v1/audiencias/5
#> 6 https://www.leylobby.gob.cl/api/v1/audiencias/6
```
