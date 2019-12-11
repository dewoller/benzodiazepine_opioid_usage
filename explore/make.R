
load_function = function() {
  #source('lib/functions.R')
  source('lib/get_data.R')
  source('lib/generate_data_frames.R')
  source('lib/keys.R')
  source('lib/functions.R')
  source('lib/findOverlap_simplified_episodes.R')
}

load_library = function() {
  #

  library(RPostgreSQL)
  library(tidyverse)
  library(lubridate)
  library(drake)
  library(magrittr)
  library(stringr)
  library(knitr)
  library(wrapr )   # for the qc function
  library(glue)
  library(multidplyr)


}

load_library()
load_function()


drakeplan <- drake::drake_plan (
 df =target( get_df()) ,
 df_population =target( get_population_df()),
 age_groups =target(  get_age_groups() ),
 df_drugs =target( get_df_drugs()) ,
 df_patient =target( get_df_patient( df, df_drugs)),
 df_patient_usage =target( get_df_patient_usage( df )) ,
 df_patient_dose =target( get_df_patient_dose( df )) ,
 df_match_multiyear = target( get_df_match_multiyear (df)),
 df_match_singleyear = target( get_df_match_singleyear (df_match_multiyear )),
trace=TRUE
)

options(clustermq.scheduler = "multicore")
make(drakeplan, parallelism="clustermq", jobs= parallel::detectCores() ,  memory_strategy = "autoclean"  )



