#' Solution to 'CamelCase'
#' in R
#' Source: https://www.hackerrank.com/challenges/camelcase/problem

#' Returns number of words in a combined camelCase string
#' eg. 'eatSleepCode' has 3 words: 'eat', 'Sleep', 'Code'
#' @params s: {string} unsplit string in camelCase
#' @returns: {integer} number of words in string
camelcase <- function(s) {
   words <- gsub("([[:upper:]])", " \\1", s)
   words <- unlist(strsplit(words, split = " "))
   return(length(words))
}
