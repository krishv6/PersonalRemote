#!/usr/bin/env python3
import sys
def main(filename):
    try:
        f = open(filename,mode='rt',encoding='utf-8')
        readlist = [ int(a) for a in  f ]
        print(readlist)
    finally:
        f.close()
if __name__ == "__main__":
    main(sys.argv[1])
