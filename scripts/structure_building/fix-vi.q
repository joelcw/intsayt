copy_corpus:t

node: $ROOT
query:
({2}PP* exists) AND
({1}P idoms ווי|װי)
AND
(PP* idoms P)
AND
(PP* idomsnumber 2 {3}.*P)

add_internal_node{3, 3}: IP-SUB
replace_label{1}: C
replace_label{2}: CP-ADV
