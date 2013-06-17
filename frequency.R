#from here http://stackoverflow.com/questions/15506118/make-dataframe-of-top-n-frequent-terms-for-multiple-corpora-using-tm-package-in

# load text mining library    
library(tm)

# make corpus for text mining (data comes from package, for reproducibility) 
#crude <- month$Comment
corpus <- Corpus(VectorSource(crude))

# process text (your methods may differ)
skipWords <- function(x) removeWords(x, stopwords("english"))
funcs <- list(tolower, removePunctuation, removeNumbers, stripWhitespace, skipWords)
a <- tm_map(corpus, FUN = tm_reduce, tmFuns = funcs)
a.dtm1 <- TermDocumentMatrix(a, control = list(wordLengths = c(3,10))) 
N <- 10
findFreqTerms(a.dtm1, N)
#m <- as.matrix(a.dtm1)
#v <- sort(rowSums(m), decreasing=TRUE)
#head(v, N)