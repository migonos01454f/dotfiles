import sys
import re

input = str(sys.stdin.readline()).strip()
x = re.search("(\d+)(?!.*\d)", input)
sys.stdout.write(str(x.group()))

