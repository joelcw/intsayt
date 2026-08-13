node: IP*

copy_corpus: t

query: (IP* doms {1}CP-QUE-SUB|CP-QUE-SUB-SBJ) AND (CP-QUE-SUB|CP-QUE-SUB-SBJ idoms IP-SUB*) AND (CP-QUE-SUB|CP-QUE-SUB-SBJ idoms !C) AND (IP-SUB* idomsnumber 1 !VBP|BEP|DOP|HVP)

add_leaf_before{1}: (CODE *ZZZ_MISS_C*)