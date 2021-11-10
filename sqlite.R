library(DBI)
library(dplyr)

getwd()

setwd("C:\\..\\sqlite")

getwd()

con <- dbConnect(RSQLite::SQLite(), "loan.db")

df <- tbl(con, "records")

df <- data.frame(df)

dbGetQuery(con, "SELECT * FROM records")
dbSendQuery(con, "CREATE DATABASE test")
dbWriteTable(con, "test", df)
