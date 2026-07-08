copy_corpus:t

node: $ROOT
query:
(N exists) AND
(N idoms זיך)
AND
({1}NP* idoms N)

replace_label{1}: NP-RFL