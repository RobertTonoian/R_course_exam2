#' Summarize sentiment counts
#'
#' Computes the number of positive and negative matches and returns a summary.
#'
#' @param words Vector of text words.
#' @param positive Vector of positive patterns.
#' @param negative Vector of negative patterns.
#'
#' @return A list with positive, negative, and ratio.
#' @export

summarize_sentiment <- function(word_vector,
                                positive_dict,
                                negative_dict) {

  # Count matches
  positive_count <- match_words(word_vector, positive_dict)
  negative_count <- match_words(word_vector, negative_dict)

  # Compute ratio (avoid dividing by zero)
  ratio <- if (negative_count > 0) {
    positive_count / negative_count
  } else {
    NA
  }

  # Return named list
  result <- list(
    positive = positive_count,
    negative = negative_count,
    ratio = ratio
  )

  return(result)
}
