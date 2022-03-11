# -*- coding: utf-8 -*-
# @Time : 2022/3/4 10:32
# @Author : thz
# @Site : 
# @File : dir.py
# @Software: PyCharm
import os
import shutil

filePath = 'F:\\Git\\tppc\\imgs'
lis = []
for dirpath, dirnames, filenames in os.walk(filePath):
    for filename in filenames:
        name = os.path.join(dirpath, filename)
        lis.append(os.path.join(dirpath, filename))
print(lis)

for i in lis:
    shutil.copy(i, 'F:\\Git\\tppc\\imgs\\imgs')