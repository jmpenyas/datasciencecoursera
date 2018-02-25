


corr <- function (directory, threshold = 0)
{
      compInfo <- complete(directory, 1:332)
      ids <-
            subset(compInfo, compInfo$NObs > threshold, select = "id")$id
      result <- numeric(0)
      if (length(ids) > 0) {
            for (i in 1:length(ids)) {
                  completeData <- getComplete(ids[i], directory)
                  result <-
                        c(result,
                          cor(
                                completeData$nitrate,
                                completeData$sulfate
                          ))
            }
      }
      result
      
}