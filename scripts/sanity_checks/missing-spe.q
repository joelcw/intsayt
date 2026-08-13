node: IP*SPE*|CP*SPE*|QTP

define: ../structure_building/manydefs.def

copy_corpus: t

query: (IP*SPE*|CP*SPE* doms {1}nonspe_ip)
AND
(!IP-MAT-PRN doms nonspe_ip)

add_leaf_before{1}: (CODE *ZZZ_MISS_SPE*)
