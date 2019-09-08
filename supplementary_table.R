## Description: Supplementary material table of all studies
## Author: Elsie Horne
## Date: 31/07/19

# Packages
library(tidyverse)

# Create the table
supp_table <- extract %>%
  select(author, year, population, n_pat, n_feat) %>%
  mutate_all(as.character) %>%
  mutate_all(Hmisc::capitalize)
# CSV to copy into Word as table
write.table(supp_table, file = "", sep = ",", quote = FALSE, row.names = F)
