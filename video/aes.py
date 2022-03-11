# -*- coding: utf-8 -*-
# @Time : 2022/3/10 12:15
# @Author : thz
# @Site : 
# @File : aes.py
# @Software: PyCharm

import hexdump as hexdump

from Crypto.Cipher import AES

key = b'a004a1a0ae9d88c9'
# key转化为ASCII码
keys = hexdump.dump(key)

print(keys)

cryptor = AES.new(keys, AES.MODE_CBC)

with open('test.mp4', 'rb') as f:
    with open('videos.mp4', 'wb') as f1:
        f1.write(cryptor.encrypt(f.read()))
