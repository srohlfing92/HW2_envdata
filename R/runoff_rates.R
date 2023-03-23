#' Compute Nitrogen concentration in runoff in given data set
#' 
#' This function computes the estimated amount fertilizer runoff for a given the land area, fertilizer application rate, and precipitation.
#' 
#' 
#' @param runoff_coeff constant based on soil type 0.2
#' @param nutrient_conc concentration of nitrogen in land area (kg)
#' @param land_area (ha) size of land where fertilizer is applied
#' @param application_rate kg Nitrogen/ha
#' @param precipitaion rainfall intensity (mL/24hr)
#' @param nitrogen_max  (mg/L) maximum nitrogen level in fresh water bodies by EPA (using NJ standards)
#' 
#'
#' @return runoff concentration (mg/L)


#' 
runoff_rates <- function(land_area, application_rate, precipitation){
  land_area[land_area < 1]  <- NA # return NA; error checking for land area smaller than 1 ha
 
  nutrient_conc = (application_rate*land_area)/ 2
  runoff_rate = (nutrient_conc*0.2*precipitation)/ 1000



  return(list(runoff_rate=runoff_rate, nutrient_conc=nutrient_conc))

}
