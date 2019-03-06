## Put comments here that give an overall description of what your
## functions do

## Creats a matrix object to store the inverse matrix

makeCacheMatrix <- function(x = matrix()) {  
  m<- NULL
  ## Method to create the matrix
  set <- function(y) {
    x<<- y
    m<<- NULL
}
##Method to call the matrix
get <-function() x

##Method to create the inverse matrix
setmatrix <- function(solve) {m <<- solve}

##Method to return the inverse matrix
getmatrix <- function() {m}

##Retruns a ist of the aforementioned methods
list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)


}


##Calculates the inverse matrix returned from makeCacheMatrix unless it has already been calculated
##at which time it will call the inverse from makeCacheMatrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x
  m <- x$getmatrix()
    
  ##Checks the cache for the inverse
    if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  ##Retrieves matrix from input object
  data<-x$get()

  ##Calculates the inverse
  m<-solve(data)
  
  ##Stores the inverse in the object
  x$setmatrix(m)
  
  ##Returns the inverse matrix
  m
}
