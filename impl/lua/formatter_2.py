import os
import sys

raw_in_path = sys.argv[1]
final_path = sys.argv[2]
lang_name = sys.argv[3]

if os.path.exists(final_path):
    os.remove(final_path)

f_out = open(final_path, 'w')

with open(raw_in_path) as f_in:
    all_lines = f_in.readlines()
    for i in range(len(all_lines)):
        first_word = all_lines[i].split(' ')[0]
        if first_word != 'user' and first_word != 'sys':
            f_out.write(
                    lang_name + ','
                    + all_lines[i].replace('\n', '').strip(' ')
                    + str(int(all_lines[i+1].split(' ')[1])
                        + int(all_lines[i+2].split(' ')[1]))
                    + '\n')


f_out.close()
os.remove(raw_in_path)
