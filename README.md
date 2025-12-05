# **Semantic Text Analysis Package**

[![R](https://img.shields.io/badge/R-package-blue.svg)](https://www.r-project.org/)
[![GitHub Repository](https://img.shields.io/badge/GitHub-R__course__exam2-black?logo=github)](https://github.com/RobertTonoian/R_course_exam2)

This R package provides a simple semantic algorithm for identifying and summarising positive and negative words in a text document.  
It was developed as part of the **HT2025 Intermediate R Programming Course – Group Exam 2** at **Karolinska Institutet**.

---

## **Package Purpose**

The package implements a three-step workflow:

### **1. Preprocess text**
- Load a `.txt` file  
- Convert text to lowercase  
- Remove punctuation  
- Split sentences into individual words  

### **2. Match semantic categories**
- Compare words to user-defined positive and negative dictionaries  
- Support wildcard suffix matching (`*`)  
  - Example: `"happy*"` matches `happy`, `happiness`

### **3. Summarise sentiment**
- Count positive and negative matches  
- Return absolute counts and a sentiment ratio  

---

## **Main Functions**

### **`preprocess_text(filepath)`**
Reads a `.txt` file, cleans text, and returns a vector of words.

### **`match_words(word_vector, dictionary)`**
Counts how many words match entries in the dictionary  
(including wildcard matches).

### **`summarize_sentiment(word_vector, positive_dict, negative_dict)`**
Computes:
- number of positive matches  
- number of negative matches  
- sentiment ratio  

Returns a named list.

---

## **Package Structure**

```
R_course_exam2/
├── R/
│   ├── preprocess_text.R
│   ├── match_words.R
│   └── summarize_sentiment.R
├── DESCRIPTION
├── NAMESPACE
├── man/
├── R_course_exam2.Rproj
├── README.md
```

---

## **Example Usage**

```r
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
```

---

## **Installation**

Clone or download the repository:

```bash
git clone https://github.com/RobertTonoian/R_course_exam2.git
```

Then open the project in RStudio and build the package using:

```
Build → Build & Reload
```

---

## **Author**

**Robert Tonoian**  
Department of Cell and Molecular Biology  
Karolinska Institutet  
HT2025 Intermediate R Course
