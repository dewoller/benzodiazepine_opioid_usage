

#Methods  - find overlaps 

#################################################################################
#################################################################################

find_overlap <- function ( df, dataset, start_day_difference = NA, min_overlap = NA ) {

  save_filename = paste0( 'data/cache/intersect', dataset, '.rdata')
  get_intersect( df, save_filename ) -> rv
  if ( !is.na( start_day_difference ) ) {
    rv %>% 
      filter( abs( supply_date.opioid - supply_date.benzo ) <= 
             start_day_difference ) %>% 
      { . } -> rv
  }
  if ( !is.na( min_overlap ) ) {
    rv %>% 
      filter( diff  >= min_overlap ) %>% 
      { . } -> rv
  }
  rv

}





#################################################################################
#################################################################################

get_intersect <- function( df, save_filename ) {

  if (file.exists( save_filename) ) {
    load( save_filename, verbose=TRUE )
  } else {
    #

    df %>%
      filter( is_benzo( type_code ) ) %>%
      group_by(pin) %>%
      mutate( end_date = supply_date + pmax( 0, round(n_dose)-1)) %>%
      select( pin, item_code, quantity, n_dose, supply_date, end_date, row) %>% 
      nest( item_code, supply_date, end_date, quantity, n_dose, row, .key=benzo ) %>%
      { . } -> df_benzo_nested
    #
    df %>%
      filter( !is_benzo( type_code ) ) %>%
      group_by(pin) %>%
      mutate( end_date = supply_date + pmax(0, round(n_dose)-1)) %>%
      select( pin, item_code, quantity, n_dose, supply_date, end_date, row) %>% 
      nest( item_code, supply_date, end_date, quantity, n_dose, row, .key=opioids ) %>%
      { . } -> df_opioid_nested
    #
    library('IRanges')

    no_cores <- detectCores() - 1
    cluster <- create_cluster(no_cores)
    #
    df_benzo_nested %>%
      inner_join( df_opioid_nested ) %>% 
      partition(pin, cluster=cluster )  %>%
      { . } -> df_both
    #
    cluster_library(df_both, c("tidyverse", "IRanges", "fuzzyjoin"))
    #


    df_both %>%
      do( joined = interval_inner_join( data.frame(.$opioids), 
                                      data.frame(.$benzo), 
                                      by=c('supply_date','end_date'),
                                      minoverlap=1))  %>%
    collect() %>%
    ungroup() %>%
    unnest() %>% 
    mutate( supply_year = year( pmax( supply_date.x, supply_date.y )), 
          diff= pmin( end_date.x, end_date.y ) - 
            pmax( supply_date.x, supply_date.y )+1) %>%
    ungroup() %>%
    { . } -> df_intersect

    names(df_intersect) %>%
      sub( '\\.x', '.opioid', . ) %>%
      sub( '\\.y', '.benzo', . ) %>% 
      { . } -> names( df_intersect)

    save(df_intersect, file=save_filename)
  }
  df_intersect
}

  #cl <- makeCluster("thealfred.duckdns.org", user="dewoller", master="131.172.55.229", homogeneous=FALSE)

