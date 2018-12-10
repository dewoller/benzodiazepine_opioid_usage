source('lib/functions.R')

readstata13::read.dta13('/tmp/for merging.dta') %>%
  as.tibble() %>% 
  { . } -> a


a %>% distinct( ID )
