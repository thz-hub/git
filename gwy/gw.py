# -*- coding = utf-8 -*-
import concurrent

from dataclasses import replace
from xlutils.copy import copy
import requests
import parsel
import xlrd
import xlwt
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor


def main(pi):
    url = "http://www.apta.gov.cn/Officer_PositionView?examid=324&&&type=&pcode="
    params = {
        'pi': pi
    }
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
        "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="

    }
    html = requests.get(url, headers=headers, params=params)
    # print(html.text)
    print(html.url)
    print('第' + str(pi) + '页')
    return html
    # return hrefs

    # print(href)
    # print(titles)
    # print(len(hrefs))
    # print(len(titles))


def do_html(html, m):
    # item = []
    # headers = {
    #     "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
    #     "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="
    #
    # }

    selector = parsel.Selector(html.text)

    cs = selector.css('table td::text').getall()[m + 66:66 + m + 18]
    cs2 = []
    for i in cs:
        n = i.replace('\r\n', '').replace(' ', '')
        cs2.append(n)

    # print(cs2)
    return cs2
    # tit = selector.css('h5::text').getall()[:1]
    # pre = selector.css('h5 i::text').getall()[:1]
    # ade = selector.css('.notice-table a::text').getall()[:1]
    # star = selector.css('.notice-matching span ::attr(class)').getall()[:1]
    # city = selector.css('.notice-table td::text').getall()[1:2]
    # city1 = city[0].split(' ')[76:77]
    # city2 = city1[0].split('\n')[:1]
    # ct = city2[0].split('安徽')[1:2]
    # ct = str(ct)
    # # 取字符串中的前两个字符
    # ct1 = str(ct[2:4])
    # ct2 = [0]
    # ct2[0] = ct1[0] + ct1[-1]
    # star = star[0].split(' ')[2]
    # star = star.split('r')[1]
    # star = int(star) / 10
    # star = [star]
    # item.extend(tit)
    # item.extend(star)
    # item.extend(pre)
    # item.extend(ade)
    # item.extend([i])
    # item.extend(city2)
    # item.extend(ct2)
    # # print(item)
    #
    # return item


def do_html_2(html):
    cs2 = []
    for i in range(0, 15):
        cs = do_html(html, i * 18)
        cs2.append(cs)
    # print(cs2)
    return cs2


def write(cs2):
    for i in cs2:
        # print(i)
        write2(i[0], 0)
        write2(i[1], 1)
        write2(i[2], 2)
        write2(i[3], 3)
        write2(i[4], 4)
        write2(i[5], 5)
        write2(i[6], 6)
        write2(i[7], 7)
        write2(i[8], 8)
        write2(i[9], 9)
        write2(i[10], 10)
        write2(i[11], 11)
        write2(i[12], 12)
        write2(i[13], 13)
        write2(i[14], 14)
        write2(i[15], 15)
        write2(i[16], 16)
        write2(i[17], 17)


def write2(text, n):
    # wb = xlwt.Workbook(encoding='utf-8')
    # sheet = wb.add_sheet('公务员')
    # wb.save('gw.xls')
    # for i in range(len(cs2)):
    #     for n in range(len(i)):
    filename = r'gw.xls'
    workbook = xlrd.open_workbook(filename, formatting_info=True)
    sheet = workbook.sheet_by_index(0)
    rowNum = sheet.nrows
    colNum = sheet.ncols
    newbook = copy(workbook)
    newsheet = newbook.get_sheet(0)
    # 在末尾增加新行
    str = text
    if n == 0:
        newsheet.write(rowNum, n, str)
    else:
        # print(rowNum - 1)
        newsheet.write(rowNum - 1, n, str)
    # 覆盖保存
    newbook.save(filename)

    # sheet.write(n + 1, 0, n + 1)
    # #        sheet.write(i + 1, 1, date[i][0])
    # sheet.write(n + 1, 2, date[i][1])
    # sheet.write(n + 1, 3, date[i][2])
    # sheet.write(n + 1, 4, date[i][3])
    # sheet.write(n + 1, 5, date[i][-2])
    # sheet.write(n + 1, 1, xlwt.Formula(f'HYPERLINK("{date[i][4]}";"{date[i][0]}")'))


def all_html():
    for i in range(1, 233):
        write(do_html_2(main(i)))



all_html()
# sheet.write(i + 1, 1, date[i][0])
# sheet.write(0, 0, "序号")
# sheet.write(0, 1, "职位名称")
# sheet.write(0, 2, "匹配度")
# sheet.write(0, 3, "招收人数")
# sheet.write(0, 4, "工作地点")
# sheet.write(0, 5, "城市")
#    sheet.write(0, 5, "职位链接")

# wb.save('gw.xls')

# do_html_2(main())
# write(do_html_2(main()))

# 遍历列表行列
# for i in range(len(data)):
#     for j in range(len(data[i])):

#
# if __name__ == '__main__':
#     main()

#
# selector = parsel.Selector(requests.text)
# href = selector.css('.precise-job-info a::attr(href)').getall()
# title = selector.css('.precise-job-info h5::text').getall()
# for i in href:
#     print(i)
