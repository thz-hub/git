# -*- coding = utf-8 -*-
import concurrent

from dataclasses import replace

from lxml import etree
from xlutils.copy import copy
import requests
import parsel
import xlrd
import xlwt
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor


def main(pi):
    url = "http://www.apta.gov.cn/Officer_PositionView?examid=324&&&type=&pcode="

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
        "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="

    }
    num = []
    for i in range(1, pi + 1):
        params = {
            'pi': i
        }
        html = requests.get(url, headers=headers, params=params)
        print(html.url)
        num1 = do_html(html)
        # print(num1)
        num.extend(num1)
        print('第' + str(i) + '页')
    # print(num)
    return num

    # return hrefs

    # print(href)
    # print(titles)
    # print(len(hrefs))
    # print(len(titles))


def do_html(html):
    # item = []
    # headers = {
    #     "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
    #     "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="
    #
    # }

    #     selector = parsel.Selector(html.text)
    #
    #     cs = selector.css('html body table  tr td[3]::text').getall()[0:]
    #     print(cs)
    # /html/body/table/tr/td/table/tr[3]/td/table/tr[2]/td[1]/text()
    html_text = html.text
    # print(html_text)
    tree = etree.HTML(html_text)
    num = []
    num_len = tree.xpath('/html/body/table/tr/td/table/tr[3]/td/table/tr')
    num_len = len(num_len)
    for i in range(2, num_len + 1):
        x = "/html/body/table/tr/td/table/tr[3]/td/table/tr[" + str(i) + "]/td/text()"
        num1 = tree.xpath(x)
        num2 = [x.strip() for x in num1]
        num.append(num2)
    # print(num)
    return num

    # print(html.text)


def write2(num):
    f = xlwt.Workbook('encoding = utf-8')
    sheet1 = f.add_sheet('公务员', cell_overwrite_ok=True)
    print('开始存储')
    for i in range(len(num)):
        print(i)
        for n in range(len(num[i])):
            sheet1.write(i, n, num[i][n])
    f.save('gwy3.xls')


# do_con(main(1), 2)
write2(main(233))
