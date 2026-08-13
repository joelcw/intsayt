copy_corpus: t

define: ../../scripts/structure_building/manydefs.def

node: IP*|CP*|FRAG|QTP
query: (nongap_ip idoms {1}*AN) AND (nongap_ip idoms BE*|RD*) AND (*AN idoms *-קומע?ן)

add_leaf_before{1}: (CODE *ZZZ_BAD_VAN_MAYBE_VBN*)
