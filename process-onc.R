source("/Users/amooreniemi/Documents/R/sentiment.R")

print("You're judging ONCOLOGY relevance right now.")
cat("File name of corpus (comments) including extension? ")
a <- readLines(file("stdin"),1)
month = read.csv(toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s", a)))

iconv(month, "LATIN1", "UTF-8")

positive = scan('/Users/amooreniemi/Documents/R/lexicons/good_onc_words.txt', what='character', comment.char=';')

negative = scan('/Users/amooreniemi/Documents/R/lexicons/bad_words.txt', what='character', comment.char=';')

result = score.sentiment(month$Comment, positive, negative)

month["Score"] <- result$score
newdata <- month[order(-month$Score),]
topfifteen = head(newdata, n=15)
write.csv(topfifteen,file=paste(format(Sys.time(), "ONC_%Y-%m-%d"), "csv", sep = "."),row.names=T)
print("The top fifteen scored comments are in ONC_%Y-%m-%d.csv")


#could also use lapply from here http://stackoverflow.com/questions/1660124/how-to-group-columns-by-sum-in-r
x <- data.frame(Category=factor(month$Username),Frequency=month$Score)
user_score <- aggregate(x$Frequency, by=list(Category=x$Category),FUN=sum)
write.csv(user_score,file=paste(format(Sys.time(), "ONC-Users_%Y-%m-%d"), "csv", sep = "."), row.names=T)
print("All of the users have been scored by their comments in aggregate in ONC-Users_%Y-%m-%d.csv")

#for finding bad words or whatnot
#grep("fuck+", month$Comment, value=TRUE)