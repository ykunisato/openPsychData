openPsychData_inetnal_data <- read.csv("openPsychData_internal_data.csv")

usethis::use_data(openPsychData_inetnal_data, internal = TRUE, overwrite = TRUE)
