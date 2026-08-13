node: IP*

copy_corpus: t

define: ../../scripts/structure_building/manydefs.def

query: (IP* iDoms {1}ADJP)
   AND (IP* iDoms finite_verb_ice)
   AND (IP* iDoms !B*|R*)
//   AND (IP* iDomsMod V*|M*|R* !linkingVerb|þyk*|gerast|gerist|blif*|blíf*|heit*|hét*)

add_leaf_before{1}: (CODE *ZZZ_BARE_ADJP*)