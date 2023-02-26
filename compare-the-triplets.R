# Solution to 'Compare the Triplets'
# in R
# Source: https://www.hackerrank.com/challenges/compare-the-triplets/

# Compares arrays 'a' and 'b'.
# Returns a tuple [count-a, count-b]
# At index 'i', if a[i] > b[i], add 1 to count-a
# if a[i] < b[i], add 1 to count-b.
# This can be extended for equal arrays of length 'n'.
compareTriplets <- function(a, b) {
    arr = c( 0, 0 )
    for(x in 1:length(a)){
        if(a[x] > b[x]){
            arr[1] = arr[1] + 1
        } else if (a[x] < b[x]){
            arr[2] = arr[2] + 1
        }
    }
    return (arr)
}