# -*- coding = utf-8 -*-
import concurrent

import requests
import parsel
import xlwt
from tqdm import tqdm
from concurrent.futures import ThreadPoolExecutor


def main():
    url = "https://www.gongkaoleida.com/user/2-2?page="
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
        "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="

    }
    hrefs = tqdm(get_html(url, headers))

    date = get_html_2(headers, hrefs)

    date = do_data(date)

    save_excel(date)


def get_html(url, headers):
    hrefs = []
    pool = ThreadPoolExecutor(max_workers=16)

    for i in range(1, 29):
        request = requests.get(url + str(i), headers=headers)

        selector = parsel.Selector(request.text)
        href = selector.css('.precise-job-info a::attr(href)').getall()
        # request = requests.get(urls, headers=headers)
        # href = pool.map(do_html, headers, url + str(i))

        hrefs.extend(href)

    return hrefs

    # return hrefs

    # print(href)
    # print(titles)
    # print(len(hrefs))
    # print(len(titles))


def get_html_2(headers, hrefs):
    date = []
    with ThreadPoolExecutor(max_workers=16) as pool:
        # for item in pool.map(do_html_2, i, headers):
        #     print(item)
        #     date.append(item)

        item = [pool.submit(do_html_2, i) for i in hrefs]
        for item in concurrent.futures.as_completed(item):
            item = item.result()
            date.append(item)

    dates = date[:441]

    return dates


def do_html_2(i):
    item = []
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
        "Cookie": "areaIds=3510,1117; XSRF-TOKEN=eyJpdiI6IjYrTUc5Z3kxQ2hVZ1VhKzdjM1ZvRUE9PSIsInZhbHVlIjoiVUVwb3ZFR2dpNDBpbDBrTVd4OFp3WXhMOXZNZkNIUHVyVDZjQURyelJOYU5MUWNQaHVrVWxtK3VyK1RtamZnMWgxYXN0aHNOcmYxS0lFWko0N01ubWc9PSIsIm1hYyI6IjkxZGQ3NjNkODc5NjE4Zjc0ZjYxMzczNTFiYTMyYjE5OWYzZGNhNjllM2IwNWQ0ZmIyMDlmYzJlMWEyZGRkZDkifQ==; gkld_session=eyJpdiI6InhuUVhuRDdrN0hGeTFqMGMwK1YyclE9PSIsInZhbHVlIjoiZWpYOFM1a1JkSzdtRDR2dVhvZERkdVNUM2tldzNDY1BjM1lVWmc1YTMySXRaSnBMM0w2NGZNcDByXC9XQk51OXdXSnRoK1lmSmg4Y1VkNExHUnk2d1RRPT0iLCJtYWMiOiI3NTI1OTU4MDY0MzhkOGE5MmYxMjUyMDE1NjQzY2M5NDljOGUwNjg1NzE1ZjBjMTM4YzA4YTcwYWE1MGMwZGU3In0="

    }

    request = requests.get(i, headers=headers)
    # print(request.text)
    selector = parsel.Selector(request.text)

    tit = selector.css('h5::text').getall()[:1]
    pre = selector.css('h5 i::text').getall()[:1]
    ade = selector.css('.notice-table a::text').getall()[:1]
    star = selector.css('.notice-matching span ::attr(class)').getall()[:1]
    city = selector.css('.notice-table td::text').getall()[1:2]
    city1 = city[0].split(' ')[76:77]
    city2 = city1[0].split('\n')[:1]
    ct = city2[0].split('??????')[1:2]
    ct = str(ct)
    # ?????????????????????????????????
    ct1 = str(ct[2:4])
    ct2 = [0]
    ct2[0] = ct1[0] + ct1[-1]
    star = star[0].split(' ')[2]
    star = star.split('r')[1]
    star = int(star) / 10
    star = [star]
    item.extend(tit)
    item.extend(star)
    item.extend(pre)
    item.extend(ade)
    item.extend([i])
    item.extend(city2)
    item.extend(ct2)
    # print(item)

    return item


def save_excel(date):
    wb = xlwt.Workbook(encoding='utf-8')
    sheet = wb.add_sheet('?????????')
    for i in range(len(date)):
        sheet.write(i + 1, 0, i + 1)
        #        sheet.write(i + 1, 1, date[i][0])
        sheet.write(i + 1, 2, date[i][1])
        sheet.write(i + 1, 3, date[i][2])
        sheet.write(i + 1, 4, date[i][3])
        sheet.write(i + 1, 5, date[i][-2])
        sheet.write(i + 1, 1, xlwt.Formula(f'HYPERLINK("{date[i][4]}";"{date[i][0]}")'))
    sheet.write(0, 0, "??????")
    sheet.write(0, 1, "????????????")
    sheet.write(0, 2, "?????????")
    sheet.write(0, 3, "????????????")
    sheet.write(0, 4, "????????????")
    sheet.write(0, 5, "??????")
    #    sheet.write(0, 5, "????????????")

    wb.save('gwy.xls')


# ???????????????????????????????????????????????????
def do_data(data):
    datas = []
    for i in range(len(data)):
        if data[i][0] == '????????????' or data[i][0] == '????????????' or data[i][0] == '?????????' or data[i][0] == '??????' or data[i][
            0] == '????????????2' or data[i][0] == '????????????2' or data[i][0] == '????????????3' or data[i][0] == '????????????4' or data[i][
            0] == '????????????5' or data[i][0] == '????????????6' or data[i][0] == '????????????7':
            continue
        else:
            if data[i][-1] != '??????' and data[i][-1] != '??????' and data[i][-1] != '??????' and data[i][-1] != "']":

                continue
            else:

                datas.append(data[i])
    # for i in range(len(data)):
    #     print(data[i])

    return datas


# ??????????????????
# for i in range(len(data)):
#     for j in range(len(data[i])):


if __name__ == '__main__':
    main()

#
# selector = parsel.Selector(requests.text)
# href = selector.css('.precise-job-info a::attr(href)').getall()
# title = selector.css('.precise-job-info h5::text').getall()
# for i in href:
#     print(i)
