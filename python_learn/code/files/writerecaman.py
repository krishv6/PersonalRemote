#!/usr/bin/env python3
import sys
from itertools import islice,count

def sequence():
    """ Generate recaman  series """
    seen=set()
    a=0
    for i in count(1):
        yield a
        seen.add(a)
        c=a-i
        if c < 0 or c in seen:
            c = a+i
        a=c

def write_sequence(filename,num):
    f = open(filename,mode='wt',encoding='utf-8')
    f.writelines("{0}\n".format(r) 
                 for r in islice(sequence(),num+1))
    f.close()
    
if __name__ == "__main__":
    write_sequence(sys.argv[1],int(sys.argv[2]))
