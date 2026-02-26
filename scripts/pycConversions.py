import sys,string,re

inString = sys.stdin.read()

foo = inString.replace("VBF","VBP")
foo = inString.replace("HVF","HVP")
foo = inString.replace("BEF","BEP")
foo = inString.replace("MDF","MDP")

foo = foo.replace("NP-DTV","NP-OB2")

sys.stdout.write(foo)
