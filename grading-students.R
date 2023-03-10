# Solution to 'Grading Students'
# in R
# Source:

#
gradingStudents <- function(grades) {
    return(lapply(grades, FUN = roundUp))
}

roundUp <- function(grade) {
    if (grade > 37) {
        gradeRounded <- 5 * ceiling(grade / 5)
        if (gradeRounded - grade < 3) {
            return(gradeRounded)
        }
    }
    return(grade)
}
