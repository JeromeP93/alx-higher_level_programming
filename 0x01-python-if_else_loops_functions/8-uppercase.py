def uppercase(str):
    for char in str:
        offset = 32 if 'a' <= char <= 'z' else 0
        print("{}".format(chr(ord(char) - offset)), end='')
    print()
