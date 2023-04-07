countingValleys <- function(steps, path) {
    if (steps <= 1) {
        return(0)
    }

    path <- unlist(strsplit(path, ""))
    elevation <- 0
    valleys <- 0

    for (i in seq_along(path)) {
        if (path[i] == "U") {
            elevation <- elevation + 1
            if (elevation == 0) {
                valleys <- valleys + 1
            }
        } else if (path[i] == "D") {
            elevation <- elevation - 1
        }
    }
    return(valleys)
}
