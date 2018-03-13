library(tidyverse)

0.
shingle_chars <- function(string, lowercase = FALSE, k = 4){
  # produce shingles (con repeticiones)
  if(lowercase) {
    string <- str_to_lower(string)
  }
  shingles <- seq(1, nchar(string) - k + 1) %>%
    map_chr(function(x) substr(string, x, x + k - 1))
  shingles
}
shingle_chars("ABRACADABRA", lowercase = T, k = 2) %>% length()
shingle_chars("CABRABRAVA", lowercase = T, k = 2) %>% length()
list(shingle_chars("ABRACADABRA", lowercase = T, k = 2), 
     shingle_chars("CABRABRAVA", lowercase = T, k = 2) ) %>% 
  unlist %>% unique %>% length()

m <- matrix(data = c(0, 1, 1, 0,
                1, 0, 1, 1,
                0, 1, 0, 1,
                0, 0, 1, 0,
                1, 0, 1, 0,
                0, 1, 0, 0), nrow = 4) %>% t
sim_jaccard <- function(a, b){
  length(intersect(a, b)) / length(union(a, b))
}
m[1,]
sim_jaccard(m[,1], m[,2])
sim_jaccard(m[,3], m[,4])


num_renglones <- nrow(m)
hash_simple <- function(...){
  primo <- 113
  a <- c(4, 6, 1, 3, 5, 2)
  out_fun <- function(x) {
    purrr::detect_index(x, function(y) y > 0)
    # ((a[1]*(x-1) + a[2]) %% primo) + 1
  }
  out_fun
}
hash <- hash_simple(m)
hash(m[,4])
hash(m[,3])
hash(m[,2])
hash(m[,1])

1E6^2 / 1E9
((1E8*1E8-1)/2)/1E9

1-(1-0.2^2)^3

(1-(1-1/5E6)^(4*1E4))^4


sim_cos <- function(x,y){
  sum(x*y, na.rm = T)/(sqrt(sum(x^2, na.rm = T))*sqrt(sum(y^2, na.rm = T)))
}
sim_cos(c(5,2), c(1,5))

1e5*.12
