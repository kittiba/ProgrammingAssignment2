## This program - cachematrix.R will have the functions necessary to save time 
## in calculating the inverse of matrix if previously calculated. 
## This assumes however that the contents of the matrix did not change since
## it persisted the initial matrix inverse calculation.

## This function makeCacheMatrix returns a vector which is really has a function
## -- to set the value of the Vector
## -- get the value of the vector
## -- setinverse of a matrix
## -- getinverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
        z<-matrix()
        
        set<-function(y){
                x<<-y
                z<<-NULL
        }
                
        get <- function() x
        setinverse <- function(inverse) z <<- inverse
        getinverse <- function() z
        
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function cacheSolve will return the cached value of the inverse of matrix
## if previously calculated or returns the inverse by calculating
## for the first time. This takes the list that we created in makeCacheMatrix
## as its input

cacheSolve <- function(x, ...) {
        z<- x$getinverse()
        
        if(!is.na(z[1,1])) {
                message("getting cached data")
                return(z)
        }
        data <- x$get()
        z <- solve(data, ...)
        x$setinverse(z)
        z
}
