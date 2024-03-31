palindromo <- function(s){
  s_clean <- gsub(" ", "", s)
  v <- strsplit(s_clean, "")
  v <- lapply(v, rev)
  v <- sapply(v, paste, collapse = "")
  return(ifelse(v == s_clean, "É palíndromo", "Não é! :("))
}
palindromo("weweww")
palindromo("www")
palindromo("12ww12ww12")
