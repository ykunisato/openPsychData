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
  OS <- .Platform$OS.type
  # If the dataset does not exist, download and save it.
  if(file.exists(paste0(dataset_name,"/")) == FALSE){
    print("There are no directory with the data you specified in current directory. So data is downloading and building a directory now.")
    temp <- tempfile()
    eval(parse(text = paste0("download.file('http://openpsychometrics.org/_rawdata/",data_select$original_name,".zip',temp)")))
    unzip(temp, exdir = tempdir())
    if (OS == "windows"){
      eval(parse(text = gsub("\\\\", "/", paste0("files_names <- list.files('",tempdir(),"\\",data_select$unzip_name,"')"))))
      dir.create(dataset_name)
      file.copy(gsub("\\\\", "/", paste0(tempdir(), "/",data_select$unzip_name,"/",files_names)), paste0(dataset_name, "/", files_names))
    }else{
      eval(parse(text = paste0("files_names <- list.files('",tempdir(),"/",data_select$unzip_name,"')")))
      dir.create(dataset_name)
      file.copy(paste0(tempdir(), "/",data_select$unzip_name,"/",files_names), paste0(dataset_name, "/", files_names))
    }
    unlink(temp)
  }
  # load data
  for (i in 1:data_select$n_file) {
    if(data_select$read_method == 1){
      #read.tabel(read_method == 1)
      eval(parse(text = paste0("data",i," = read.table('",dataset_name,"/",data_select[1,4+i],"', header = TRUE, fill = TRUE, sep = '\t')")))
    }else if(data_select$read_method == 2){
      #read.csv(read_method == 2)
      eval(parse(text = paste0("data",i," = read.csv('",dataset_name,"/",data_select[1,4+i],"')")))
    }
  }
  # show codebook
  if(codebook == TRUE){
    eval(parse(text = paste0("file.show('",dataset_name,"/",data_select$codebook_name,"')")))
  }
  # output dataset
  if(data_select$n_file > 1){
    for (i in 1:data_select$n_file) {
      if(i == 1){
        tmp_list <- paste0("data",i,"=data",i)
      }else{
        tmp_list <- paste0(tmp_list,",data",i,"=data",i)
      }
    }
    eval(parse(text = paste0("return(list(",tmp_list,"))")))
  }else{
    return(data1)
  }
}
