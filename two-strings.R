#' Solution to 'Two Strings'
#' in R
#' Source: https://www.hackerrank.com/challenges/two-strings/problem

#' Checks if two strings share a common substring
#' @param s1: {string} Input string
#' @param s2: {string} String to compare
#' @returns: {string} 'YES' if strings share a common substring. 'NO' otherwise.
twoStrings <- function(s1, s2) {
    s1_chars <- unique(strsplit(s1, NULL)[[1]])

    if (any(sapply(s1_chars, function(char) grepl(char, s2, fixed = TRUE)))) {
        return("YES") # At least one character overlaps between s1 and s2
    }

    return("NO")
}
