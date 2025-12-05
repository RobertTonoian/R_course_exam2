Semantic text analysis package

This R package provides a simple semantic algorithm for identifying and summarising positive and negative words in a text document.
It is developed as part of the HT2025 R programming course group exam 2.

**Package Purpose**

The package implements a three-step workflow:

1. Preprocess text
  Load a .txt file
  Convert text to lowercase
  Remove punctuation
  Split sentences into individual words

2.	Match semantic categories
  Compare words in the document to user-defined lists of positive and negative terms
  Allow simple wildcard matching using suffix * (e.g., "happy*" matches happy and happiness)

3.	Summarise sentiment
	Count matches for positive and negative categories
	Return absolute counts and a simple sentiment ratio

**Main Functions**

*preprocess_text(filepath)*
Reads and cleans text from a .txt file and returns a vector of words.

*match_words(word_vector, dictionary)*
Counts how many words in the text match items in a dictionary, allowing wildcard endings.

*summarize_sentiment(word_vector, positive_dict, negative_dict)*
Calculates the number of positive and negative matches and returns a summary.

**Structure of the package**
R_course_exam2/
  ├── R/
  │    ├── preprocess_text.R
  │    ├── match_words.R
  │    └── summarize_sentiment.R
  ├── DESCRIPTION
  ├── NAMESPACE
  ├── man/
  ├── R_course_exam2.Rproj
  ├── README.md

**Example usage**
# Load package
library(R_course_exam2)

# Preprocess text
words <- preprocess_text("Example_negative.txt")

# Define dictionaries
positive <- c("happy*", "good", "love", "nice")
negative <- c("sad*", "angry*", "hate", "bad")

# Match words
pos_count <- match_words(words, positive)
neg_count <- match_words(words, negative)

# Summarise sentiment
summary <- summarize_sentiment(words, positive, negative)
print(summary)

**Installation**

Clone or download the repository:
git clone https://github.com/RobertTonoian/R_course_exam2.git

Then open the project in RStudio and build the package.

**Author**

Robert Tonoian
Karolinska Institutet
HT2025 Intemediate R Course
