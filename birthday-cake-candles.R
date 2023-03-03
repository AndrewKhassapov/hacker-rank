# Solution to 'Birthday Cake Candles'
# in R
# Source: https://www.hackerrank.com/challenges/birthday-cake-candles/problem

# Finds the number of tallest candles that can be blown out on the cake
# @params candles: {array} Array of integers representing candle heights
# @returns: {integer} Number of tallest candles
birthdayCakeCandles <- function(candles) {
    return(sum(candles == max(candles)))
}
