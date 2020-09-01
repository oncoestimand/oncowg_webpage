lead <- function(subteam, type = 1){
  l1 <- (email %>% filter(Lead == subteam))
  l2 <- paste((l1 %>% select(Firstname, Lastname)), collapse = " ")
  if (type == 1){l3 <- paste(l2, " (", (l1 %>% select(Institution)), ")", sep = "")}
  if (type == 2){l3 <- paste(l2, ", ", (l1 %>% select(Institution)), sep = "")}
  return(l3)
}
