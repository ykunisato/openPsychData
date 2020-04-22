#' Load data from open data for psychology
#'
#' \code{load_openPsyData} load data from the repository of open data for psychology
#'
#' @param data_name: please specify the name of dataset
#' @param codebook: If codebook set TRUE, load_openPsyData show the codebook of Open-Source Psychometrics Project
#'
#' @return return the data from open source psychometrics project
#'
#' @export
#' @examples
#' #data <- load_openPsyData("16PF", codebook = TRUE)
load_openPsyData <- function(dataset_name, codebook = FALSE){
  openPsychData:::openPsychData_inetnal_data
  data_select <- subset(openPsychData_inetnal_data, openPsychData_inetnal_data$data_name == dataset_name)
  return(data_select)
}
