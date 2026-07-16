copy_corpus:t

node: $ROOT
query:
({1}ADVP exists)
AND
(ADVP idoms {2}ADV)
AND
(ADV idoms מעה?ר)

replace_label{1}: NP-MSR
replace_label{2}: QR