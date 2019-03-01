#!/usr/bin/env python

import glob
import os

install_dir = os.path.dirname(os.path.abspath(__file__))

print("Re-writing shebangs with install dir:", install_dir)

# Remap shebangs to match the install dir
exe_files = []
exe_files.extend(glob.glob(install_dir + "/bin/*"))
exe_files.extend(glob.glob(install_dir + "/pyenv/versions/*/bin/*"))
exe_files.extend(glob.glob(install_dir + "/rez/bin/rez/*"))

for exe_file in exe_files:
    with open(exe_file, 'r') as infile:
        data = infile.readlines()
    
    shebang = data[0]
    if shebang.startswith('#!/build_output/'):
        shebang = shebang.replace('#!/build_output/', '#!' + install_dir + '/')
        data[0] = shebang
        with open(exe_file, 'w') as outfile:
            outfile.writelines(data)
