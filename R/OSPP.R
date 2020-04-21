#' Download data from open source psychometrics project
#'
#' \code{download_ospp} load data from Open-Source Psychometrics Project(https://openpsychometrics.org/_rawdata/)
#'
#' @param data_name: please specify the name of dataset
#'
#' @return return the data from open source psychometrics project
#'
#' @export
#' @examples
#' #download_ospp("16PF")
download_ospp <- function(data_name){
  if(data_name == "APS" ||
     data_name == "APSdev" ||
     data_name == "ASSC" ||
     data_name == "DASS" ||
     data_name == "duckworth" ||
     data_name == "ECR" ||
     data_name == "FBPS" ||
     data_name == "FSIQ" ||
     data_name == "FTI" ||
     data_name == "HSNSDD" ||
     data_name == "IPIPFFM" ||
     data_name == "MACH" ||
     data_name == "MGKT" ||
     data_name == "MIES" ||
     data_name == "NIS" ||
     data_name == "NPAS" ||
     data_name == "NR6" ||
     data_name == "OHBDSv" ||
     data_name == "OSRI44" ||
     data_name == "PWE" ||
     data_name == "RIASEC" ||
     data_name == "VIQT"){

    if(data_name == "APS"){
      original_data_name <- "APS_data"
    }else if(data_name == "APSdev"){
      original_data_name <- "APS_dev_data"
    }else if(data_name == "ASSC"){
      original_data_name <- "AS+SC+AD+DO"
    }else if(data_name == "DASS"){
      original_data_name <- "DASS_data_21.02.19"
    }else if(data_name == "duckworth"){
      original_data_name <- "duckworth-grit-scale-data"
    }else if(data_name == "ECR"){
      original_data_name <- "ECR-data-1March2018"
    }else if(data_name == "FBPS"){
      original_data_name <- "FBPS-ValidationData"
    }else if(data_name == "FSIQ"){
      original_data_name <- "FSIQ_0.1_data"
    }else if(data_name == "FTI"){
      original_data_name <- "FTI-data"
    }else if(data_name == "HSNSDD"){
      original_data_name <- "HSNS+DD"
    }else if(data_name == "IPIPFFM"){
      original_data_name <- "IPIP-FFM-data-8Nov2018"
    }else if(data_name == "MACH"){
      original_data_name <- "MACH_data"
    }else if(data_name == "MGKT"){
      original_data_name <- "MGKT_data"
    }else if(data_name == "MIES"){
      original_data_name <- "MIES_Dev_Data"
    }else if(data_name == "NIS"){
      original_data_name <- "NIS_data"
    }else if(data_name == "NPAS"){
      original_data_name <- "NPAS-data-16December2018"
    }else if(data_name == "NR6"){
      original_data_name <- "NR6-data-14Nov2018"
    }else if(data_name == "OHBDS"){
      original_data_name <- "OHBDS-data"
    }else if(data_name == "OSRI44"){
      original_data_name <- "OSRI44_dev_data"
    }else if(data_name == "PWE"){
      original_data_name <- "PWE_data"
    }else if(data_name == "RIASEC"){
      original_data_name <- "RIASEC_data12Dec2018"
    }else if(data_name == "VIQT"){
      original_data_name <- "VIQT_data"
    }

    temp <- tempfile()
    eval(parse(text = paste0("download.file('http://openpsychometrics.org/_rawdata/",original_data_name,".zip',temp)")))
    unzip(temp, exdir = tempdir())
    eval(parse(text = paste0("files_names <- list.files('",tempdir(),"/",original_data_name,"')")))
    dir.create(data_name)
    file.copy(paste0(tempdir(), "/",original_data_name,"/",files_names), paste0(data_name, "/", files_names))
    unlink(temp)

  }else{
    temp <- tempfile()
    eval(parse(text = paste0("download.file('http://openpsychometrics.org/_rawdata/",data_name,".zip',temp)")))
    unzip(temp)
    unlink(temp)
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
#' #data <- load_ospp("16PF", codebook = TRUE)
load_ospp <- function(data_name, codebook = FALSE){
  if(file.exists(paste0(data_name,"/")) == FALSE){
    print("There are no directory with the data you specified in current directory. So data is downloading and building a directory now.")
    download_ospp(data_name)
  }
  if(data_name == "16PF"||
     data_name == "MACH"||
     data_name == "BIG5"||
     data_name == "EQSQ"||
     data_name == "RIASEC"||
     data_name == "APS"||
     data_name == "APSdev"){
        #read.tabel(tab)
        eval(parse(text = paste0("data = read.table('",data_name,"/data.csv', header = TRUE, fill = TRUE, sep = '\t')")))
  }else if(data_name == "NPI"||
     data_name == "TMA"||
     data_name == "HSQ"||
     data_name == "SCS"||
     data_name == "ASSC"){
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
  return(data)
}
