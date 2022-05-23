import os
import re
import sys

raw_in_path = sys.argv[1]
f_out_path = sys.argv[2]

if os.path.exists(f_out_path):
    os.remove(f_out_path)

f_out = open(f_out_path, 'w')

with open(raw_in_path) as f_in:
    for line in f_in:
        line = line.replace('\t', ' ')
        split_words = line.split(' ')
        if split_words[0] == 'user' or split_words[0] == 'sys':
            formatted_timestring = re.sub(r'^.*?m', 'm', split_words[1])\
                .replace('m', '')\
                .replace('s', '')\
                .replace(',', '')
            line = split_words[0] + ' ' + formatted_timestring
        f_out.write(line)

f_out.close()
os.remove(raw_in_path)

