getFileName <- function (x, y) {
      library(stringr)
      dir = paste0("./",y,"/")
      paste0(dir, str_pad(x, 3, "left", "0"),".csv")
      
}

getDataFile <- function(sensor, directorio)
{
      fileId <- getFileName(sensor, directorio)
      data <- read.csv(fileId, header=TRUE)
}

getAllFiles <- function (directorio){
      files <- list.files(directorio,pattern="*.csv", full.names=TRUE)
      resultData <- data.frame(
            Date = as.Date(character()),
            sulfate = numeric(),
            nitrate = numeric(),
            id = numeric(),
            stringsAsFactors = FALSE
      )
      for (i in 1:length(files)){
            
            resultData <- rbind(resultData,read.csv(files[i], header=TRUE))
      }
      
}