# -*- coding: utf-8 -*-
# @Time : 2022/3/6 13:24
# @Author : thz
# @Site : 
# @File : main.py
# @Software: PyCharm
import os

import xiaoshuo
from concurrent.futures import ThreadPoolExecutor
import concurrent
from tqdm import tqdm

url_base = 'https://www.biqugee.com/book/'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'
}

# url = 'https://www.biqugee.com/book/56699/'


# novel_name, href = xiaoshuo.get_url(url, headers)
# title_list, content_list = xiaoshuo.get_content(novel_name, href, headers)
#
# xiaoshuo.save_text(novel_name, title_list, content_list)


def get_book(url, header):

    novel_name, href = xiaoshuo.get_url(url, header)
    title_list, content_list = xiaoshuo.get_content(novel_name, href, header)
    xiaoshuo.save_text(novel_name, title_list, content_list)


def main():
    if not os.path.exists('F:/Git/xiaoshuo/novel/'):
        os.mkdir('F:/Git/xiaoshuo/novel/')
    with ThreadPoolExecutor(max_workers=32) as pool:
        print('开始下载')
        # [pool.submit(get_book, url_base + str(i) + '/', headers) for i in tqdm(range(1, 59998))]
        # [pool.submit(get_book, url_base + str(i) + '/', headers) for i in range(56698, 56702)]
        for i in tqdm(range(1, 59998)):
            print('开始下载', i)
            url = url_base + str(i) + '/'
            print(url)
            pool.submit(get_book, url, headers)


# def main():
#     # with ThreadPoolExecutor(max_workers=1) as pool:
#     #     # book = [pool.submit(get_book, url_base + str(i)) for i in range(1, 59998)]
#     #     book = [pool.submit(get_book, url_base + str(i) + '/') for i in range(56698, 56699)]
#     #     for i in concurrent.futures.as_completed(book):
#     #         print('已完成', i.result())
#     # for i in range(1, 59998):
#     for i in range(56698, 56699):
#         get_book(url_base + str(i) + '/')
#         novel_name = get_book(url_base + str(i) + '/')
#         print('已完成', novel_name)
#
#
# def get_book(url):
#     novel_name, href = xiaoshuo.get_url(url, headers)
#     xiaoshuo.get_content(novel_name, href)
#     title_list = xiaoshuo.get_title(href, headers)
#     xiaoshuo.save_text(novel_name, title_list, headers)
#     return novel_name
#
#
if __name__ == '__main__':
    main()
