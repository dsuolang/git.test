num_str <- function(s) {
  S <- paste(1:10000000, collapse = "")
  location <- regexpr(s, S)
  while (location == -1) {
    S <- as.numeric(S) + 10000000 
    S <- paste(S, collapse = "")
    location <- regexpr(s, S)
  }
  return(as.integer(location))
}
