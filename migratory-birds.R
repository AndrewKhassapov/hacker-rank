migratoryBirds <- function(arr) {
    t <- table(arr)
    mode <- names(t[t == max(t)])
    return(mode[1])
}