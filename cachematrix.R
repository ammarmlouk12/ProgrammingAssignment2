## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
k<-NULL ##defines k as NULL
  set<-function(y){ ##defining set as function
  x<<-y ##defines x as y variable
  k<<-NULL 
}
get<-function() x 
setsolve<-function(solve) k<<- solve ##use of solve function
getsolve<-function() k
list(set=set, get=get, setsolve=setsolve, getsolve=getsolve) ##list


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         k <- x$getsolve()
  if(!is.null(k)) {
    message("getting cached data")
    return(k) ##returns variable k
  }
  data <- x$get() 
  k <- solve(data, ...) ##solve function for variable 'data'
  x$setsolve(k) 
  k 

        
}
