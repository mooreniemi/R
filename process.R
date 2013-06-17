source("/Users/amooreniemi/Documents/R/sentiment.R")

print("You're judging sentiment right now.")
cat("File name of corpus (comments) including extension? ")
a <- readLines(file("stdin"),1)
month = read.csv(toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s", a)))
#close(stdin)

positive = scan('/Users/amooreniemi/Documents/R/lexicons/good_med_words.txt', what='character', comment.char=';')

negative = scan('/Users/amooreniemi/Documents/R/lexicons/bad_words.txt', what='character', comment.char=';')

#regex = scan('/Users/amooreniemi/Documents/R/comments/regex.txt', what='character', comment.char=';')

result = score.sentiment(month$Comment, positive, negative)

month["Score"] <- result$score
newdata <- month[order(-month$Score),]
topfifteen = head(newdata, n=15)
write.csv(topfifteen,file=paste(format(Sys.time(), "SENTIMENT_%Y-%m-%d"), "csv", sep = "."),row.names=T)

#a <- gsub(" ", "_", date())
#a <- gsub("/", "_", a)
#a <- gsub(":", ".", a)
#sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)

#write.table(result$text, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)), sep=",",row.names=F)
#write.table(result$score, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_score.csv", a)), sep=",",row.names=F)
#write.table(april$User.ID, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_users.csv", a)), sep=",",row.names=F)



#grep("fuck+", april$Comment, value=TRUE)