#!/usr/bin/python3.8
import dis
import marshal

# Function to extract names from the disassembled code


def extract_names(code):
    names = set()
    for instruction in code:
        if "argval" in instruction.argrepr:
            name = instruction.argrepr.split()[1]
            if not name.startswith("__"):
                names.add(name)
    return names


# Read the compiled module
with open("hidden_4.pyc", "rb") as f:
    magic = f.read(4)
    timestamp = f.read(4)
    code = marshal.load(f)

# Disassemble the code and extract names
instructions = dis.get_instructions(code)
names = extract_names(instructions)

# Print names in alphabetical order
for name in sorted(names):
    print(name)
