copy_corpus:t

node: IP*
query:
IP* idoms {1}NP|NP-OB*
AND
IP* idoms B*|RD*
AND
IP* idoms !V*
AND
IP* idoms !RP*

replace_label{1}: NP-PRD