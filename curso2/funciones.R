adds2 <- function(arg1, arg2) {
      arg1 + arg2
}
above10 <- function(x) {
      x[x > 10]
}

above <- function(x, n) {
      x[x > n]
}

columnmean <- function(y, removeNA = TRUE)
{
      means <- numeric(ncol(y))
      for (i in 1:ncol(y)) {
            means[i] <- mean(y[, i], na.rm = removeNA)
      }
      means
}
potenciaDe <- function (n)
{
      elevar <- function(x) {
            x ^ n
      }
      
      
      elevar
}
cube <- function(x, n) {
      x ^ 3
}
f <- function(x) {
      z <- 4
      g <- function(y) {
            y + z
      }
      
      x + g(x)
}
h <- function(x, y = NULL, d = 3L) {
      z <- cbind(x, d)
      if(!is.null(y))
            z <- z + y
      else
            z <- z + f
      g <- x + y / z
      if(d == 3L)
            return(g)
      g <- g + 10
      g
}