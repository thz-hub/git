# -*- coding: utf-8 -*-
# @Time : 2022/3/3 17:44
# @Author : thz
# @Site : 
# @File : tppc.py
# @Software: PyCharm

import requests
import re
import os
from concurrent.futures import ThreadPoolExecutor
import concurrent
import os
from tqdm import tqdm


def main():
    url = 'https://www.vmgirls.com/17081.html'
    url_s = []
    for i in range(9992, 17995):
        #    for i in range(15000, 16616):
        url = 'https://www.vmgirls.com/' + str(i) + '.html'
        url_s.append(url)

    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56',
        'Cookie': 'OptanonConsent=isGpcEnabled=0&datestamp=Thu+Mar+03+2022+18%3A38%3A13+GMT%2B0800+(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)&version=6.25.0&isIABGlobal=false&hosts=&consentId=fb176c42-5fed-457a-a69b-96e7e14a17b6&interactionCount=1&landingPath=https%3A%2F%2Fntp.msn.cn%2Fedge%2Fntp%3Flocale%3Dzh-CN%26title%3D%25E6%2596%25B0%25E5%25BB%25BA%25E6%25A0%2587%25E7%25AD%25BE%25E9%25A1%25B5%26dsp%3D0%26sp%3D%25E7%2599%25BE%25E5%25BA%25A6%26prerender%3D1&groups=C0001%3A1%2CC0002%3A0%2CC0004%3A0%2CC0008%3A0%2CSTACK42%3A0'

    }
    get_html(url_s, headers)


def get_html(url_s, headers):
    image = []
    with ThreadPoolExecutor(max_workers=64) as pool:
        for url_a in tqdm(url_s):
            pool.submit(get_data, url_a, headers)
        # data = [pool.submit(get_data, url, headers) for url in url_s]
        # for future in concurrent.futures.as_completed(data):
        #     datas = future.result()


def get_data(url_a, headers):
    response = requests.get(url_a, headers=headers)
    # print(response)
    # print(response.text)
    html = response.text
    # print(response)

    try:
        dir_name = re.findall(r'"post-title mb-3">(.*?)</h1>', html)[-1]
        if not os.path.exists('F:/Git/tppc/imgs/' + dir_name):
            os.mkdir('F:/Git/tppc/imgs/' + dir_name)
        urls = []
        url_i = re.findall('<a href="(.*?)" alt=".*?" title=".*?">', html)
        for i in url_i:
            urlss = 'https:' + i
            urls.append(urlss)

        for i in urls:
            file_name = i.split('/')[-1]
            response = requests.get(url=i, headers=headers)
            with open('F:/Git/tppc/imgs/' + dir_name + "/" + file_name, 'wb') as f:
                f.write(response.content)
        print('下载完成', url_a)
    except:
        print('error', url_a)

        print()

    try:
        dir_name = re.findall(r'"post-title mb-3">(.*?)</h1>', html)[-1]
        dir = 'F:/Git/tppc/imgs/' + dir_name
        os.rmdir(dir)
        print(dir)
        print('删除完成', dir)
    except:
        dir_name = re.findall(r'"post-title mb-3">(.*?)</h1>', html)[-1]
        dir = 'F:/Git/tppc/imgs/' + dir_name
        print('完成', dir)


if __name__ == '__main__':
    main()
