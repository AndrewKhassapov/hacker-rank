# Solution to 'Staircase'
# in R
# Source: https://www.hackerrank.com/challenges/staircase/problem

# Prints a staircase pattern.
# in R.
# @params n: The number of rows in the staircase.
# Prints: A right-aligned staircase pattern of height 'n' and width 'n'.
# @see cat() : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/cat
# @see sprintf() for C-style string formatting : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sprintf
staircase <- function(n) {
    CHAR <- "#"

    arr <- c()

    for (i in 1:n) {
        # Repeat the character 'i' times
        steps <- strrep(CHAR, i)
        # Set width of string to 'n', to right-align the steps
        row <- sprintf("%*s\n", n, steps)
        # Use cat() to clear default formatting of: [1] "<STRING>"
        arr <- append(arr, cat(row))
    }

    cat(arr)
}
