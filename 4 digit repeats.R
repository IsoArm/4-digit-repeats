library(tidyverse)
library(stringr)

my_list<-c(1:9999)
my_list<-sprintf("%04d", my_list)

indexes <- str_detect(my_list, "(0{2,})|(1{2,})|(2{2,})|
                      (3{2,})|(4{2,})|(5{2,})|(6{2,})|(7{2,})|(8{2,})|(9{2,})")

result<-my_list[indexes]
result_len<-length(result)