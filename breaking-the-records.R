breakingRecords <- function(scores) {
    count <- c(0, 0)
    if(length(scores) <= 1){
        return(count)
    }
    
    lowest = scores[1]
    highest = scores[1]

    for(i in 2:length(scores)){
        if (scores[i] < lowest){
            lowest = scores[i]
            count[2] <- count[2] + 1
        } else if (scores[i] > highest){
            highest = scores[i]
            count[1] <- count[1] + 1
        }
    }
    return(count)
}