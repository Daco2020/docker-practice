import os
import sys

version = os.environ["version"]
arg = sys.argv[1]

print(f"hello {arg}, my version is {version}!")
