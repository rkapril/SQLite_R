library(DBI)
library(dplyr)

getwd()

setwd("C:\\..\\sqlite")

getwd()

mydb <- dbConnect(RSQLite::SQLite(), "test.db")

con <- dbConnect(RSQLite::SQLite(), "loan.db")

df <- tbl(con, "records")

df <- data.frame(df)

dbGetQuery(con, "SELECT * FROM records")

dbWriteTable(con, "test", df)
dbGetQuery(con, "SELECT * FROM test")
