# Solution to 'Migratory Birds'
# in R
# Source: https://www.hackerrank.com/challenges/migratory-birds/problem

# Returns the smallest mode of the array
# Arrays in R are 1-indexed
# @params arr: {array} an array of integers representing types of birds sighted
# @returns: {integer} the smallest mode. The lowest type number of the most common bird
migratoryBirds <- function(arr) {
    t <- table(arr)
    mode <- names(t[t == max(t)])
    return(mode[1])
}
