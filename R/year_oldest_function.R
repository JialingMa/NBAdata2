#'A Year Age Function
#'
#'This function allows you to find the name of the player who was the odest player in NBA data for that year.
#'
#'@param year an individual year
#'
#'@return character
#'
#'@examples
#'year_oldest(2013)
#'
#'@export

year_oldest<-function(year){
  usethis::use_data(Seasons_Stats_NBA,internal=FALSE, overwrite = TRUE)
  df<-dplyr::filter(Seasons_Stats_NBA,Year==year)
  df<-dplyr::select(df,Player,Age)
  df<-dplyr::arrange(df,desc(Age),Player)
  output<-head(df$Player,1)
}
