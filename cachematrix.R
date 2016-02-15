## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    ## We start initializing the inverse property
    i <- NULL
    
        ## Then we need a method to set the matrix
        set <- function(matrix){
          m <<- matrix
          i <<- NULL
        }
    ## Now we need to get the matrix and return it
        GetInv <- function(){
          m
        }
    ## We can set the inverse of the matrix
        InvMat <- function(inv){
          i <<- inv
        }
    ## To return a list of methods
        list(set = set, get = get,
             InvMat = InvMat,
             GetInv = GetInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$GetInv()
  
        
        ## To return the inverse if it is already set
        if( !is.null(m) ){
            message("Data in cache!")
            return(m)
        }
        ##To get data / calculate and set the inverse
        data <- x$get()
        m <- solve(data) %*% data
        x$InvMat(m)
        m

        }
