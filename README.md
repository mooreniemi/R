R
=

R Scripts for Sentiment Analysis
--------------------------------

These scripts are an adaptation of [Jeffrey Breen's Twitter example](http://jeffreybreen.wordpress.com/2011/07/04/twitter-text-mining-r-slides/ "slideshow").

Included are several useful txt files of bad and good words. These particular lists are modeled for a forum to measure comments being more or less clinical in nature. For experimentation with regex, there are also several lists of medical word roots.

* swears.R is for identifying obscence language, for proactive moderation.

* sentiment.R is for scoring the content of comments as either being more or less valuable according to how relevant it is to a community of practice lexicon, in this case, a medical lexicon.