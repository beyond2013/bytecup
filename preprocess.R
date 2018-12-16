
suppressPackageStartupMessages(
require(readtext),
require(quanteda))
# renamed txt file to json, data is a list
data <- readtext(file = "./bytecup.corpus.train.0.json", text_field = c("content", "id", "title"))
# subset first 2 records
sub_data <- subset(data, id < 3)
# convert sub_data to dataframe
df <- as.data.frame.list(sub_data, col.names = names(sub_data), stringsAsFactors = FALSE)


corpus <- corpus(df, docid_field = "doc_id", text_field = "text")
