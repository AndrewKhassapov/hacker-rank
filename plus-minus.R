# Solution to 'Plus Minus'
# in R
# Source: https://www.hackerrank.com/challenges/plus-minus/problem

# Prints the ratio of positive, negative, and zero values in an array.
# in R.
# @params arr: An array of numbers.
# Prints: The ratio of positive [0, 1], negative [0, 1], and zero [0, 1] values from the array.
# @see cat() : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/cat
# @see sprintf() for C-style string formatting : https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sprintf
plusMinus <- function(arr) {

    positives = length(arr[arr>0]) / length(arr)
    negatives = length(arr[arr<0]) / length(arr)
    zeroes = 1 - positives - negatives
    
    formattedString = sprintf("%.6f\n%.6f\n%.6f", positives, negatives, zeroes) # Format to 6 decimal places with new lines
    cat(formattedString) # Remove default formatting of: [1] "<STRING>"
}