#' Preprocess text file
#'
#' Loads a .txt file, converts to lowercase, removes punctuation,
#' and splits into individual words.
#'
#' @param path Path to a text file.
#'
#' @return A character vector of words.
#' @export

preprocess_text <- function(filepath) {

  # 1. Read text file
  text <- read.delim(filepath, header = FALSE, sep = "\n",
                     stringsAsFactors = FALSE)$V1

  # Combine all lines into one string
  text <- paste(text, collapse = " ")

  # 2. Convert to lowercase
  text <- tolower(text)

  # 3. Remove punctuation
  # Replace .,!?;: quotes etc with spaces
  text <- gsub("[[:punct:]]", " ", text)

  # 4. Split by spaces into words
  words <- strsplit(text, "\\s+")[[1]]

  # 5. Remove empty entries
  words <- words[words != ""]

  return(words)
}
