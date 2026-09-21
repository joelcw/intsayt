import sys,string
from glob import glob

filelist = glob('%s' % sys.stdin.read())


for file in filelist:

    string = open(file,"r").read()
    sys.stdout.write("%s\n\n" % string)
    file.close()
