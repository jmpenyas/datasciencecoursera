getNobs <- function (data) {
      sum((!is.na(data$sulfate) & !is.na(data$nitrate)))
}
complete <- function (directory,  v_id) {
      resultData <- data.frame(id = numeric(),
                               nobs = numeric(),
                               stringsAsFactors = FALSE)
      
      for (i in 1:length(v_id)) {
            id <- v_id[i]
            nobs <- getNobs(getDataFile(v_id[i], directory))
            resultData <- rbind(resultData, c(id, nobs))
            
      }
      colnames(resultData) <- c("id", "NObs")
      resultData
}
getComplete <- function(id, dir) {
      data <- getDataFile(id, dir)
      subset(data , !is.na(data$sulfate) & !is.na(data$nitrate))
}
