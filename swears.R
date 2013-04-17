source("sentiment.R")

c = read.csv("/Users/amooreniemi/Documents/R/comments/comments_41713.csv")

p = scan('/Users/amooreniemi/Documents/R/comments/good_med_words.txt', what='character', comment.char=';')

n = scan('/Users/amooreniemi/Documents/R/comments/swears.txt', what='character', comment.char=';')

#regex = scan('/Users/amooreniemi/Documents/R/comments/regex.txt', what='character', comment.char=';')

result = score.sentiment(c$Comment, p, n)

#a <- gsub(" ", "_", date())
#a <- gsub("/", "_", a)
#a <- gsub(":", ".", a)
#sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)

#write.table(result$text, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)), sep=",",row.names=F)
#write.table(result$score, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_score.csv", a)), sep=",",row.names=F)
#write.table(april$User.ID, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_users.csv", a)), sep=",",row.names=F)



#grep("fuck+", april$Comment, value=TRUE)