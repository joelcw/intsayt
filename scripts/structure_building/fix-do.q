copy_corpus:t

node: $ROOT
query:
({1}ADVP exists)
AND
(ADVP idoms ADV)
AND
(ADV idoms דא|דאָ)

append_label{1}: -LOC