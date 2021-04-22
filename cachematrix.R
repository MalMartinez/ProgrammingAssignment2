@@ -4,12 +4,40 @@
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  ##sets matrix
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  ##gets matrix
  get <- function()x
  ##sets inverse of matrix
  setInverse <- function(inverse) m <<- inverse
 ##gets inverse of matrix
  getInverse <- function() m
 ## Returns list of methods
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return matrix that is the inverse of x
  m <- x$getInverse()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
   ## Get matrix from object
  mat <- x$get()
   ## Calculate inverse using matrix multiplication
  m <- solve(mat,...)
   ## Set the inverse to object
  x$setInverse(m)
  ## Returns matrix
  m
}
