node: IP*|$ROOT

copy_corpus: t

define: ../structure_building/manydefs.def

query: (IP-INF* iDoms {1}finite_verb_ice)

add_leaf_before{1}: (CODE *ZZZ_SHOULD_BE_INF*)