lead <- function(subteam, type = 1, active = 1){
  l1 <- (email %>% filter(Lead_TF == subteam))
  
  if (active == 3){l1 <- (email %>% filter(Lead == subteam))}
  
  l2 <- as.data.frame(l1 %>% select(Firstname, Lastname, Institution))
  
  if (type == 1){
    for (k in 1:nrow(l2)){l2[k, 4] <- paste(paste(l2[k, 1:2], collapse = " "), " (", l2[k, 3], ")", sep = "")}}

  if (type == 2){
    for (k in 1:nrow(l2)){l2[k, 4] <- paste(paste(l2[k, 1:2], collapse = " "), ", ", l2[k, 3], sep = "")}}
  
  return(l2[, 4])
}
