library(tidyverse)
library(gridExtra)
library(scales)

train_label <- read.csv("~/Github/Daycon_15/train_label.csv", header = T, stringsAsFactors = F)
add_data1 <- read.csv("~/Github/Daycon_15/additional_data_01.csv", header = T, stringsAsFactors = F)
add_data2 <- read.csv("~/Github/Daycon_15/additional_data_02.csv", header = T, stringsAsFactors = F)

train_0 <- read.csv("D:/daycon/train/0.csv", header = T, stringsAsFactors = F) #label=110
train_22 <- read.csv("D:/daycon/train/22.csv", header = T, stringsAsFactors = F) #label=110
train_30 <- read.csv("D:/daycon/train/22.csv", header = T, stringsAsFactors = F) #real data



train_label_count <- train_label %>% group_by(label) %>% summarize(count=n())
train_label_count %>% filter(count>=5) %>% arrange(desc(count)) 











