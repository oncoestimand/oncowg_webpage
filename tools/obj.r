obj <- function(subteam, type = 1, active = 1){
  l1 <- (objectives %>% filter(taskforce == subteam))[, 2]
  return(l1)
}
