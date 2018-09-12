euclidean = function(a, b){
  stopifnot(is.numeric(a) && is.numeric(b))
  while (b != 0) {
    t = b
    b = a %% b
    a = t
  }
  return(a)
}
