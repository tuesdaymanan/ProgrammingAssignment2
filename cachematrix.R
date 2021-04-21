## partial fulfillment is used to write these functions
## there are a total of two functions that are used namely makeCacheMatrix and cacheSolve.

## in the first function, the inverse of the function is needed to be cached.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  SetInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = get inverse)
}


## cacheSolve is used in the second function
## this function is utilized to solve the special matrix's inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    messaage("getting cached data")
    return(inv)
  }
  mat <- x$get(
  inv <- solve(mat, ...)
  x$setInverse(inv)
}