#!/bin/bash
# Displays the byte size of the body of HTTP response header for a given URL.
curl -s "$1" | wc -c
