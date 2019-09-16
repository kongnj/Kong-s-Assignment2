## This function will find the inversion of a Matrix
## 
## This is the base function to get the inversion of a Matrix

makeCacheMatrix<-function(x = matrix()) {
m<-NULL
set<-function(y) {
x<<-y
m<<-NULL}

get<-function(){x}
setInverse <- function(inverse){m <<- inverse}

getInverse <- function(){m}

list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}

## This function is to find the inversion of the matrix by using solve() function

cacheSolve <- function(x, ...) {
m <- x$getInverse()
if(!is.null(m)) {
message("getting cached data")
return(m)  ##check if the matrix has already been cached
}
data <- x$get() 
m <- solve(data)
x$setInverse(m)
m }
