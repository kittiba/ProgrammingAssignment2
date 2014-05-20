## This program - cachematrix.R will have the functions necessary to save time 
## in calculating the inverse of matrix if previously calculated. 
## This assumes however that the contents of the matrix did not change since
## it persisted the initial matrix inverse calculation.

## This function makeCacheMatrix returns a vector of functions to
## set, get, setinverse and getinverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
        print("Hello Kittiba")
}


## This function cacheSolve will return the cached value of the matrix inverse if
## previously calculated or returns the inverse of the matrix by calculating
## for the first time.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
