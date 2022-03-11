# -*- coding: utf-8 -*-
# @Time : 2022/3/7 16:37
# @Author : thz
# @Site : 
# @File : text.py
# @Software: PyCharm

import requests

response = requests.get('https://api.gofile.io/getServer')
print(response.text)
