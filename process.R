source("sentiment.R")

print("You're judging sentiment right now.")
cat("File name of corpus (comments) including extension? ")
a <- readLines(file("stdin"),1)
month = read.csv(toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s", a)))
close(a)

positive = scan('/Users/amooreniemi/Documents/R/comments/good_med_words.txt', what='character', comment.char=';')

negative = scan('/Users/amooreniemi/Documents/R/comments/bad_words.txt', what='character', comment.char=';')

#regex = scan('/Users/amooreniemi/Documents/R/comments/regex.txt', what='character', comment.char=';')

result = score.sentiment(month$Comment, positive, negative)

#a <- gsub(" ", "_", date())
#a <- gsub("/", "_", a)
#a <- gsub(":", ".", a)
#sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)

#write.table(result$text, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)), sep=",",row.names=F)
#write.table(result$score, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_score.csv", a)), sep=",",row.names=F)
#write.table(april$User.ID, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_users.csv", a)), sep=",",row.names=F)



#grep("fuck+", april$Comment, value=TRUE)