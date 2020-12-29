
# set up directory
setwd("~/Downloads")

# import library & data file
library(tidyr)
df<-read.csv("TestMP.csv")

# reproduce a dummy dataframe
test <- data.frame(
  x = c("apple","orange","pear"),
  y = c("a", "d,e,f", "g,h"),
  z = c("1", "2,3,4", "5,6"),
  stringsAsFactors = FALSE
)

# use separate_rows method from tidyr
df_new<-separate_rows(df,Value.likedBy, convert = FALSE)
# rename two columns
names(df_new) <-c("to", "from")
# swap the order of columns
df_new <- df_new[c("from", "to")]
