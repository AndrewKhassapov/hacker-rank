#' Solution to 'Game of Thrones - I'
#' in R
#' Source: https://www.hackerrank.com/challenges/game-of-thrones/problem

#' Checks if a string is an anagram of a palindrome
#' @param s: {string} Input string
#' @returns: {string} 'YES' for palindrome anagrms. 'NO' otherwise.
gameOfThrones <- function(s) {
    char_counts <- integer(26)

    # Count the amount of each character
    for (char in strsplit(s, NULL)[[1]]) {
        char_index <- utf8ToInt(char) - utf8ToInt("a") + 1
        if (char_index >= 1 && char_index <= 26) {
            char_counts[char_index] <- char_counts[char_index] + 1
        }
    }

    # Count the number of odd counts
    odd_count <- sum(char_counts %% 2 == 1)

    # A string can be an anagram of a palindrome if count of all characters is even, or only one odd
    if (odd_count > 1) {
        return("NO")
    } else {
        return("YES")
    }
}
