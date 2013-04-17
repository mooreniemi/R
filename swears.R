source("sentiment.R")

print("You're scoring for naughty words right now.")
cat("File name of corpus (comments) including extension? ")
a <- readLines(file("stdin"),1)
c = read.csv(toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s", a)))
close(a)

p = scan('/Users/amooreniemi/Documents/R/comments/good_med_words.txt', what='character', comment.char=';')

n = scan('/Users/amooreniemi/Documents/R/comments/swears.txt', what='character', comment.char=';')

#regex = scan('/Users/amooreniemi/Documents/R/comments/regex.txt', what='character', comment.char=';')

r = score.sentiment(c$Comment, p, n)

summary(r)

#use below for output
#a <- gsub(" ", "_", date())
#a <- gsub("/", "_", a)
#a <- gsub(":", ".", a)
#sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)

#write.table(result$text, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_comments.csv", a)), sep=",",row.names=F)
#write.table(result$score, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_score.csv", a)), sep=",",row.names=F)
#write.table(month$User.ID, file=toString(sprintf("/Users/amooreniemi/Documents/R/comments/%s_result_users.csv", a)), sep=",",row.names=F)



#grep("fuck+", c$Comment, value=TRUE)