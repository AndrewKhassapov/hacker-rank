#' Solution to 'The Hurdle Race'
#' in R
#' Source: https://www.hackerrank.com/challenges/the-hurdle-race/problem

#' Returns the difference between maximum hurdle height and jump height
#' @param k: {integer} Jump height
#' @param height: {array} Array of hurdle heights
#' @returns: {integer} The difference between maximum hurdle height and jump height
hurdleRace <- function(k, height) {
   potion_drinks <- max(height) - max(k)
   return(ifelse(potion_drinks > 0, potion_drinks, 0))
}
