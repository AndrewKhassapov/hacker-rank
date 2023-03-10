# Solution to 'Grading Students'
# in R
# Source: https://www.hackerrank.com/challenges/grading/problem

# Returns an array of integers representing the rounded grades.
# @params grades: {array} Array of integers before rounding.
# @returns: {array} Array of integers after rounding.
gradingStudents <- function(grades) {
    return(lapply(grades, FUN = roundUp))
}

# Returns numbers rounded up to the nearest 5, if the result is 40 and above.
# @params grade: {integer} A number to be rounded up.
# @returns: {integer} The rounded up number.
roundUp <- function(grade) {
    if (grade > 37) {
        gradeRounded <- 5 * ceiling(grade / 5)
        if (gradeRounded - grade < 3) {
            return(gradeRounded)
        }
    }
    return(grade)
}
