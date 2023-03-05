# Solution to 'Designer PDF Viewer'
# in R
# Source: https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

# Returns the area of the highlighted area when selecting a contiguous block of text in a "PDF viewer".
# Arrays in R are 1-indexed.
# @params h: {array} Array of 26 integers representing the heights of each letter from a-z.
# @params word: {string} A word consisting of lowercase English alphabetic letters.
# @returns: {string} The highlight area of the word.
designerPdfViewer <- function(h, word) {
    ASCII_a_DEC <- 97 # Decimal ASCII value of 'a'
    wordLn <- nchar(word)
    if (wordLn == 0) {
        return(0)
    }
    strArr <- utf8ToInt(word)
    maxHeight <- -Inf

    for (i in 1:length(strArr)) {
        height <- h[strArr[i] - ASCII_a_DEC + 1]
        if (height > maxHeight) {
            maxHeight <- height
        }
    }

    return(maxHeight * wordLn)
}
