## This function will find the inversion of a Matrix


## This is the base function to get the inversion of a Matrix
makeCacheMatrix<-function(x = matrix()) {
m<-NULL
##This step is to set the function
set<-function(y) {
x<<-y
m<<-NULL}

##This step is to get the function

get<-function(){x}
setInverse <- function(Inverse){m <<- Inverse}

getInverse <- function(){m}

list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}

## This function is to find the inversion of the matrix by using solve() function

cacheSolve <- function(x, ...) {
##This step is to asign the getInverse() to x
m <- x$getInverse()

##This step is to check if the matrix has been cached
if(!is.null(m)) {
message("getting cached data")
return(m)  ##check if the matrix has already been cached
}
data <- x$get() 
m <- solve(data) ##Use solve to find the inverse
x$setInverse(m)
m }
