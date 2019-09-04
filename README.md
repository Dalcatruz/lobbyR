
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.org/profile/Dalcatruz/compol.svg?branch=master)](https://travis-ci.org/profile/Dalcatruz/compol)

# compol

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/Dalcatruz/compol.svg?branch=master)](https://travis-ci.org/Dalcatruz/compol)
<!-- badges: end -->

The goal of compol is to provide functionality to the content of
political and electoral behavior.

## Installation

You can install the released version of compol from and with:

``` r
library(devtools)
install_github("Dalcatruz/compol")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Dalcatruz/compol")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(compol)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

## Ejemplos de trabajo de base de datos

``` r
summary(data_political_juv)
#>      REGION           COMUNA           ZONA           SEXO      
#>  Min.   : 1.000   Min.   :  1.0   Min.   :1.00   Min.   :1.000  
#>  1st Qu.: 5.000   1st Qu.: 25.0   1st Qu.:1.00   1st Qu.:1.000  
#>  Median : 9.000   Median : 77.0   Median :1.00   Median :2.000  
#>  Mean   : 8.947   Mean   : 72.8   Mean   :1.13   Mean   :1.532  
#>  3rd Qu.:13.000   3rd Qu.:117.0   3rd Qu.:1.00   3rd Qu.:2.000  
#>  Max.   :15.000   Max.   :139.0   Max.   :2.00   Max.   :2.000  
#>       EDAD           P52_1            P52_2            P52_3     
#>  Min.   :15.00   Min.   : 1.000   Min.   : 1.000   Min.   : 1.0  
#>  1st Qu.:17.00   1st Qu.: 1.000   1st Qu.: 1.000   1st Qu.: 2.0  
#>  Median :21.00   Median : 2.000   Median : 3.000   Median : 3.0  
#>  Mean   :21.22   Mean   : 3.593   Mean   : 3.731   Mean   : 4.1  
#>  3rd Qu.:25.00   3rd Qu.: 4.000   3rd Qu.: 5.000   3rd Qu.: 5.0  
#>  Max.   :29.00   Max.   :99.000   Max.   :99.000   Max.   :99.0  
#>      P52_4            P52_5            P52_6            P52_7       
#>  Min.   : 1.000   Min.   : 1.000   Min.   : 1.000   Min.   : 1.000  
#>  1st Qu.: 1.000   1st Qu.: 3.000   1st Qu.: 2.000   1st Qu.: 3.000  
#>  Median : 2.000   Median : 5.000   Median : 4.000   Median : 5.000  
#>  Mean   : 3.381   Mean   : 5.452   Mean   : 4.752   Mean   : 4.966  
#>  3rd Qu.: 4.000   3rd Qu.: 7.000   3rd Qu.: 5.000   3rd Qu.: 6.000  
#>  Max.   :99.000   Max.   :99.000   Max.   :99.000   Max.   :99.000  
#>      P52_8             GSE             P38              P42       
#>  Min.   : 1.000   Min.   :1.000   Min.   : 1.000   Min.   : 1.00  
#>  1st Qu.: 2.000   1st Qu.:3.000   1st Qu.: 1.000   1st Qu.: 1.00  
#>  Median : 4.000   Median :3.000   Median : 2.000   Median : 2.00  
#>  Mean   : 4.648   Mean   :3.295   Mean   : 1.788   Mean   :17.82  
#>  3rd Qu.: 5.000   3rd Qu.:4.000   3rd Qu.: 2.000   3rd Qu.: 3.00  
#>  Max.   :99.000   Max.   :5.000   Max.   :99.000   Max.   :99.00
```

La función `head()` nos muestra un poco más de la base de datos.
Variables y observaciones

``` r
head(data_political_juv)
#> # A tibble: 6 x 16
#>   REGION COMUNA  ZONA  SEXO  EDAD P52_1 P52_2 P52_3 P52_4 P52_5 P52_6 P52_7
#>    <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1     13    128     1     2    17     1     1    10     1    10    10    10
#> 2     13    128     1     2    17     1    10     1    10    10     1     1
#> 3     13    112     1     1    27     4     6     5     2     6     1     3
#> 4     13    112     1     2    25     2     5     3     2     5     2     2
#> 5     13    128     1     1    23     3     3     3     3     4     3     5
#> 6     13    128     1     1    26     1     1     3     1     1     4     5
#> # ... with 4 more variables: P52_8 <dbl>, GSE <dbl>, P38 <dbl>, P42 <dbl>
```

Ahora que tal si queremos ver como se comportan algunas variables:
