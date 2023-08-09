#!/usr/bin/env python3
def uppercase(str):
    for char in str:
        print("{:c}".format(ord(char) - 32 * ('a' <= char <= 'z')), end='')
    print()
