#' Compute Fish Diversity in given data set
#' 
#' This function allows the user to input land area, fertlizer application rate, and precipitation and compute the estimated
#' amount of water into the nearby waterbody and how run off impacts water quality.
#' 
#' @param runoff_coeff constant
#' @param nutrient_conc concentration of nitrogen in land area (mg/L)
#' @param land_area (ha) size of land where fertilizer is applied
#' @param application_rate kg Nitrogen/ha
#' @param precipitaion rain (mL/24hr)
#' @param catchment_area km^2
#'  @param nitrogen_max  (mg/L) maximum nitrogen level in fresh water bodies by EPA (using NJ standards)
#' 
#'
#' @return runoff concentration
#' @return water quality (high, medium low based on water quality standards) for catchment area

#' 
runoff_rates <- function(land_area, application_rate, precipitation){
  runoff_coeff = 0.2
  nutrient_conc = (application_rate*land_area)/2

  runoff_rate = (nutrient_conc*runoff_coeff*precipitation)/ 1000

  nitrogen_max = 2

  return(runoff_rate)

}