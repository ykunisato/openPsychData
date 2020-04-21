#' Download data from open source psychometrics project
#'
#' \code{download_ospp} load data from Open-Source Psychometrics Project(https://openpsychometrics.org/_rawdata/)
#'
#' @param data_name: please specify the name of dataset
#' @param codebook: If codebook set TRUE, load_ospp show the codebook of Open-Source Psychometrics Project
#'
#' @return return the data from open source psychometrics project
#'
#' @export
#' @examples
#' #download_ospp("16PF", codebook = TRUE)
download_ospp <- function(data_name, codebook = FALSE){
  temp <- tempfile()
  eval(parse(text = paste0("download.file('http://openpsychometrics.org/_rawdata/",data_name,".zip',temp)")))
  unzip(temp)
  if(codebook == TRUE){
    if(data_name == "16PF"){
      eval(parse(text = paste0("file.show('",data_name,"/codebook.html')")))
    }else{
      eval(parse(text = paste0("file.show('",data_name,"/codebook.txt')")))
    }
  }
}

#' Load data from open source psychometrics project
#'
#' \code{load_ospp} load data from Open-Source Psychometrics Project(https://openpsychometrics.org/_rawdata/)
#'
#' @param data_name: please specify the name of dataset
#' @param codebook: If codebook set TRUE, load_ospp show the codebook of Open-Source Psychometrics Project
#'
#' @return return the data from open source psychometrics project
#'
#' @export
#' @examples
#' #load_ospp("16PF", codebook = TRUE)
load_ospp <- function(data_name, codebook = FALSE){
  if(data_name == "16PF"||data_name == "MACH_data"||data_name == "BIG5"||data_name == "EQSQ"||data_name == "RIASEC_data12Dec2018"){
    #read.tabel(tab)
    eval(parse(text = paste0("data = read.table('",data_name,"/data.csv', header = TRUE, fill = TRUE, sep = '\t')")))
  }else if(data_name == "NPI"||data_name == "TMA"||data_name == "HSQ"||data_name == "SCS"){
    #read.csv
    eval(parse(text = paste0("data = read.csv('",data_name,"/data.csv')")))
  }
  if(codebook == TRUE){
    if(data_name == "16PF"){
      eval(parse(text = paste0("file.show('",data_name,"/codebook.html')")))
    }else{
      eval(parse(text = paste0("file.show('",data_name,"/codebook.txt')")))
    }
  }
}
