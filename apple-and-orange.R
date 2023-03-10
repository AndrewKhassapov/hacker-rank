# Solution to 'Apple and Orange'
# in R
# Source: https://www.hackerrank.com/challenges/apple-and-orange/problem

# Prints all the apples and oranges that fall within the range [s, t].
# @param s: {integer} starting point of house location.
# @param t: {integer} ending point of house location.
# @param a: {integer} location of the Apple tree.
# @param b: {integer} location of the Orange tree.
# @param apples: {array} distances at which each apple falls from the tree.
# @param oranges: {array} distances at which each orange falls from the tree.
# as.numeric() converts [TRUE, FALSE] to [1, 0]
countApplesAndOranges <- function(s, t, a, b, apples, oranges) {
    as <- sum((as.numeric(apples >= s - a) * as.numeric(apples <= t - a)) == 1)
    bs <- sum((as.numeric(oranges >= s - b) * as.numeric(oranges <= t - b)) == 1)
    cat(sprintf("%s\n%s", as, bs))
}
