# Solution to 'Apple and Orange'
# in R
# Source: https://www.hackerrank.com/challenges/apple-and-orange/problem

# This is a working solution, but it is not the most efficient.
# Including it because it is fun.
countApplesAndOranges <- function(s, t, a, b, apples, oranges) {
    as <- sum(interaction((apples >= s - a), (apples <= t - a)) == "TRUE.TRUE")
    bs <- sum(interaction((oranges >= s - b), (oranges <= t - b)) == "TRUE.TRUE")
    cat(sprintf("%s\n%s", as, bs))
}
