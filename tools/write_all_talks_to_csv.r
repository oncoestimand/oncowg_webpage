path <- getwd()

# list all talks in a directory
tab <- data.frame(list.files(paste(path, "/talks/20221202", sep = "")))
tab <- tab[tab[, 1] != "agenda.pdf", ]
dimnames(tab) <- NULL
write.table(tab, file = "C:/Users/rufiback/Desktop/xxx.csv", row.names = FALSE, col.names = FALSE)

library(PBSmodelling)
openFile(fname = "C:/Users/rufiback/Desktop/xxx.csv")





# create empty directories for every date
packs.html <- c("knitr", "pander", "reporttools", "dplyr", "readxl")
for (i in 1:length(packs.html)){library(packs.html[i], character.only = TRUE)}

knitr::opts_chunk$set(echo = TRUE)

## talks
path <- getwd()
talks <- as.data.frame(read_excel(paste(path, "/data/seminars.xlsx", sep = ""), col_types = NULL))
dates <- unique(select(talks, date))[, 1]

# prepare date strings
d <- substr(dates, 1, 2)
m <- substr(dates, 4, 5)
y <- substr(dates, 7, 11)

rdate <- paste(y, m, d, sep = "")

#for (i in 1:length(rdate)){dir.create(path = paste(path, "/talks/", rdate[i], sep = ""))}


# list all empty folders
e <- rep(NA, length(rdate))
for (i in 1:length(rdate)){e[i] <- (length(dir(path = paste(path, "/talks/", rdate[i], sep = ""))) == 0 & file.exists(paste(path, "/talks/", rdate[i], sep = "")))}
rdate[e == TRUE]