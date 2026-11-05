node: $ROOT

copy_corpus: t

query: (!CP*|CONJP|IP-SUB* iDoms {1}IP-SUB*)

add_leaf_before{1}: (CODE *ZZZ_MISS_CP*)
