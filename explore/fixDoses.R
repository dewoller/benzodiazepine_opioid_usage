
source('lib/functions.R')
source('lib/get_data.R')

my_db_get_query( 'select * from ddd_who' ) %>%
  as.tibble() -> ddd

my_db_get_query( 'select * from continuing.item where type_code=10' ) %>%
  as.tibble() -> item

item %>% 
  mutate( drug_name = str_replace( generic_name, ' .*', '' ) %>%
                        str_to_lower(), 
        amt = str_replace( item_form, ' .*', '' ), 
        unit_wt = str_replace( amt, '[^0-9]*$', ''),
        units =str_replace( amt, '[0-9]*', '')
        ) %>%
  select( drug_name, amt, unit_wt, units, everything())

