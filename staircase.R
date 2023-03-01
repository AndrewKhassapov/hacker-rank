# Solution to 'Staircase'
# in R
# Source: https://www.hackerrank.com/challenges/staircase/problem

# Prints a staircase.
# in R.
# @params n: The number of rows in the staircase.
# Prints: A right-aligned staircase of height 'n' and width 'n'.
# @see cat() : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/cat
# @see sprintf() for C-style string formatting : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sprintf
staircase <- function(n) {
    CHAR <- "#"

    arr <- c()

    for (i in 1:n) {
        str <- sprintf("%*s\n", n, strrep(CHAR, i))
        arr <- append(arr, cat(str))
    }

    cat(arr)
}
