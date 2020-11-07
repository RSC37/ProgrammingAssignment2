## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The function below creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setinverse <- function(solveMatrix) inve <<- solveMatrix
  getinverse <- function() inve
  list(set = set, get = get, setmean = setinverse, getmean = getinverse)

}


## Write a short comment describing this function
##The function below computes the inverse of the special "matrix" returned by the previous function

cacheSolve <- function(x, ...) {
  inve <- x$getinverse()
  if(!is.null(inve)) {
    message("getting cached data")
    return(inve)
  }
  data <- x$get()
  inve <- solve(data)
  x$setinverse(inve)
  inve
}


