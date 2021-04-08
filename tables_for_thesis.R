library(tidyverse)
load("extract.RData")

extract %>%
  group_by(class) %>%
  count() %>%
  ungroup() %>%
  arrange(desc(n)) %>%
  mutate(n = str_c(n, ' (', round(100*n/sum(n),0), ')')) %>%
  filter(class!='na')
