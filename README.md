R
=

R Scripts for Sentiment/Relevance Analysis
------------------------------------------

The sentiment function is an adaptation of [Jeffrey Breen's Twitter example](http://jeffreybreen.wordpress.com/2011/07/04/twitter-text-mining-r-slides/ "slideshow").

Included in the folder lexicons are several useful txt files of "bad" and "good" words. The "good_med_words" or "good_onc_words" are modeled for a forum to measure comments being more or less clinical in nature. For experimentation with regex, there are also several lists of medical word roots.

* swears.R is for identifying obscence language, for proactive moderation.

* sentiment.R is the function __score.sentiment__ for scoring the content of comments based on the lexicons used.

* process.R is the wrapper for using __score.sentiment__ as a scoring mechanism for comments being more or less valuable according to how relevant it is to a community of practice lexicon, in this case, a medical lexicon.

* process-onc.R is a narrowing of process.R to score relevance to oncology.
