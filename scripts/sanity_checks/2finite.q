node: IP*

define: ../../scripts/structure_building/manydefs.def

copy_corpus: t

query: (IP* iDoms [1]{1}finite_verb_ice)
   AND (IP* iDoms [2]{2}finite_verb_ice)

add_leaf_before{1}: (CODE *ZZZ_2FINITE*)
append_label{2}: -ZZZ-2FINITE