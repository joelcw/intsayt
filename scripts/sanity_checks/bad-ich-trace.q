node: CP*

copy_corpus: t

query: ({1}CP* iDoms W*)
   AND (CP* doms \*ICH\**)
   AND (W* sameIndex \*ICH\**)

add_leaf_before{1}: (CODE *ZZZ_WRONG_TRACE*)
