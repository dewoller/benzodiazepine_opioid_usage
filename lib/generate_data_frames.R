# get the actual data from the cache, put it in the parent enironment

cache_directory_name = 'data/cache/'
cache_file_prefix = 'mycache_'
dataset = '_rr'
library('DataCache')

clear_cache = function( dataset ='_rr') { 

  rmcache = paste0( 'rm ', cache_directory_name, '/', cache_file_prefix, dataset, '*')
#  dput(rmcache)
  system( rmcache )
}

test_generate_data_frames = function() {


  debug( data.cache )
  undebug( data.cache )
  debug( get_data_from_cache )
  debug( generate_data_frames )
  undebug( get_data_from_cache )
  undebug( generate_data_frames )
  generate_data_frames('')

  get_data_from_cache('_rr')
  get_data_from_cache('')

  clear_cache('_rr')

  clear_cache('full')
  

}


get_data_from_cache = function( dataset ='_rr') {
  data_id = paste0(cache_file_prefix, 
                  ifelse( dataset=='', 'full', dataset) )
  tic( 'get data from cache or generate' )
  rv=data.cache( generate_data_frames, 
             frequency=yearly, 
             cache.name=data_id,
             cache.dir=cache_directory_name,
             envir=parent.frame(1), 
             wait=FALSE,
             dataset )
  toc()
  rv
}

# generate all the data
generate_data_frames = function( dataset='_rr' ) 
{

  tic( "Getting data from database")
  table = paste0( 'continuing', dataset )
  df <- get_continuing_df( table, benzo=TRUE )  %>%
    mutate(drug_type=ifelse(is_benzo(type_code), 'benzodiazepine', 'opioid'),
           quarter = quarter(supply_date, with_year = TRUE), 
           supply_year = as.character(year(supply_date)) 
           )
  toc()

  if (dataset == '_rr' ) {
     multiplier = 8459157/9480
  } else if (dataset == '') {
    multiplier = 1
  }

  age_groups = structure(1:4, .Label = c("0-19", 
                                        "20-44", 
                                        "45-64", 
                                        "65+"), 
                        class = "factor")

  tic( "Getting Population")

  df_population = get_population_df()

  df_population %>% 
    distinct( lga, seifa,  urbanization, state, lga_name ) %>% 
    { . } ->  df_lga
  toc()

  tic( "Getting patients")
  df %>% 
      distinct (pin, sex, age, state, lga) %>% 
#      inner_join( df_patient_scheme, by="pin") %>%
      {.} -> df_patient

    #
    #

    # doses by year, type and patient
    # for calculation of DDD
    toc()

    tic( "Getting doses")
    df%>%  
      group_by(pin,  supply_year, drug_type) %>%
      summarise(
                n_dose = sum(n_dose),
                #quantity = sum(quantity),
                n_script = n()
            ) %>%
      ungroup() %>%
      {.} -> df_patient_dose

    #
    toc()

    tic( "Getting opioid usage")
    df%>%
      filter( drug_type== 'opioid' ) %>%
      group_by(pin, drug_type) %>%
      summarise( 
                n_quarter = n_distinct( quarter ),
                usage_category= cut( n_quarter, 
                                    c(-1, 1,7,13, 999999), 
                                    labels = qw("one-off short-term long-term regular"),
                                    ordered_result=TRUE
                                    ) 
                ) %>%
      ungroup() %>% 
      {.} -> df_patient_usage


    toc()
    tic ("seperating out benzo/opioid usages")
    df %>% mutate( row=row_number()) %>%
      select (-sex, -age, -state, -lga) %>% 
      { . } -> df 

#    df %>%
#      filter( is_benzo( type_code ) ) %>%
#      { . } -> df_benzo


#    df %>%
#      filter( !is_benzo( type_code ) ) %>%
#      { . } -> df_opioid

#    toc()
#    tic ("seperating out benzo/opioid patients")
#    df_patient_opioid = df_patient %>% filter( pin %in% df_opioid$pin)
#    df_patient_benzo = df_patient %>% filter( pin %in% df_benzo$pin)
#    toc()




    list( 
         "df"=df,
         "df_patient_usage" = df_patient_usage, 
         "df_population" = df_population,
         "df_lga" = df_lga,
#         "df_benzo" = df_benzo,
#         "df_opioid" = df_opioid,
#         "df_patient_opioid" = df_patient_opioid,
#         "df_patient_benzo" = df_patient_benzo,
         "df_patient" = df_patient,
         "base_map" =  get_australia_base_map(1:8), 
         "age_groups" = age_groups,
         "multiplier" = multiplier
         )
}


