# -*- coding: utf-8 -*-
# @Time : 2022/3/11 15:54
# @Author : thz
# @Site : 
# @File : biaoqing.py
# @Software: PyCharm
import requests
import parsel
import re
from concurrent.futures import ThreadPoolExecutor
import os
from tqdm import tqdm

url = 'https://www.fabiaoqing.com/biaoqing/lists/page/'


def main():
    if not os.path.exists('img'):
        os.mkdir('img')
    num = 200
    # num = int(input('请输入页数：'))
    dates = get_html(num)
    print(len(dates))
    with ThreadPoolExecutor(max_workers=32) as pool:
    #     #     for date in dates:
    #     #         tqdm(pool.submit(get_date, date))
        [pool.submit(get_date, date) for date in dates]
    # for date in dates:
    #     get_date(date)


def get_date(date):
    for title, img_url in date:
        try:
            img_name = img_url.split('.')[-1]
            title = re.sub(r'[/\?:*<>|]', '', title)
            img_content = requests.get(img_url).content
            with open('img\\' + title + '.' + img_name, 'wb') as f:
                f.write(img_content)

        except:
            print(title + '下载失败')
            continue


def get_html(num):
    dates = []
    for i in tqdm(range(1, num + 1)):
        dates.append(get_url(url + str(i) + 'html'))

    return dates


def get_url(url):
    dates = []
    response = requests.get(url)
    # print(response.text)
    selectors = parsel.Selector(response.text)
    title_list = selectors.css('.tagbqppdiv .image::attr(title)').getall()
    img_list = selectors.css('.tagbqppdiv .image::attr(data-original)').getall()
    for title, img_url in zip(title_list, img_list):
        data = [title, img_url]
        dates.append(data)

    return dates


if __name__ == '__main__':
    main()
