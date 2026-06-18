copy_corpus:t

define: manydefs.def

node: CP*
query:
(CP* exists) AND
(CP* idoms {1}IP*) AND
(IP* idoms NP-SBJ*) AND
(IP* idomsnumber 1 NP-SBJ*) AND
(CP* idoms !C)


add_leaf_before{1}: (C 0)
