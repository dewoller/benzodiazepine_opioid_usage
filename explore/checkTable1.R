get_table_1_data = function (df_patient, df_patient_usage, df_population) {

  df_seifa = df_population %>% distinct( lga, seifa, urbanization )

  df_patient %>% 
    dplyr::select(pin, sex,age, state, lga) %>%
    inner_join( df_patient_usage, by='pin') %>%
    inner_join( df_seifa, by='lga') %>% 
    mutate( is_benzo = ifelse( is.na( benzo_usage_category), 'No', 'Yes')) %>%
    mutate( is_opioid = ifelse( is.na( opioid_usage_category), 'No', 'Yes')) %>%
    mutate_at( vars(starts_with('is_')), as.factor) %>%
    { . } -> df

  require(lme4)

  df %>%
    lmer(  opioid_usage_category ~ sex+age+seifa+urbanization+is_benzo+ (1 | state) + (1 | lga),
          , data=.)


}


df_match_multiyear %>%
  inner_join(df_patient, by='pin') %>%
  distinct(pin, age, sex,  supply_year) %>%
  count( age, sex,  supply_year) %>%
  pivot_wider( names_from = c(sex, age), values_from=n) %>%

