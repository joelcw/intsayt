copy_corpus:t

node: $ROOT
query:
([1]NP* exists)
AND
([1]NP* idoms N)
AND
([1]NP* idoms [2]{1}NP)
AND
(N iprecedes [2]NP)

append_label{1}: -COM