import sys,string, fileinput
from glob import glob

filelist = glob('%s' % sys.argv[1])

filelist.sort()

ii = 0

while (ii < len(filelist)):
    file = filelist[ii]
    sys.stderr.write(file)
    string = open(file,"r").read()
    sys.stdout.write("%s\n\n" % string)
    ii += 1

