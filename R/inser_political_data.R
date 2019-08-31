library(readr)
library(tibble)
data_political_juv <- read_csv("data-raw/base_analysis.csv")



readr::write_csv(data_political_juv,path = "inst/extdata/data_political_juv.csv")

