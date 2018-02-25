pollutantmean <- function (directory, pollutant, v_id = 1:332) {
      
      totalData <- data.frame(
            Date = as.Date(character()),
            sulfate = numeric(),
            nitrate = numeric(),
            id = numeric(),
            stringsAsFactors = FALSE
      )
      for (i in 1:length(v_id)) {
            totalData <- rbind(totalData, getDataFile(v_id[i],directory))
      }
      
      mean(totalData[,pollutant], na.rm = TRUE)
}