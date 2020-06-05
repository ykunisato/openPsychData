
library(osfr)

osf_id <- "z39us"

dir.create("data")
setwd("data")
osf_download(osf_ls_files(osf_retrieve_node(osf_id)))
setwd("..")

#PVDJapan2018
library(openxlsx)
data <- read.xlsx("PVDJapan2018.xlsx")

#山田さんのマルチラボのやつ




