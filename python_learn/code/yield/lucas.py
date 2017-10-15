#!/usr/bin/env python3

def lucas():
    yield 2
    a=1
    b=2
    while True:
        yield b
        """ Note that right side tuple is computed completely before assignment """
        (a,b) = (b,a+b)

if __name__ == "__main__":
    a=lucas()
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
    print(next(a))
