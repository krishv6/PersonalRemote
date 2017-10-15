#!/usr/bin/env python3
import sys
def sqrt(x):
    if x < 0:
        raise ValueError("Value Error x={}".format(x))
    guess = x
    i = 0
    while guess * guess != x and i < 20:
        guess = (guess+x/guess)/2.0
        i+=1
    return guess

def main():
    print(sqrt(9))
    print(sqrt(16))
    try:
        print(sqrt(-1))
    except ValueError as e:
        print("Value Error Raised :: {}".format(str(e)),file=sys.stderr)


if __name__ == "__main__":
    main()
