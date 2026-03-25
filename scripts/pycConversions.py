import sys,string,re

inString = sys.stdin.read()
foo = inString

foo = foo.replace("VBF","VBP")
foo = foo.replace("VLF","VLP")
foo = foo.replace("HVF","HVP")

foo = foo.replace("VBP איז","BEF איז")
foo = foo.replace("VBP זײַנען","BEF זײַנען")
foo = foo.replace("VB זײַן","BE זײַן")
foo = foo.replace("(ADVP (ADV שױן","(ADVP-TMP (ADV שױן")


foo = foo.replace("BEF","BEP")
foo = foo.replace("MDF","MDP")

foo = foo.replace("NP-DTV","NP-OB2")
foo = foo.replace("NP-ACC","NP-OB1")

sys.stdout.write(foo)
