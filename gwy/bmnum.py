# -*- coding = utf-8 -*-
import concurrent

from dataclasses import replace

from lxml import etree
# from xlutils.copy import copy

from xlutils import copy
import requests
import parsel
import xlrd
import xlwt
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor


def main(d):
    url = "http://www.apta.gov.cn/Officer/Summary?examid=329&&type=&"

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
        "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="

    }
    num = []
    l = d[0]
    h = d[1]
    l_data = d[2]
    k = d[3]
    for i in range(1, l + 1):
        pi = l_data[i - 1]
        params = {
            'pcode': pi
        }
        try:
            html = requests.get(url, headers=headers, params=params)
            print(html.url)
            # print(html.text)
            num1 = do_html(html)
            # print(num1)

        except:
            num1 = '0'
            # print(num1)
        num.extend(num1)

    write2(l, h, num, k)

    # params = {
    #     'pcode': pi
    #    }
    # html = requests.get(url, headers=headers, params=params)
    # print(html.url)
    # #print(html.text)
    # num1 = do_html(html)
    #     # print(num1)
    # num.extend(num1)
    #    print('第' + str(i) + '页')
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
    # /html/body/table/tbody/tr/td/table/tr[2]/td/table/tbody/tr[4]/td[5]
    # num_len = tree.xpath('/html/body/table/tr/td/table/tr[3]/td/table/tr')
    # num_len = len(num_len)
    # print(num_len)
    # for i in range(2, num_len + 1):
    #     x = "/html/body/table/tr/td/table/tr[3]/td/table/tr[" + str(i) + "]/td/text()"
    #     num1 = tree.xpath(x)
    #     num2 = [x.strip() for x in num1]
    #     num.append(num2)
    # '/html/body/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[4]/td[5]'
    x = '/html/body/table/tr/td/table/tr[2]/td/table/tr[4]/td[5]/text()'
    num1 = tree.xpath(x)
    num2 = [x.strip() for x in num1]
    print(num2)
    num.append(num2)
    return num2

    # print(html.text)


def read(k):
    d = xlrd.open_workbook('gwy4-cp.xls')
    data = d.sheets()[k]
    l = data.nrows
    h = data.ncols
    print(l, h)
    l_data = data.col_values(0)
    # print(len(l_data))
    return ([l, h, l_data, k])


def write2(l, h, num, k):
    # f = xlwt.Workbook('encoding = utf-8')
    d = xlrd.open_workbook('gwy4-cp.xls', 'w+b')
    d2 = copy.copy(d)
    # sheet1 = f.add_sheet('公务员', cell_overwrite_ok=True)
    sheet1 = d2.get_sheet(k)
    print('开始存储')
    for i in range(len(num)):
        print(i)

        sheet1.write(i, h, num[i])
    d2.save('gwy4-cp.xls')


# do_con(main(1), 2)
# write2(main(327))
main(read(0))
# read()
