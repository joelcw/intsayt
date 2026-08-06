copy_corpus:t

node: $ROOT
query:
({1}ADVP exists)
AND
(ADVP idoms ADV)
AND
(ADV idoms נאָך|עפשער|דאָך|דען|יאָ|אפשער|יא|נאך|דאך)

append_label{1}: -DIAGN