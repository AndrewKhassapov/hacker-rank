# Solution to 'Drawing Book'
# in R
# Source: https://www.hackerrank.com/challenges/drawing-book/problem

# Returns the minimum page turns to get to page p
# @params n: {integer} the number of pages in the book
# @params p: {integer} the page number to turn to
# @returns: {integer} the minimum number of page turns to reach page p
pageCount <- function(n, p) {
    turns_from_front <- floor(p / 2)
    turns_from_back <- floor((n - p + ifelse(n %% 2 == 0, 1, 0)) / 2)
    return(min(c(turns_from_front, turns_from_back)))
}
