#' Solution to 'Equalize the Array'
#' in R
#' Source: https://www.hackerrank.com/challenges/equality-in-a-array/problem


#' Returns the number of removals to equalize the array
#' Subtracts the count of mode values from total count
#' @params arr: {array} an array of integers
#' @returns: {integer} the number of removals needed to equalize the array
equalizeArray <- function(arr) {
   getmode <- function(v) {
      uniqv <- unique(v)
      uniqv[which.max(tabulate(match(v, uniqv)))]
   }
   mode <- getmode(arr) # Most common number
   dels <- length(arr) - length(arr[arr == mode])
   return(dels)
}
