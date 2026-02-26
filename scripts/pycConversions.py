import sys,string,re

inString = sys.stdin.read()
foo = inString

foo = foo.replace("VBF","VBP")
foo = foo.replace("HVF","HVP")
foo = foo.replace("BEF","BEP")
foo = foo.replace("MDF","MDP")

foo = foo.replace("NP-DTV","NP-OB2")

sys.stdout.write(foo)
