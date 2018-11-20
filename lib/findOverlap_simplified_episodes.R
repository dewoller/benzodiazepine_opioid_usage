tic( 'join')


df %>%
  #head(1000) %>% 
  group_by( pin, supply_date, drug_type ) %>%
  summarise( n_dose = sum( n_dose )) %>%
  ungroup() %>%
  #
#  group_by( pin, drug_type ) %>%
#  filter( n() > 2 ) %>%
#  ungroup() %>%
  #
#  mutate( ndays_overlap = 0 ) %>%
  arrange(pin, supply_date) %>%
  find_episode_overlap () %>%
  { . } -> df_overlap_episode

########################################################################################
########################################################################################
update_balance = function( ndose, supply_date, balance ) {
  if ( is.na( balance$last_date )) 
  {
    balance$balance = ndose
  } 
  else 
  { 
    # account for the case where there may be dose left from last supply
    balance$balance = 
      ndose + pmax( 0, balance$balance - (as.numeric(supply_date) - as.numeric(balance$last_date )))
  }
  balance$last_date = supply_date # update date
  return( balance )
}
########################################################################################
########################################################################################
find_episode_overlap = function( df  ) {

  df_n = dim(df)[1]
  library(progress)
  pb <- progress_bar$new( format = " [:bar] :percent eta: :eta elapsed: :elapsedfull",
                         total = df_n, clear = FALSE, width= 60)
  cur=data.frame(pin=-1)
  df$ndays_overlap = 0
  df$benzo_balance = NA
  df$opioid_balance = NA
  for (i in 1:df_n ) {
    pb$tick()
    row = df[i,]

    if (row$pin != cur$pin) {
      cur$pin = row$pin
      opioid_balance = data.frame( last_date = NA, balance=0)
      benzo_balance = data.frame( last_date = NA, balance=0)
    }

    if (row$drug_type == 'opioid') {
      opioid_balance  = update_balance( row$n_dose, row$supply_date, opioid_balance ) 
      benzo_balance  = update_balance( 0, row$supply_date, benzo_balance ) 
    } else {
      benzo_balance  = update_balance( row$n_dose, row$supply_date, benzo_balance ) 
      opioid_balance  = update_balance( 0, row$supply_date, opioid_balance ) 
    }
    df[i,]$benzo_balance = benzo_balance$balance 
    df[i,]$opioid_balance = opioid_balance$balance 
    df[i,]$ndays_overlap = ceiling( pmin( opioid_balance$balance, benzo_balance$balance ))
  }
  df
}
  ########################################################################################
    
