#!/usr/bin/python3
import sys

argv = sys.argv[1:]
length = len(argv)

print("{:d} argument{}{}.".format(
    length,
    's' if length != 1 else '',
    ':' if length != 0 else '.'
))

for i, arg in enumerate(argv, start=1):
    print("{:d}: {}".format(i, arg))
