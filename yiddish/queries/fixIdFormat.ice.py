#16July2018
#Modified 30May2022 to include tree IDs

#this one works for IcePaHC, *not* for PPCHE!

#Script takes the output of CS extracting codes with printing token ids, and converts the id into a coding column for text; so it changes @ to : and removes token number, and makes all ids lower case for simplicity in dealing with metadata.

import sys,string,re

#Note that the second group below is made non-greedy because of some YCOE ids that have another comma in them later on...but check this behaviour 

idregex = re.compile("(@)([0-9x]+\.)([A-Za-z]+?)(\..*?)(,\.)([0-9]+)$")

#function returning id in the right format 

def textid(matchobj):
    return (":%s:%s" % (matchobj.group(3),matchobj.group(6)))

lines = sys.stdin.readlines()

for line in lines:
    new = idregex.sub(textid,line)
    new = new.replace("@", ":") # MK added because the @ thing wasn't working
    new = re.sub(r'\.(?=[^.]*$)', ':', new) # MK added to get the last . to be a : as well (token number)
    sys.stdout.write(new.lower())


