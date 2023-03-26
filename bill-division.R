bonAppetit <- function(bill, k, b) {
    charged <- sum(bill) / 2
    actual <- sum(bill[-c(k + 1)]) / 2

    if (actual == b) {
        cat("Bon Appetit")
    } else {
        cat(b - actual)
    }
}
