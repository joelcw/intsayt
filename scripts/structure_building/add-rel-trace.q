copy_corpus:t

node: IP*
query: (CP-REL* idoms {1}C) AND (CP-REL* idoms !W*P) AND (CP-REL* idoms IP-SUB) AND (IP-SUB idomsnumber 1 {2}.*)

add_leaf_before{1}: (WNP-1 0)
add_leaf_before{2}: (NP-SBJ *T*-1)
