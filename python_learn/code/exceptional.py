"""Module to demonstrate exception"""
from math import log
import sys
def string_log(x):
    y=convert(x)
    return log(y)

def convert(x):
    """Convert to integer"""
    y = -1
    try:
        y = int(x)
    except (ValueError,TypeError) as e:
        print("Exception Type {}".format(str(e)),file=sys.stderr)
        raise
    return y
