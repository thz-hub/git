# -*- coding: utf-8 -*-
# @Time : 2022/3/3 22:24
# @Author : thz
# @Site : 
# @File : ip.py
# @Software: PyCharm

import concurrent
import requests
import parsel
import re
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor

lis = []
lis_1 = []
lis_n = []
base_url = 'https://www.kuaidaili.com/free/inha/1'
hearders = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56'
}


def main():
    with ThreadPoolExecutor(max_workers=16) as pool:
        lis_z = [pool.submit(ip_have, base_url + str(i), hearders) for i in range(1, 2)]
        for i in concurrent.futures.as_completed(lis_z):
            data = i.result()
            lis_n.extend(data)
    print(len(lis_n))
    print(lis_n)


def ip_have(url, hearder):
    response = requests.get(url, headers=hearder)
    data = response.text
    ip_list = re.findall(r'<td data-title="IP">(.*?)</td>', data)
    ip_port = re.findall(r'<td data-title="PORT">(.*?)</td>', data)
    print(ip_list)
    # print(ip_port)
    for ip, port in zip(ip_list, ip_port):
        print(ip, port)
        ip_http = 'http://' + ip + ':' + port
        ip_https = 'https://' + ip + ':' + port
        proxies_dict = {
            'http': ip_http,
            'https': ip_https
        }
        # print(proxies_dict)
        lis.append(proxies_dict)
        try:
            requests.DEFAULT_RETRIES = 5
            response_1 = requests.get('https://www.baidu.com/', headers=hearder, proxies=proxies_dict,
                                      timeout=0.5)

            if response_1 == 200:
                lis_1.append(proxies_dict)
                print('ok', proxies_dict)

        except:
            print('error', proxies_dict)
    return lis_1


if __name__ == '__main__':
    main()
# html_data = parsel.Selector(data)
# parse_list = html_data.xpath('//table[@class="table table-bordered table-striped"]/tbody/tr')
#
#
# proxies_list = []
# for tr in parse_list:
#     dict_proxies = {}
#     http_type = tr.xpath('./td[4]/text()').extract_first()
#     ip_num = tr.xpath('./td[1]/text()').extract_first()
#     ip_port = tr.xpath('./td[2]/text()').extract_first()
#     # print(http_type, ip_num, ip_port)
#
#     dict_proxies[http_type] = ip_num + ':' + ip_port
#     proxies_list.append(dict_proxies)
#
# print(len(proxies_list))
