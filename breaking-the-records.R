# Solution to 'Breaking the Records'
# in R
# Source: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

# Returns the number of times the highest and lowest scores are broken.
# Arrays in R are 1-indexed.
# @params scores: An array of scores. Size >= 1.
# @returns An array of size 2. Where [1] = times highest score is broken. [2] = times lowest score is broken.
breakingRecords <- function(scores) {
    count <- c(0, 0)
    if (length(scores) <= 1) {
        return(count)
    }

    lowest <- scores[1]
    highest <- scores[1]

    for (i in 2:length(scores)) {
        if (scores[i] < lowest) {
            lowest <- scores[i]
            count[2] <- count[2] + 1
        } else if (scores[i] > highest) {
            highest <- scores[i]
            count[1] <- count[1] + 1
        }
    }
    return(count)
}
