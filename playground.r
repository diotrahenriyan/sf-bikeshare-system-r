library(dplyr)

data1 = read.csv("201806-fordgobike-tripdata.csv")
data2 = read.csv("201807-fordgobike-tripdata.csv")

# LIst of data file names
file_names = list.files(pattern = ".csv")
file_names

# Read data (this will take a second)
df_list = lapply(file_names,
                 function(x) read.csv(x, stringsAsFactors = FALSE))

df = bind_rows(df_list)
glimpse(df)

