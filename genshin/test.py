"""
获取原神角色信息
"""

import json
import time
from _md5 import md5
from random import random

import requests

"""
def get_role_info(role_id):
    url = 'https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie?game_biz=hk4e_cn'
"""
url = "https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie?game_biz=hk4e_cn"
cookie = "_MHYUUID=3136c59b-4735-47ac-a42c-b04d46b0fc3f; _ga=GA1.2.2000623668.1644837098; _gid=GA1.2.796799580.1644837098; account_id=287164905; cookie_token=hMRAfVRksDPq12cfsJaOsZ5CynfcZd5OQQBl9mCm; login_ticket=htpHO1x2NLk1nUjwNa8uArz5mQvEtb9rXzKwTKLB; ltoken=NErn0BnDaWuXGL11ccMJCNAlha05y31Iwid8Kd4P; ltuid=287164905; _gat=1; aliyungf_tc=8a95ea8c96a8b28d611afb634cedb098ee35084a66242269ac627835d76716c3"
urls = "https://api-takumi.mihoyo.com/game_record/app/genshin/api/dailyNote"

hearders = {
    "User-Agent": "Mozilla/5.0 (iPad; CPU OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) miHoYoBBS/2.21.2",
    "Cookie": cookie
}

r = requests.get(url=url, headers=hearders)
print(r.text)
all_data = json.loads(r.text)

readable_file = 'data/test.json'
with open(readable_file, 'w', encoding='utf-8') as f:
    json.dump(all_data, f, ensure_ascii=False, indent=4)

with open(readable_file, 'r', encoding='utf-8') as f:
    data = json.load(f)
    dice_list = data['data']['list']
    print(dice_list)
region = dice_list[0]['region']
print(region)
game_uid = dice_list[0]['game_uid']
print(game_uid)
params = dict(server=region, role_id=game_uid)

urls = "https://api-takumi.mihoyo.com/game_record/app/genshin/api/dailyNote?role_id=" + game_uid + "&server=" + region
print(urls)
times = str(int(time.time()))
times = str(1645071696)
randoms = str(int((random() + 1) * 100000))
print(randoms)
randoms = str(194160)
check = md5(
    ("salt=xV8v4Qu54lUKrEYFZkJhB8cuOh9Asafs&t=" + times + "&r=" + randoms + "&b=&q=" + urls.split("?")[1]).encode(
        "utf-8"))
print(check.hexdigest())
ds = times + "," + randoms + "," + check.hexdigest()
print(ds)
hearders = {
    #    "Host": "api-takumi.mihoyo.com",
    "x-rpc-client_type": "5",  # 重要
    #    "Accept-Encoding": "gzip, deflate, br",
    #    "Accept-Language": "zh-CN,zh-Hans;q=0.9",
    #    "Accept": "application/json, text/plain, */*",
    #    "Origin": "https://webstatic.mihoyo.com",
    "User-Agent": "Mozilla/5.0 (iPad; CPU OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) miHoYoBBS/2.21.2",
    #    "Connection": "keep-alive",
    "x-rpc-app_version": "2.21.2",  # 重要
    #    "Referer": "https://webstatic.mihoyo.com/",
    "Cookie": "_MHYUUID=3136c59b-4735-47ac-a42c-b04d46b0fc3f; _ga=GA1.2.2000623668.1644837098; _gid=GA1.2.796799580.1644837098; account_id=287164905; cookie_token=hMRAfVRksDPq12cfsJaOsZ5CynfcZd5OQQBl9mCm; login_ticket=htpHO1x2NLk1nUjwNa8uArz5mQvEtb9rXzKwTKLB; ltoken=NErn0BnDaWuXGL11ccMJCNAlha05y31Iwid8Kd4P; ltuid=287164905; _gat=1; aliyungf_tc=8a95ea8c96a8b28d611afb634cedb098ee35084a66242269ac627835d76716c3",
    "DS": ds  # 重要
}

rs = requests.get(url=urls, headers=hearders)
print(rs.text)
all_datas = json.loads(rs.text)
with open('data/test2.json', 'w', encoding='utf-8') as f:
    json.dump(all_datas, f, ensure_ascii=False, indent=4)
