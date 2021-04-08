## Description: load the extracted data and clean
## Author: Elsie Horne
## Date: 31/07/19

# Load packages:
library(tidyverse)
library(readxl)

# Load data
extract <- read_excel("~/OneDrive - University of Edinburgh/cluster review/Extraction Form V5 - Elsie_Holly.xlsx", sheet = "Sheet1", col_names = FALSE)

# store the R names from excel sheet
names <- extract %>%
  slice(3) %>%
  unlist() %>%
  unname()

# assign R names
names(extract) <- names
rm(names)

# remove the excel names and notes column from data
extract <- extract %>%
  slice(4:nrow(.)) %>%
  select(-notes) %>%
  as_tibble()

# change to all lowercase
extract <- extract %>%
  mutate_all(funs(str_to_lower))

# correct spelling error
extract <- extract %>%
  mutate_at(vars("author"), function(x) if_else(x == "ruggierei", "ruggieri", x))

# remove the Su 2019 paper as data is not multimodal
extract <- extract %>%
  filter(!(str_detect(author, "exclude")))

# change beginning n to numeric variables
extract <- extract %>%
  mutate_at(vars(starts_with("n_")), 
            function(x) as.numeric(if_else(x %in% "unclear", NA_character_, x))) 

# sort out NAs
extract <- extract %>%
  mutate_at(vars(starts_with("clinical_"),
                 starts_with("vselect_"),
                 starts_with("miss_"),
                 starts_with("ft_"),
                 starts_with("data_"),
                 starts_with("enc_"),
                 starts_with("scale_"),
                 starts_with("ut"),
                 starts_with("prox_"),
                 starts_with("cluster_"),
                 starts_with("k_"),
                 starts_with("rep_"),
                 starts_with("stab_"),
                 starts_with("report_")), 
            function(x) if_else(x == "na", NA_character_, x))


# clean vselect
my_groups <- function(x) {
  extract %>%
    group_by_(x) %>%
    count()
}

# N_PAT
extract %>%
  select(n_pat) %>%
  summary()

# VSELECT
names <- extract %>% select(starts_with("clinical_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(clinical_previous = if_else(is.na(clinical_previous),
                                    NA_character_,
                                    "yes"),
         clinical_previous = if_else(vselect_other %in% "exploratory analysis using pca and cluster analysis",
                                       "yes",
                                       clinical_previous)
         )

names <- extract %>% select(starts_with("clinical_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)


# VSELECT
names <- extract %>% select(starts_with("vselect_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(vselect_other = if_else(vselect_other %in% c("composites","no subjective variables","avoiding collinerity"),
                                 NA_character_,
                                 vselect_other),
         # vselect_exploratory is a tricky one, but I'm going to put it under clinical_previous
         # vselect_exploratory = if_else(vselect_other %in% "exploratory analysis using pca and cluster analysis",
         #                               "yes",
         #                               NA_character_),
         vselect_supervised = if_else(vselect_other %in% "supervised methods",
                                      "yes",
                                      NA_character_),
         vselect_mca = if_else(vselect_other %in% "multiple correspondence analysis",
                               "yes",
                               NA_character_)
  ) %>%
  select(-vselect_other)

names <- extract %>% select(starts_with("vselect_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)


# MISS
names <- extract %>% select(starts_with("miss_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate_at(vars(starts_with("miss_")), 
            function(x) if_else(str_detect(x, "yes"), "yes", x)) %>%
  mutate(miss_handle = if_else(miss_other %in% "clustering method can handle missing data",
                               "yes",
                               NA_character_)) %>%
  select(-miss_other)

# copy vselect_miss into miss_var
# then remove the vselect vairable.
extract <- extract %>%
  mutate(vselect_missing = if_else(miss_var %in% "yes", 
                                   "yes",
                                   vselect_missing),
         miss_var = if_else(vselect_missing %in% "yes",
                            "yes",
                            miss_var)) %>%
  select(-vselect_missing)

## FT
names <- extract %>% select(starts_with("ft_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(ft_pca_unclear = if_else(ft_pca %in% "unclear", 
                                  "yes", 
                                  NA_character_),
         ft_pca = if_else(ft_pca %in% "yes" | ft_pca_unclear %in% "yes", 
                          "yes", 
                          NA_character_),
         ft_factor = if_else(ft_other %in% "factor analysis with varimax rotation", 
                             "yes", 
                             NA_character_),
         ft_mca = if_else(ft_other %in% "multiple correspondence analysis", 
                          "yes", 
                          NA_character_)) %>%
  select(-ft_other, -ft_pca_unclear)

# N_FEATURES
extract %>%
  select(n_cat_feat, n_cont_feat) %>%
  summary()

# TYPE
extract %>%
  group_by(data_type) %>%
  count()

# ENC
extract <- extract %>%
  mutate(encode_bin = if_else(as.numeric(enc_binary) == n_cat_feat,
                           "yes",
                           NA_character_),
         encode_bin = if_else(enc_binary %in% "0",
                           NA_character_,
                           encode_bin)) %>%
  select(-starts_with("enc_"))

names <- extract %>% select(starts_with("enc")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

# SCALE
names <- extract %>% select(starts_with("scale_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  select(-scale_unscale) %>%
  mutate(scale_aad = if_else(scale_other %in% "average absolute deviartion",
                             "yes",
                             NA_character_),
         scale_centre = if_else(scale_other %in% "centre-scaled",
                                "yes",
                                NA_character_),
         scale_gower = if_else(scale_other %in% "gower standardisation",
                               "yes",
                               NA_character_),
         scale_z_one = if_else(str_detect(scale_other, "z-score"),
                               "yes", 
                               NA_character_),
         scale_unit = if_else(scale_other %in% "scaled to unit vectors",
                              "yes",
                              NA_character_)) %>%
  select(-scale_other)

## NORMALITY
names <- extract %>% select(starts_with("ut_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(ut_log = if_else(!is.na(ut_log), 
                          "yes", 
                          ut_log),
         ut_box = if_else(ut_other %in% "box-cox",
                          "yes",
                          NA_character_),
         ut_unclear = if_else(str_detect(ut_other, "fev1"),
                           "yes",
                           NA_character_)) %>%
  select(-ut_other)

# PROX
names <- extract %>% select(starts_with("prox_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(prox_ll_exp = if_else(prox_ll %in% "stated",
                               "yes", 
                               NA_character_),
         prox_ll_ass = if_else(prox_ll %in% "assumed",
                               "yes", 
                               NA_character_),
         prox_spearman = if_else(prox_other %in% "distance measure based on spearman's rho",
                                 "yes",
                                 NA_character_),
         prox_tree = if_else(prox_other %in% "treeclust",
                             "yes",
                             NA_character_)) %>%
  select(-prox_other, -prox_ll)

# CLUSTER
names <- extract %>% select(starts_with("cluster_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(k_wards = if_else(cluster_ward %in% "pre" | cluster_other %in% "pre with hierarchical",
                           "yes",
                           NA_character_),
         cluster_kmean_ward = if_else(cluster_ward %in% "final",
                                      "yes",
                                      NA_character_),
         cluster_ward = if_else(cluster_ward %in% "yes",
                                "yes",
                                NA_character_),
         cluster_kmean = if_else(cluster_kmean %in% c("yes","final"),
                                 "yes",
                                 NA_character_),
         cluster_spss = if_else(is.na(cluster_spss),
                                NA_character_,
                                "yes"),
         cluster_fuzzypam = if_else(cluster_other %in% "fuzzy pam (k-medoid)",
                                    "yes",
                                    NA_character_),
         cluster_hier = if_else(cluster_other %in% "hierarchical",
                                "yes",
                                NA_character_),
         cluster_hier_ave = if_else(cluster_other %in% "hierarchical with average linkage",
                                    "yes",
                                    NA_character_),
         cluster_mmlmkkc = if_else(cluster_other %in% "mml-mkkc",
                                   "yes",
                                   NA_character_),
         cluster_pre_hier = if_else(cluster_other %in% "pre-cluster step followed by standard hierarchical clustering",
                                    "yes",
                                    NA_character_),
         cluster_spec = if_else(cluster_other %in% "spectral clustering",
                                "yes",
                                NA_character_),
         cluster_unclear = if_else(cluster_other %in% "unclear",
                                   "yes",
                                   NA_character_)
         ) %>%
  select(-cluster_other)

# K - note that only one study specifies the cut points of the dendrogram
names <- extract %>% select(starts_with("k_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(k_dend = if_else(is.na(k_dend),
                          NA_character_,
                          "yes"),
         k_previous = if_else(is.na(k_previous),
                              NA_character_,
                              "yes"),
         details_k_max = k_max,
         k_max = if_else(is.na(k_max),
                         NA_character_,
                         "yes"),
         details_k_mpc = k_mpc,
         k_mpc = if_else(is.na(k_mpc),
                         NA_character_,
                         "yes"),
         details_k_stat = k_stat,
         k_stat = if_else(is.na(k_stat),
                          NA_character_,
                          "yes"),
         details_k_stat_n = k_stat_n,
         k_scree = if_else(k_other %in% "elbow method/scree plot (total within sum of squares)",
                           "yes",
                           NA_character_),
         k_unclear = if_else(k_other %in% c("evaluated graphically", "pre-specified", "unclear"),
                             "yes",
                             NA_character_)
         ) %>%
  select(-k_other, -k_stat_n)

## Reproducibility
names <- extract %>% select(starts_with("rep_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(rep_initial = if_else(rep_other %in% "analysis repeated across five imputed datasets",
                               "yes",
                               rep_initial),
         rep_software = if_else(rep_other %in% "analysis repeated with different software package",
                                "yes",
                                NA_character_)
         ) %>% 
  select(-rep_other)

## Stability
names <- extract %>% select(starts_with("stab_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(stab_unclear = if_else(is.na(stab_other),
                                NA_character_,
                                "yes")) %>%
  select(-stab_other)

## Reporting
names <- extract %>% select(starts_with("report_")) %>% names() %>% unlist() %>% unname()
lapply(names, my_groups)

extract <- extract %>%
  mutate(details_report_stab = if_else(report_stab %in% c("yes", "in supplementary materials"),
                               "yes",
                               NA_character_)) %>%
  select(-report_plot, -report_stab) # probably won't use these, clean later if I do.

save(extract, file = "extract.RData")

# claenup
rm(extract, names, my_groups)
