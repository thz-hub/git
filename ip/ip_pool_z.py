# -*- coding: utf-8 -*-
# @Time : 2022/3/3 23:55
# @Author : thz
# @Site : 
# @File : ip_pool_z.py
# @Software: PyCharm
import concurrent

import requests
import re
import parsel
from concurrent.futures import ThreadPoolExecutor

url = 'https://www.89ip.cn/tqdl.html?num=6000&address=&kill_address=&port=&kill_port=&isp='


lis = []
lis_1 = []
lis_n = []

hearders = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56'
}


def main():
    ips = get_html(url)
    with ThreadPoolExecutor(max_workers=128) as pool:
        lis_z = [pool.submit(ip_have, hearders, ip) for ip in ips]
        for i in concurrent.futures.as_completed(lis_z):
            data = i.result()
            lis_n.extend(data)
    print(len(lis_n))
    print(lis_n)
    with open('ip_pool_z.txt', 'w', encoding='utf-8') as f:
        f.write(str(lis_n))


def get_html(url):
    response = requests.get(url)
    # print(response.text)
    selectors = parsel.Selector(response.text)
    ips = selectors.css('.fly-panel div::text').getall()[1:4200]
    return ips




def ip_have(hearders, ip):


    # print(ip_port)
    ip_http = 'http://' + ip
    ip_https = 'https://' + ip
    proxies_dict = {
        'http': ip_http,
        'https': ip_https
    }
    # print(proxies_dict)
    lis.append(proxies_dict)
    try:
        requests.DEFAULT_RETRIES = 5
        response_1 = requests.get('https://www.baidu.com/', headers=hearders, proxies=proxies_dict,
                                  timeout=1)

        if response_1 == 200:
            lis_1.append(proxies_dict)
            print('ok', proxies_dict)

    except:
        print('error', proxies_dict)
    return lis_1


if __name__ == '__main__':
    main()

