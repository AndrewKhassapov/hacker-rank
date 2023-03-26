# Solution to 'Bill Division'
# in R
# Source: https://www.hackerrank.com/challenges/bon-appetit/problem

# Prints the amount of money that Brian owes Anna. If Brian did not overcharge Anna, prints Bon Appetit.
# Arrays in R are 1-indexed
# @params bill: {array} an array of the cost of each item ordered
# @params k: {integer} the zero-based index of the item Anna doesn't eat
# @param b: {integer} how much Anna pays for her share of the bill
bonAppetit <- function(bill, k, b) {
    charged <- sum(bill) / 2
    actual <- sum(bill[-c(k + 1)]) / 2

    if (actual == b) {
        cat("Bon Appetit")
    } else {
        cat(b - actual)
    }
}
