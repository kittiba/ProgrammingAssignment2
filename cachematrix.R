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
        
        #Set function creation
        set<-function(y){
                x<<-y
                z<<-NULL
        }
        
        #get function creation        
        get <- function() x
        
        #setinverse function creation
        setinverse <- function(inverse) z <<- inverse
        
        #getinverse function creation
        getinverse <- function() z
        
        #setting a list of functions that will be returned
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function cacheSolve will return the cached value of the inverse of matrix
## if previously calculated or returns the inverse by calculating
## for the first time. This takes the list that we created in makeCacheMatrix
## as its input

cacheSolve <- function(x, ...) {
        #Getting the inverse if already created
        z<- x$getinverse()
        
        #Checking to see if the inverse returned in the above step is
        #not NA from initializing but actual inverse calculate from earlier
        if(!is.na(z[1,1])) {
                message("getting cached data")
                
                # Returning the previously calculated/cached matrix inverse 
                return(z)
        }
        #get the matrix that needs to be inversed
        data <- x$get()
        
        #get the inverse of the matrix
        z <- solve(data, ...)
        
        #Cache the inverse after it has been calculated once
        x$setinverse(z)
        
        #this statement returns the inverse
        z
}
