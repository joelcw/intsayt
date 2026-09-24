copy_corpus:t

node: $ROOT
query:
({1}.* exists) AND
(.* idomsonly UNK)

replace_label{1}: X