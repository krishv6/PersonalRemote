#!/usr/bin/env python3
import unittest

def get_digit(x):
    # import pdb
    # pdb.set_trace()
    ret=[]
    while x != 0:
        div,mod = divmod(x,10)
        ret.append(mod)
        # BUG
        # x=mod
        # FIX
        x=div
    return ret

def is_palindrome(x):
    dig=get_digit(x)
    for f,r in zip(dig,reversed(dig)):
        if f!=r:
            return False
    return True

class TestPalindrome(unittest.TestCase):
    def test_negative(self):
        self.assertFalse(is_palindrome(1234))

    def test_positve_odd(self):
        self.assertTrue(is_palindrome(532141235))

    def test_positve_even(self):
        self.assertTrue(is_palindrome(53211235))

    def test_single_digit(self):
        for i in range(10):
            self.assertTrue(is_palindrome(i))

if __name__ == "__main__":
    unittest.main()
