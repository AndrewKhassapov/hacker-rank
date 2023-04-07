# Solution to 'Counting Valleys'
# in R
# Source: https://www.hackerrank.com/challenges/counting-valleys/problem

# Returns the number of valleys traversed
# @params steps: {integer} the number of steps taken
# @params path: {string} the path taken where U = up and D = down. Expecting "U" and "D" only.
# eg. "UDDDUDUU" represents 1 valley traversed as:
# _/\      _
#    \    /
#     \/\/
# @returns: {integer} the number of valleys traversed
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
