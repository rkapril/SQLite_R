library(DBI)
library(dplyr)

getwd()

setwd("C:\\Users\\User\\OneDrive\\Desktop\\sqlite")

getwd()

con <- dbConnect(RSQLite::SQLite(), "loan.db")

df <- tbl(con, "records")

df <- data.frame(df)