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
  #load internal data
  openPsychData:::openPsychData_inetnal_data
  data_select <- subset(openPsychData_inetnal_data, openPsychData_inetnal_data$data_name == dataset_name)
  # If the dataset does not exist, download and save it.
  if(file.exists(paste0(dataset_name,"/")) == FALSE){
    print("There are no directory with the data you specified in current directory. So data is downloading and building a directory now.")
    temp <- tempfile()
    eval(parse(text = paste0("download.file('http://openpsychometrics.org/_rawdata/",data_select$original_name,".zip',temp)")))
    unzip(temp, exdir = tempdir())
    eval(parse(text = paste0("files_names <- list.files('",tempdir(),"/",data_select$unzip_name,"')")))
    dir.create(data_select$dataset_name)
    file.copy(paste0(tempdir(), "/",data_select$unzip_name,"/",files_names), paste0(data_select$dataset_name, "/", files_names))
    unlink(temp)
  }

}
