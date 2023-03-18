# Solution to 'Between Two Sets'
# in R
# Source: https://www.hackerrank.com/challenges/between-two-sets/problem

# Returns the number of integers that satisfy the below:
# @params a: {array} All factors of numbers considered.
# @params b: {array} All multiples of numbers considered.
# @returns: {integer} Count of integers that are between the sets.
getTotalX <- function(a, b) {
    start <- max(a) # Number must be greater than or equal to largest factor
    limit <- min(b) # Number must be less than or equal to smallest multiple
    numbers <- list()

    # Brute force O(n^2) solution.
    # Check if all of b is divisible by the number.
    # Check if the number is divisible by all of a.
    # Add the number to our list if conditions true.
    for (i in start:limit) {
        if (sum(b %% i) == 0) {
            if (sum(i %% a) == 0) {
                numbers <- append(numbers, i)
            }
        }
    }

    return(length(numbers))
}
