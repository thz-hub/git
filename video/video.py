# -*- coding: utf-8 -*-
# @Time : 2022/3/10 10:16
# @Author : thz
# @Site : 
# @File : video.py
# @Software: PyCharm
import re

from concurrent.futures import ThreadPoolExecutor

import requests
from Crypto.Cipher import AES

key = b'a004a1a0ae9d88c9'
cryptor = AES.new(key, AES.MODE_CBC)

url = 'https://www.imeiju.pro/ckplayerx/m3u8.php'
data = {
    'url': 'https://meiju4.stboda.com/20181209/YtodIziy/index.m3u8',
    'f': 'ck_m3u8'
}
# url = 'https://www.imeiju.pro/ckplayerx/m3u8.php?url=https://meiju4.stboda.com/20181209/YtodIziy/index.m3u8&f=ck_m3u8'
cookies = 'PHPSESSID=ml62dctsu1rj0i0siiun1am001; HISTORY={video:[{"name":"\u7EB8\u724C\u5C4B\u7B2C\u4E09\u5B63","link":"http://https://www.imeiju.pro/Meiju/M2902.html","pic":"https://tu.511.la/uploads/20210915/4443b75ee1087ffb.jpg"},{"name":"\u5929\u9ED1\u8BF7\u56DE\u5BB6\u7B2C\u4E8C\u5B63","link":"http://https://www.imeiju.pro/Meiju/M7488.html","pic":"https://tu.511.la/uploads/20210915/b804f0ef008a4c57.jpg"}]}'

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.36',
    'Cookie': cookies.encode('utf-8').decode("latin1"),
    'Referer': 'https://www.imeiju.pro/js/player/baiduyun.html'

}

response = requests.get(url, params=data, headers=headers)

# print(response)
print(response.text)

m3u8_url = re.findall("url: '(.*?)'", response.text)[0]
# print(m3u8_url)

m3u8 = requests.get(m3u8_url, headers=headers).text
print(m3u8)

m3u8_data = re.sub('#.*', '', m3u8).split()


def get_js(link):
    global response
    print(link)
    response = requests.get(link, headers=headers).content
    a = cryptor.encrypt(response)
    return [link, response]


datas = {}
with ThreadPoolExecutor(max_workers=128) as pool:
    data = [pool.submit(get_js, link) for link in m3u8_data]
    for i in data:
        print(i.result()[0])

        datas[f'{i.result()[0]}'] = i.result()[1]

    # for link in m3u8_data:
    #     data = pool.submit(get_js, link)
    #     datas[f'{link}'] = data.result()
    #     print(link)

# print(m3u8_data)

with open('test.mp4', 'ab') as f:
    for link in m3u8_data:
        f.write(datas[f'{link}'])
