# clear all vanilla recipes

import os

for filename in os.scandir():
    if filename.is_file() and filename.path != '.\clear.py':
        print(filename.path)