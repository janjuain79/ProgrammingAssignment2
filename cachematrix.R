## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This Function is going to be used to create a Cache Matrix 


makeCacheMatrix <- function(x = matrix())
{
  invMatrix <- NULL
  
  set <- function(y) {
    x <<- y 
    invMatrix <- NULL
  }
  
  get <-  function() x
  setInv <- function(inv) invMatrixx <<- inv
  getInv <- function() invMatrix
  list(set=set, get=get, setInv=setInv, getInv=getInv)
  
  
}



## Write a short comment describing this function

## This function is going to inverse the Matrix and Save it if does not exist earlier and will use the existing one if alrady cached

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  
  invMatrix <- x$getInv()
  
  if(!is.null(invMatrix))
  {
    message("Getting Cached Data...")
    return(invMatrix)
  }
  
  data <- x$get()
  invMatrix <- solve(data)
  
  x$setInv(invMatrix)
  return(invMatrix)
  
  
}
