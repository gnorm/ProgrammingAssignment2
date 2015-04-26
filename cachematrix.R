## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setMatrix <- function(solve) m <<- solve
    getMatrix <- function() m
    list(set = set, get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
    m <- matrix(c(-76, 8, 76, 8),2,2)
    x <- makeCacheMatrix(m)
    x$get()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    ## Return a matrix that is the inverse of 'x'
    data <- x$get()
    m <- solve(data, ...)
    x$setMatrix(m)
    m
}


      
}
