import re

text = "Copy media (Video)"
matches = re.findall(r'\((.*?)\)', text)

for match in matches:
    print(match)
