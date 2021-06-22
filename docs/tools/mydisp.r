mydisp <- function(x){
  cat(paste(as.character(unlist(x), sep = "", collapse = ", ")))
  return(nrow(x))
  }
