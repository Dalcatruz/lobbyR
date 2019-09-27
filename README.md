
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lobbyR

<!-- badges: start -->

<!-- badges: end -->

``` r
# install.packages("remotes")
remotes::install_github("Dalcatruz/lobbyR")
```

## Cargar libreria

``` r
library(lobbyR)
```

## Ejemplo

### Número actualizado de las variables principales

``` r
lobACT()
#>  instituciones     audiencias cargos_pasivos cargos_activos    aud_by_inst 
#>         697.00      369966.00      272280.00      275658.00         530.80 
#>    aud_by_cpas 
#>           1.36
```

### Recoger audiencias por pagina

``` r
mis_audiencias <- get_audiencias_pag(1)
mis_audiencias
#>    id_audiencia id_sujeto_pasivo id_cargo id_institucion
#> 1             1              318      220            157
#> 2             2              272      197            206
#> 3             3              644      655            394
#> 4             4              300      212            377
#> 5             5              275      199            197
#> 6             6               82       45            395
#> 7             7              349      251            259
#> 8             8              475      404            373
#> 9             9              143       78            162
#> 10           11              313      217            198
#>                      nombres          apellidos
#> 1  PATRICIA ELIZABETH MARTA      SILVA MELENDEZ
#> 2                    Alberto   Undurraga Vicuña
#> 3                    Antonio        Frey Valdés
#> 4                    Javiera        Montes Cruz
#> 5           Francisco Javier       Diaz Verdugo
#> 6            Vivianne Amelia       Blanlot Soza
#> 7              Jaime Rodrigo     Romero Álvarez
#> 8                    Marcelo      Mena Carrasco
#> 9                Luis Felipe Céspedes Cifuentes
#> 10                    Marcos      Barraza Gómez
#>                                             cargo
#> 1                                Subsecretario(a)
#> 2                      Ministro de Obras Públicas
#> 3                                Subsecretario(a)
#> 4                                Subsecretario(a)
#> 5                       Subsecretario del Trabajo
#> 6  Consejero(a) del Consejo para la Transparencia
#> 7                                Subsecretario(a)
#> 8                                   Subsecretario
#> 9        Ministro de Economía, Fomento y Turismo 
#> 10              Subsecretario de Previsión Social
#>                                      nombre_institucion
#> 1               Subsecretaría General de la Presidencia
#> 2                          Ministerio de Obras Públicas
#> 3                Subsecretaría de Prevención del Delito
#> 4                              Subsecretaría de Turismo
#> 5                             Subsecretaría del Trabajo
#> 6                         Consejo para la Transparencia
#> 7                 Subsecretaría de Vivienda y Urbanismo
#> 8                      Subsecretaría del Medio Ambiente
#> 9  Subsecretaría de Economía y Empresas de Menor Tamaño
#> 10                    Subsecretaría de Previsión Social
#>                                                                                                                                                                                                                                                                                                                                                                referencia
#> 1                                                                                  1. Modificación de la ley N°18.593 sobre Tribunales Electorales Regionales, en relación a su artículo 10 N°1.\n2. Mecanismos para fiscalizar a municipios que no han constituido COSOC.\n3. En caso de eventual reforma constitucional, incluir mecanismos de participación ciudadana.
#> 2                                                                              La Asociación tiene inquietud en la modificación del reglamento de consultores, donde quieren colaborar. \nRegistro de Contratistas: Asociación manifiesta que la idea es proteger al MOP en relación a asegurar la calidad de los servicios que se prestan en el ámbito de la ingeniería.
#> 3                                                                                                                                                                                                                                                                   Presentar un software creado para la prevención del delito, cooperación ciudadana y gestión policial.
#> 4                                                                                                                                                                                                             Propuestas de mejoras a fin de resolver problemas que se presentan.\nAlgunas miradas estratégicas del turismo social desde el punto de vista de la empresa.
#> 5                                                                                                                                                                                                                                                                                                                   Informar situación laboral IberoAmericana Radio Chile
#> 6                                                                                                                                                     Visita de cortesía en la que se tocarían temas de la colaboración del IFAI y el CPLT en la Red para la Transparencia y Acceso a la Información Pública (RTA) y la Red Iberoamericana de Protección de Datos (RIPD).
#> 7                                                                                                                                                                                                                                                                                              Problemas habitacionales de los Comités Don Fermín I y Grupo Bicentenario.
#> 8                                                Hablar sobre emisiones de escape de los vehículos de seguridad y tendencias regulatorias en Chile\nResumen Acta:  La reunión trató sobre emisiones de escape de los vehículos de seguridad y tendencias regulatorias en Chile, Participa además el jefe de la División de Calidad del Aire y profesionales de su equipo.
#> 9                                                                                                                                                                                                                                                                                                                                                     Cajeros Automáticos
#> 10 Abordar temas referentes a la ley 20255, y sus nuevos alcances hacia honorarios públicos\nLos trabajadores públicos a honorarios plantearon sus inquietudes al Subsecretario Marcos Barraza, respecto de la obligatoriedad de cotizar de los trabajadores independientes a partir del 1 de enero del 2015 de acuerdo al cronograma de la reforma previsional del 2008.
#>    forma
#> 1      P
#> 2      P
#> 3      P
#> 4      P
#> 5      P
#> 6      P
#> 7      P
#> 8      P
#> 9      P
#> 10     P
#>                                                                                lugar
#> 1                                                              Oficina subsecretaria
#> 2                                                        Sala reuniones Ministro MOP
#> 3                                                       Sala de reuniones SPD piso 8
#> 4                                                           Subsecretaría de Turismo
#> 5                                                             Gabinete Subsecretaría
#> 6                       Consejo para la Transparencia\nMorande 360, piso 6\nSantiago
#> 7                                                                              Minvu
#> 8                                                      Sala de Reuniones de Gabinete
#> 9      Av. Libertador Bernardo OHiggins Nº 1449, Santiago Downtown Torre II, piso 12
#> 10 Subsecretaría de Previsión Social, Huérfanos 1273, piso 9, Gabinete Subsecretario
#>             comuna        fecha_inicio       fecha_termino
#> 1             <NA> 2014-12-03 11:00:00 2014-12-03 12:00:00
#> 2             <NA> 2014-12-02 19:30:00 2014-12-02 20:00:00
#> 3             <NA> 2014-11-28 15:30:00 2014-11-28 16:30:00
#> 4             <NA> 2014-12-05 15:00:00 2014-12-05 16:00:00
#> 5             <NA> 2014-12-05 15:00:00 2014-12-05 16:00:00
#> 6  Santiago Centro 2014-12-09 15:30:00 2014-12-09 16:30:00
#> 7             <NA> 2014-12-01 11:00:00 2014-12-01 12:00:00
#> 8             <NA> 2014-12-02 15:00:00 2014-12-02 16:00:00
#> 9             <NA> 2014-12-10 10:15:00 2014-12-10 11:00:00
#> 10            <NA> 2014-12-11 11:00:00 2014-12-11 12:00:00
#>                                        sujeto_pasivo_url
#> 1  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/318
#> 2  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/272
#> 3  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/644
#> 4  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/300
#> 5  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/275
#> 6   https://www.leylobby.gob.cl/api/v1/cargos-pasivos/82
#> 7  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/349
#> 8  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/475
#> 9  https://www.leylobby.gob.cl/api/v1/cargos-pasivos/143
#> 10 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/313
#>                                         institucion_url
#> 1  https://www.leylobby.gob.cl/api/v1/instituciones/157
#> 2  https://www.leylobby.gob.cl/api/v1/instituciones/206
#> 3  https://www.leylobby.gob.cl/api/v1/instituciones/394
#> 4  https://www.leylobby.gob.cl/api/v1/instituciones/377
#> 5  https://www.leylobby.gob.cl/api/v1/instituciones/197
#> 6  https://www.leylobby.gob.cl/api/v1/instituciones/395
#> 7  https://www.leylobby.gob.cl/api/v1/instituciones/259
#> 8  https://www.leylobby.gob.cl/api/v1/instituciones/373
#> 9  https://www.leylobby.gob.cl/api/v1/instituciones/162
#> 10 https://www.leylobby.gob.cl/api/v1/instituciones/198
#>                                        detalles_url
#> 1   https://www.leylobby.gob.cl/api/v1/audiencias/1
#> 2   https://www.leylobby.gob.cl/api/v1/audiencias/2
#> 3   https://www.leylobby.gob.cl/api/v1/audiencias/3
#> 4   https://www.leylobby.gob.cl/api/v1/audiencias/4
#> 5   https://www.leylobby.gob.cl/api/v1/audiencias/5
#> 6   https://www.leylobby.gob.cl/api/v1/audiencias/6
#> 7   https://www.leylobby.gob.cl/api/v1/audiencias/7
#> 8   https://www.leylobby.gob.cl/api/v1/audiencias/8
#> 9   https://www.leylobby.gob.cl/api/v1/audiencias/9
#> 10 https://www.leylobby.gob.cl/api/v1/audiencias/11
```

### Recoger audiencias por página y algún concepto clave

``` r
mis_audiencias2 <- get_audiencias_detalles_activo(1, "ureta")
mis_audiencias2
#>   id_audiencia id_cargo_activo nombres.x    apellidos.x
#> 9            2             469      René Ureta Quintana
#>                                        cargo_activo_url representa.nombre
#> 9 https://www.leylobby.gob.cl/api/v1/cargos-activos/469        Rene Ureta
#>   representa.tipo representa.pais representa.giro representa.domicilio
#> 9 persona_natural             CHL                                     
#>   representa.representante_legal representa.naturaleza
#> 9                                                     
#>   representa.directorio id_sujeto_pasivo id_cargo id_institucion nombres.y
#> 9                                    272      197            206   Alberto
#>        apellidos.y                      cargo           nombre_institucion
#> 9 Undurraga Vicuña Ministro de Obras Públicas Ministerio de Obras Públicas
#>                                                                                                                                                                                                                                                                                   referencia
#> 9 La Asociación tiene inquietud en la modificación del reglamento de consultores, donde quieren colaborar. \nRegistro de Contratistas: Asociación manifiesta que la idea es proteger al MOP en relación a asegurar la calidad de los servicios que se prestan en el ámbito de la ingeniería.
#>   forma                       lugar comuna        fecha_inicio
#> 9     P Sala reuniones Ministro MOP   <NA> 2014-12-02 19:30:00
#>         fecha_termino
#> 9 2014-12-02 20:00:00
#>                                       sujeto_pasivo_url
#> 9 https://www.leylobby.gob.cl/api/v1/cargos-pasivos/272
#>                                        institucion_url
#> 9 https://www.leylobby.gob.cl/api/v1/instituciones/206
#>                                      detalles_url
#> 9 https://www.leylobby.gob.cl/api/v1/audiencias/2
```
