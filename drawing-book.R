pageCount <- function(n, p) {
    turns_from_front <- floor(p / 2)
    turns_from_back <- floor((n - p + ifelse(n %% 2 == 0, 1, 0)) / 2)
    return(min(c(turns_from_front, turns_from_back)))
}
