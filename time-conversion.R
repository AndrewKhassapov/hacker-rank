# Solution to 'Time Conversion'
# in R
# Source: https://www.hackerrank.com/challenges/time-conversion/problem

# Converts 12-hour AM/PM time to 24-hour (military) time.
# @params s: {string} Valid time in 12-hour format (hh:mm:ssAM or hh:mm:ssPM). eg. 12:01:00PM
# @returns: {string} Time in 24-hour format. eg. 19:05:45
timeConversion <- function(s) {
    time <- format(strptime(c(s), "%I:%M:%S %p"), "%H:%M:%S")
    return(time)
}
