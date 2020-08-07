## This entire program basically inverts a matrix and cache its result
## Sorry I'm not good at writing helpful comments 

## This function will create a special matrix

makeCacheMatrix <- function(a = matrix()){
      inversevariable <- NULL
      set <- function(b){
            a <<- b
            inversevariable <<- NULL
      }
      get <- function() {a}
      setInverseMatrix <- function(inverse) {inversevariable <<- inverse}
      getInverseMatrix <- function() {inversevariable}
      list(set = set, get = get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## This function will compute inverse of special matrix

cacheSolve <- function(a, ...){
      inversevariable <- a$getInverseMatrix()
      if(!is.null(inversevariable)){
            message("getting cached data")
            return(inversevariable)
      }
      mat <- a$get()
      inversevariable <- solve(mat, ...)
      a$setInverseMatrix(inversevariable)
      inversevariable
}
