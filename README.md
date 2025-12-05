# **Semantic Text Analysis Package**

This R package provides a simple semantic algorithm for identifying and summarising positive and negative words in a text document.  
It is developed as part of the HT2025 Intermediate R Programming Course – Group Exam 2.

---

## **Package Purpose**

The package implements a three-step workflow:

### **1. Preprocess text**
- Load a `.txt` file  
- Convert text to lowercase  
- Remove punctuation  
- Split sentences into individual words  

### **2. Match semantic categories**
- Compare document words to user-defined positive and negative dictionaries  
- Support simple wildcard matching using the suffix `*`  
  - Example: `"happy*"` matches `happy`, `happiness`  

### **3. Summarise sentiment**
- Count positive and negative matches  
- Return absolute counts and a simple sentiment ratio  

---

## **Main Functions**

### **`preprocess_text(filepath)`**
Reads a `.txt` file, cleans the text, and returns a vector of individual words.

### **`match_words(word_vector, dictionary)`**
Counts how many words in the document match entries in the provided dictionary  
(including wildcard matches).

### **`summarize_sentiment(word_vector, positive_dict, negative_dict)`**
Computes:
- number of positive matches  
- number of negative matches  
- sentiment ratio  

Returns a summary list or data frame.

---

## **Package Structure**
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

---

## **Example Usage**

```r
### Load package
library(R_course_exam2)

### Preprocess text
words <- preprocess_text("Example_negative.txt")

### Define dictionaries
positive <- c("happy*", "good", "love", "nice")
negative <- c("sad*", "angry*", "hate", "bad")

### Match words
pos_count <- match_words(words, positive)
neg_count <- match_words(words, negative)

### Summarise sentiment
summary <- summarize_sentiment(words, positive, negative)
print(summary)

---

## **Installation**

Clone or download the repository:
git clone https://github.com/RobertTonoian/R_course_exam2.git

---

## **Author**

Robert Tonoian
Karolinska Institutet
HT2025 Intemediate R Course
