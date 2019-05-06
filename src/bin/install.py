#!/usr/bin/env python

import glob
import os
import stat

def main():
    install_dir = os.path.dirname(os.path.abspath(__file__))

    exe_files = _find_executable_files(install_dir)
    _re_write_shebangs(exe_files, install_dir)


def _find_executable_files(directory):
    exe_files = []
    for root, _, files in os.walk(directory):
        for file in files:
            full_path = os.path.join(root, file)

            s = os.stat(full_path)
            if s.st_mode & stat.S_IXOTH:
                exe_files.append(full_path)

    return exe_files


def _re_write_shebangs(files, install_dir):
    for file in files:
        if not os.path.isfile(file):
            continue

        with open(file, "r") as infile:
            data = infile.readlines()

        if not data:
            continue

        shebang = data[0]
        if shebang.startswith("#!") and "/apps/" in shebang:
            shebang_parts = shebang.split("/apps/", 1)
            new_shebang = "#!" + install_dir + "/apps/" + shebang_parts[1]
            
            if shebang != new_shebang:
                print("Re-writing shebang: ", file)
                data[0] = new_shebang
                with open(file, 'w') as outfile:
                    outfile.writelines(data)


if __name__ == '__main__':
    main()
