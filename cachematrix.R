## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Defining the property of the inverse "i"
  i<-NULL 
}
  ## Setting the matrix function 
  set <- function( matrix ) {
    x <<- matrix
    i <<- NULL
  }
  ## Get the function and return to the matrix
    get <- function() x{
    i
    }
  ## Set the inverse function
    setInverse <- function(inverse) {
      i <<- inverse
    }
    ## Get the inverse
    getInverse<- function(){
      i
    }
    ## Define list of the methods in the function
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Make the matrix "i" inverse of "x"
    i <- x$getinverse()
  ##conditions : returns to the inverse if already set
    if (!is.null(i)) {
      message("getting cached data")
      return(i)
    }
  ##get, compute the inverse "i"  
    data <- x$get()
    i <- solve(data) %*% data
    ##Return to the inverse of the matrix "i"  
    x$setinverse(i)
    i
  }

