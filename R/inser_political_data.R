library(readr)
library(tibble)
data_political_juv <- read_csv("base_analysis.csv")
## code to prepare `DATASET` dataset goes here



readr::write_csv(data_political_juv,path = "inst/extdata/data_political_juv.csv")
