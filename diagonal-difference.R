# Solution to 'Diagonal Difference'
# in R
# Source: https://www.hackerrank.com/challenges/diagonal-difference/

# Calculates the absolute difference between left-to-right diagonal sum and right-to-left diagonal sum.
# in R.
# @params arr: A square matrix.
# @returns: |(Sum: [0, 0] + [1, 1] + ... + [n-1, n-1] + [n, n]) - (Sum: [n, 0] + [n-1, 1] + ... + [1, n-1] + [0, n])|
diagonalDifference <- function(arr) {
    
    primarySum = sum(diag(arr)) # Primary sum = left-to-right diagonal sum.
    
    arrReverseRows <- (arr[nrow(arr):1, ]) # Flip all rows.
    secondarySum = sum(diag(arrReverseRows)) # Secondary sum = right-to-left diagonal sum.
    
    diagonalDifference = abs(secondarySum - primarySum)
    return (diagonalDifference)
}