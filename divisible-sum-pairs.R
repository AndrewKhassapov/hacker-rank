# Solution to 'Divisible Sum Pairs'
# in R
# Source: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

# Returns total combinations of pairs of numbers that are divisible by k.
# Arrays in R are 1-indexed.
# @params n: {integer} Length or array, ar
# @params k: {integer} Divisor. Where (ar[i] + ar[j]) % k == 0
# @params ar: {array} Array of integers. Size >= 1
# @returns: {integer} An integer denoting the number of pairs where (ar[i] + ar[j]) % k == 0
divisibleSumPairs <- function(n, k, ar) {
    count <- 0
    for (i in 1:(n - 1)) {
        for (j in (i + 1):n) {
            if ((ar[i] + ar[j]) %% k == 0) {
                count <- count + 1
            }
        }
    }
    return(count)
}
