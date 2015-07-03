require(R.utils)
palfun <- function(a){
  test <- strsplit(toString(a), NULL)[[1]]
  test_rev <- paste(rev(test), collapse='')
  return(toString(a)== test_rev)
}

x <- sapply(1:1000000, palfun)
palndomes <- which(x==TRUE)

bnry <- function(a){
  return(intToBin(a))
}

y <- sapply(palndomes,bnry)

palfun1 <- function(a){
  test <- strsplit(a, NULL)[[1]]
  test_rev <- paste(rev(test), collapse='')
  return(a== test_rev)
}

z <- sapply(y,palfun1)

sum(palndomes[which(z==TRUE)])

