
library(tidyverse)

#load data

zabitov <- read_tsv("data/zabitov2001.csv")
concepts <- read_tsv("data/concepts.csv")

#add concept info to target lexeme data

database <- merge(zabitov, concepts, by = "concept_id") %>%
  relocate(concept_id, .after = category_zabitov)

#create file of merged tables

write_tsv(database, "database.csv")
