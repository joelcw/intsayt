node: IP*

copy_corpus: t

query: (IP-SUB*|IP-MAT*|IP-IMP* iDoms {1}*-RSP)
   AND (IP-SUB*|IP-MAT*|IP-IMP* iDoms !*-LFD|*-LFD-SPE)

add_leaf_before{1}: (CODE *ZZZ_MISS_LFD*)
