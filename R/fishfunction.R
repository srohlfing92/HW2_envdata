#' Given a list of fish or any other list of species, 
#' this function will take the list as an input and output the most common, 
#' the rarest, and the total number of individuals in the list
#' Common = the most abundant species in the list
#' rare = the least abundant species in the list
#' n = total count in the list

fishfunction = function(name_list){
  common <- sort(table(name_list), decreasing = TRUE)[1]
  rare <- sort(table(name_list), increasing = TRUE)[1]
  n <- nrow(name_list)
  return(list(common = common, rare = rare, n = n))}