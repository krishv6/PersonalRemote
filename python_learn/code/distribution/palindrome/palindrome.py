#!/usr/bin/env python3
""" Module that checks if the number is palindrome"""

import unittest

def get_digit(x):
    """
    Function : get_digit 
    Gets the digits of number in list
    Arg 1: Number for which we need digits
    Ret  : List of digits in number 
    """
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
    """
    Function : is_palindrome 
    Checks if the given number is palindrome
    Arg 1: Number for which we need to check if palindrome
    Ret  :True for palindrome, false for non-palindrome
    """
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
