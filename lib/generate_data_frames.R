
# generate all the data
########################################################################################  
get_df = function() {
  table = 'continuing'
  get_continuing_df( table, benzo=TRUE )  %>%
    mutate(drug_type=ifelse(is_benzo(type_code), 'benzodiazepine', 'opioid'),
           type_name = ifelse( !is_benzo( type_code), type_name, 
                              stringr::str_extract( generic_name, '[^ ]*')),
           quarter = quarter(supply_date, with_year = TRUE), 
           supply_year = as.character(year(supply_date)) ,
           row=row_number()
           ) 
}

########################################################################################  
get_age_groups = function() {
  age_groups = structure(1:4, .Label = c("0-19", 
                                        "20-44", 
                                        "45-64", 
                                        "65+"), 
                        class = "factor")
}


########################################################################################  
get_df_lga = function( df_population ) {
  df_population %>% 
    distinct( lga, seifa,  urbanization, state, lga_name ) 
}

########################################################################################  
get_df_drugs = function( ) {
  get_drugs() %>%
    mutate( type_name = ifelse( !is_benzo( type_code), type_name, 
                               stringr::str_extract( generic_name, '[^ ]*'))
  ) %>%
  group_by( type_name ) %>%
  summarise( ddd_mg_factor = mean( ddd_mg_factor ))
}
########################################################################################  
get_df_patient = function( df, df_drugs ) {

  df %>% 
    group_by (pin, drug_type, type_name) %>% 
    summarise( n_dose = sum( n_dose )) %>% 
    ungroup() %>%
    inner_join( df_drugs, by='type_name') %>%
    group_by( pin, drug_type ) %>%
    filter( n_dose == max( n_dose )) %>%
    filter( ddd_mg_factor == min( ddd_mg_factor )) %>%
    select(-ddd_mg_factor ) %>%
    ungroup() %>%
     { . } -> df_drug_of_choice

  full_join( 
              filter( df_drug_of_choice, drug_type=='opioid'),
              filter( df_drug_of_choice, drug_type=='benzodiazepine'), 
              by=qc( pin )) %>%
    rename( 
            doc_opioid = type_name.x, 
            doc_benzo = type_name.y,
            doc_opioid_doses = n_dose.x, 
            doc_benzo_doses = n_dose.y) %>%
    select( -starts_with( 'drug_type' )) %>%
    mutate( 
            doc_opioid_doses = ifelse( is.na( doc_opioid_doses ), 0, doc_opioid_doses ),
            doc_benzo_doses = ifelse( is.na( doc_benzo_doses ), 0, doc_benzo_doses )
            ) %>% 
      { . } -> df_drug_of_choice1


  #   df_drug_of_choice %>% distinct( pin )
  #   df_drug_of_choice1 %>% distinct( pin )


  df %>% 
      group_by (pin, sex, age, state, lga, drug_type) %>% 
      summarise( n_dose = sum( n_dose )) %>%
      ungroup() %>%
      spread( drug_type, n_dose, fill=0 ) %>%
      rename( opioid_total_doses = opioid, 
             benzo_total_doses = benzodiazepine ) %>%
      inner_join( df_drug_of_choice1, by=qc( pin)) 
}
########################################################################################  
get_df_patient_dose= function( df) {
  # doses by year, type and patient
  # for calculation of DDD
  #
  df%>%  
    group_by(pin,  supply_year, drug_type) %>%
    summarise(
              n_dose = sum(n_dose),
              #quantity = sum(quantity),
              n_script = n()
              ) %>%
    ungroup() %>%
    {.} -> df_patient_dose
  df_patient_dose
}

########################################################################################  
get_df_patient_usage= function( df) {


  df%>%
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
    {.} -> df_patient_usage_temp

  full_join( 
            filter( df_patient_usage_temp, drug_type=="opioid" ) ,
            filter( df_patient_usage_temp, drug_type=="benzodiazepine" ) ,
            by='pin') %>%
  select( pin, starts_with('n_'), starts_with('usage') ) %>% 
  set_names( qc( pin, 
                opioid_n_quarter, 
                benzo_n_quarter, 
                opioid_usage_category,  
                benzo_usage_category) ) %>% 
  mutate( 
         opioid_n_quarter = ifelse( is.na( opioid_n_quarter ), 0, opioid_n_quarter ),
         benzo_n_quarter = ifelse( is.na( benzo_n_quarter ), 0, benzo_n_quarter ), 
         both_n_quarter= opioid_n_quarter + benzo_n_quarter,  
         both_category= cut( pmin( opioid_n_quarter , benzo_n_quarter ), 
                            c(-1, 1,7,13, 999999), 
                            labels = qw("one-off short-term long-term regular"),
                            ordered_result=TRUE
                            ) ) %>%
  { . } -> df_patient_usage
df_patient_usage
}



########################################################################################  
get_df_patient_usage_year= function( df) {


    df%>%
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
      {.} -> df_patient_usage_temp

    full_join( 
              filter( df_patient_usage_temp, drug_type=="opioid" ) ,
              filter( df_patient_usage_temp, drug_type=="benzodiazepine" ) ,
              by='pin') %>%
    select( pin, starts_with('n_'), starts_with('usage') ) %>% 
    set_names( qc( pin, 
                  opioid_n_quarter, 
                  benzo_n_quarter, 
                  opioid_usage_category,  
                  benzo_usage_category) ) %>% 
    mutate( 
      opioid_n_quarter = ifelse( is.na( opioid_n_quarter ), 0, opioid_n_quarter ),
      benzo_n_quarter = ifelse( is.na( benzo_n_quarter ), 0, benzo_n_quarter ), 
      both_n_quarter= opioid_n_quarter + benzo_n_quarter,  
      both_category= cut( pmin( opioid_n_quarter , benzo_n_quarter ), 
                          c(-1, 1,7,13, 999999), 
                          labels = qw("one-off short-term long-term regular"),
                          ordered_result=TRUE
                          ) ) %>%
    { . } -> df_patient_usage
  df_patient_usage
}


