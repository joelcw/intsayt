import sys,string, fileinput
from glob import glob

filelist = glob('%s' % sys.argv[1])

for file in filelist:
    string = open(file,"r").read()
    sys.stdout.write("%s\n" % string)

