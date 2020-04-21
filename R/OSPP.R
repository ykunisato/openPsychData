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
  if(data_name == "16PF"){
    download.file("http://openpsychometrics.org/_rawdata/16PF.zip",temp)
  }else if(data_name == "NPI"){
    download.file("http://openpsychometrics.org/_rawdata/NPI.zip",temp)
  }else if(data_name == "MACH_data"){
    download.file("http://openpsychometrics.org/_rawdata/MACH_data.zip",temp)
  }else if(data_name == "BIG5"){
    download.file("http://openpsychometrics.org/_rawdata/BIG5.zip",temp)
  }else if(data_name == "TMA"){
    download.file("http://openpsychometrics.org/_rawdata/TMA.zip",temp)
  }else if(data_name == "HSQ"){
    download.file("http://openpsychometrics.org/_rawdata/HSQ.zip",temp)
  }else if(data_name == "EQSQ"){
    download.file("http://openpsychometrics.org/_rawdata/EQSQ.zip",temp)
  }else if(data_name == "RIASEC_data12Dec2018"){
    download.file("http://openpsychometrics.org/_rawdata/RIASEC_data12Dec2018.zip",temp)
  }else if(data_name == "SCS"){
    download.file("http://openpsychometrics.org/_rawdata/SCS.zip",temp)
  }else if(data_name == "MGKT_data"){
    download.file("http://openpsychometrics.org/_rawdata/MGKT_data.zip",temp)
  }else if(data_name == "AS+SC+AD+DO"){
    download.file("http://openpsychometrics.org/_rawdata/AS+SC+AD+DO.zip",temp)
  }else if(data_name == "RSE"){
    download.file("http://openpsychometrics.org/_rawdata/RSE.zip",temp)
  }else if(data_name == "IQ1"){
    download.file("http://openpsychometrics.org/_rawdata/IQ1.zip",temp)
  }else if(data_name == "SENTANCES1"){
    download.file("http://openpsychometrics.org/_rawdata/SENTANCES1.zip",temp)
  }else if(data_name == "ECR-data-1March2018"){
    download.file("http://openpsychometrics.org/_rawdata/ECR-data-1March2018.zip",temp)
  }else if(data_name == "CFCS"){
    download.file("http://openpsychometrics.org/_rawdata/CFCS.zip",temp)
  }else if(data_name == "KIMS"){
    download.file("http://openpsychometrics.org/_rawdata/KIMS.zip",temp)
  }else if(data_name == "MSSCQ"){
    download.file("http://openpsychometrics.org/_rawdata/MSSCQ.zip",temp)
  }else if(data_name == "WPI"){
    download.file("http://openpsychometrics.org/_rawdata/WPI.zip",temp)
  }else if(data_name == "HSNS+DD"){
    download.file("http://openpsychometrics.org/_rawdata/HSNS+DD.zip",temp)
  }else if(data_name == "SD3"){
    download.file("http://openpsychometrics.org/_rawdata/SD3.zip",temp)
  }else if(data_name == "FPS"){
    download.file("http://openpsychometrics.org/_rawdata/FPS.zip",temp)
  }else if(data_name == "Wagner"){
    download.file("http://openpsychometrics.org/_rawdata/Wagner.zip",temp)
  }else if(data_name == "itemsgen"){
    download.file("http://openpsychometrics.org/_rawdata/itemsgen.zip",temp)
  }else if(data_name == "HEXACO"){
    download.file("http://openpsychometrics.org/_rawdata/HEXACO.zip",temp)
  }else if(data_name == "EBFMT"){
    download.file("http://openpsychometrics.org/_rawdata/EBFMT.zip",temp)
  }else if(data_name == "OSRI44_dev_data"){
    download.file("https://openpsychometrics.org/_rawdata/OSRI44_dev_data.zip",temp)
  }else if(data_name == "duckworth-grit-scale-data"){
    download.file("https://openpsychometrics.org/_rawdata/duckworth-grit-scale-data.zip",temp)
  }else if(data_name == "RWAS"){
    download.file("https://openpsychometrics.org/_rawdata/RWAS.zip",temp)
  }else if(data_name == "OHBDS-data"){
    download.file("http://openpsychometrics.org/_rawdata/OHBDS-data.zip",temp)
  }else if(data_name == "NPAS-data-16December2018"){
    download.file("http://openpsychometrics.org/_rawdata/NPAS-data-16December2018.zip",temp)
  }else if(data_name == "GCBS"){
    download.file("http://openpsychometrics.org/_rawdata/GCBS.zip",temp)
  }else if(data_name == "APS_data"){
    download.file("http://openpsychometrics.org/_rawdata/APS_data.zip",temp)
  }else if(data_name == "APS_dev_data"){
    download.file("http://openpsychometrics.org/_rawdata/APS_dev_data.zip",temp)
  }else if(data_name == "VIQT_data"){
    download.file("http://openpsychometrics.org/_rawdata/VIQT_data.zip",temp)
  }else if(data_name == "DASS_data_21.02.19"){
    download.file("https://openpsychometrics.org/_rawdata/DASS_data_21.02.19.zip",temp)
  }else if(data_name == "IPIP-FFM-data-8Nov2018"){
    download.file("https://openpsychometrics.org/_rawdata/IPIP-FFM-data-8Nov2018.zip",temp)
  }else if(data_name == "NR6-data-14Nov2018"){
    download.file("https://openpsychometrics.org/_rawdata/NR6-data-14Nov2018.zip",temp)
  }else if(data_name == "randomnumber"){
    download.file("https://openpsychometrics.org/_rawdata/randomnumber.zip",temp)
  }else if(data_name == "NIS_data"){
    download.file("https://openpsychometrics.org/_rawdata/NIS_data.zip",temp)
  }else if(data_name == "FSIQ_0.1_data"){
    download.file("https://openpsychometrics.org/_rawdata/FSIQ_0.1_data.zip",temp)
  }else if(data_name == "PWE_data"){
    download.file("https://openpsychometrics.org/_rawdata/PWE_data.zip",temp)
  }else if(data_name == "FTI-data"){
    download.file("https://openpsychometrics.org/_rawdata/FTI-data.zip",temp)
  }else if(data_name == "FBPS-ValidationData"){
    download.file("https://openpsychometrics.org/_rawdata/FBPS-ValidationData.zip",temp)
  }else if(data_name == "MIES_Dev_Data"){
    download.file("https://openpsychometrics.org/_rawdata/MIES_Dev_Data.zip",temp)
  }else if(data_name == "AMBI_data_Dec2019"){
    download.file("https://openpsychometrics.org/_rawdata/AMBI_data_Dec2019.zip",temp)
  }
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
