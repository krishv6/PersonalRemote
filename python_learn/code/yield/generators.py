#!/usr/bin/env python3

def take(count,iterable):
    counter = 0
    for i in iterable:
        if counter == count:
            return
        counter+=1
        yield i

def run_take():
    a=[1,2,3,4,5]
    for i in take(3,a):
        print(i)

def distinct(iterable):
    seen = set()
    for i in iterable:
        if i in seen:
            continue
        yield i
        seen.add(i)

def run_distinct():
    a=[6,6,1,2,1,3,2,3,4,1,2,3,2,5,1,5]
    for i in distinct(a):
        print(i)

def run_pipeline():
    a=[6,6,6,1,2,1,4,2,3,2,5,2,5,1,2,3,4,5]
    for i in take(5,distinct(a)):
        print(i)

if __name__ == "__main__":
    """run_take()"""
    """run_distinct()"""
    run_pipeline()
