## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This method returns a list that contains four methods: get, set, setmatrix, getmatrix, given an input x. 
## Default value of input variable is empty matrix
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
    set <- function(y) {
            x <<- y
            m <<- NULL
    }
    get <- function() x
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


## Write a short comment describing this function

## This method returns an invertible matrix given a matrix as input. 
## It first looks up value in cache and if it doesn't in cache, it calculates the inverse and saves 
## the value in the cache and retuns the value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) {
            message("getting cached data")
            return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setmatrix(m)
    m
}
