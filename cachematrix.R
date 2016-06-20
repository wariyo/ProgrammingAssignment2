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
        setinv <- function(inverse) m <<- inverse
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(makeCacheMatrix, ...) {
        inv = x$getinv()
        # return the inverse of x, or calculate & return if cache is empty
        if (!is.null(inv))
                # get it from the cache and skips the computation. 
                message("getting cached data")
        return(inv)
}

# otherwise, calculates the inverse 
mat.data = x$get()
inv = solve(mat.data, ...)

# sets the value of the inverse in the cache via the setinv function.
x$setinv(inv)

return(inv)

}
