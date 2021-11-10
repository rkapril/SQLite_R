library(DBI)
library(dplyr)

getwd()

setwd("C:\\..")

getwd()

mydb <- dbConnect(RSQLite::SQLite(), "test.db")

dbListTables(mydb)
# character(0)

con <- dbConnect(RSQLite::SQLite(), "loan.db")

df <- tbl(con, "records")

df <- data.frame(df)

dbGetQuery(con, "SELECT * FROM records")

dbWriteTable(con, "test", df)
dbGetQuery(con, "SELECT * FROM test")

dbListTables(con)
# [1] "records" "test"

dbExecute(con, "DROP TABLE test")

dbListTables(con)
# [1] "records"
