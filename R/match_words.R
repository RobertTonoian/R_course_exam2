#' Count matches between document words and a semantic dictionary
#'
#' This function compares a vector of words from a document to a user-defined
#' dictionary of semantic terms (positive or negative). It supports simple
#' wildcard matching using the suffix "*", meaning that patterns like "sad*"
#' will match "sad", "sadness", "sadder", etc.
#'
#' @param word_vector A character vector of cleaned words produced by
#'   \code{preprocess_text()}.
#' @param dictionary A character vector of semantic terms. Wildcards ending
#'   with "*" are allowed and interpreted as prefix matches.
#'
#' @return An integer representing the number of matched words.
#'
#' @examples
#' words <- c("i", "am", "sad", "and", "feeling", "sadness", "today")
#' negative <- c("sad*", "angry", "bad")
#' match_words(words, negative)
#'
#' @export
match_words <- function(word_vector, dictionary) {

  count <- 0

  for (pattern in dictionary) {

    # Case A: wildcard pattern (prefix match)
    if (grepl("\\*$", pattern)) {

      prefix <- sub("\\*$", "", pattern)  # remove "*"
      matches <- startsWith(word_vector, prefix)

      count <- count + sum(matches)

    } else {

      # Case B: exact matching
      count <- count + sum(word_vector == pattern)
    }
  }

  return(count)
}
