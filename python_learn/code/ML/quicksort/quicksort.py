#!/usr/bin/env python3
def quicksort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr)//2]
    left = [ x for x in arr if x < pivot ]
    mid = [ x for x in arr if x == pivot ]
    right = [ x for x in arr if x > pivot ]
    return quicksort(left) + mid + quicksort(right)

if __name__ == "__main__":
    print(quicksort([2,1,45,32,232,21,32,9,4]))

