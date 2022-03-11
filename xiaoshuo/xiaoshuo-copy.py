# -*- coding: utf-8 -*-
# @Time : 2022/3/6 11:57
# @Author : thz
# @Site : 
# @File : xiaoshuo.py
# @Software: PyCharm
import os
import shutil
from time import sleep

import requests
import parsel
from concurrent.futures import ThreadPoolExecutor
import concurrent
from tqdm import tqdm


def get_url(url, headers):
    response = requests.get(url, headers=headers)
    # print(response.text)
    selectors = parsel.Selector(response.text)
    novel_name = selectors.css('#info h1::text').get()
    href = selectors.css('#list dd a::attr(href)').getall()
    return novel_name, href
    # print(novel_name)
    # print(href)


def get_title(href, headers):
    title_list = []
    for link in href:
        link_url = 'http://www.biqugee.com' + link
        response_1 = requests.get(link_url, headers=headers)
        # print(response.text)
        selectors_1 = parsel.Selector(response_1.text)
        title = selectors_1.css('.bookname h1::text').get()
        # print(title)
        title_list.append(title)
    return title_list


def get_content(novel_name, href, headers):
    if not os.path.exists('F:/Git/xiaoshuo/novel/'):
        os.mkdir('F:/Git/xiaoshuo/novel/')
    title_list = []
    content_list = []
    with ThreadPoolExecutor(max_workers=128) as pool:
        a = [pool.submit(get_text, link, novel_name, headers) for link in href]
        # for b in concurrent.futures.as_completed(a):
        #     # print(b.result())
        #     title = b.result()[0]
        #     content = b.result()[1]
        #
        #     title_list.append(title)
        #
        #     content_list.append(content)
    return title_list, content_list
    # return title_list
    # for link in tqdm(href):
    #     pool.submit(get_text, link, novel_name, headers)


def get_text(link, novel_name, headers):
    link_url = 'http://www.biqugee.com' + link
    response_1 = requests.get(link_url, headers=headers)
    # print(response.text)
    selectors_1 = parsel.Selector(response_1.text)
    title = selectors_1.css('.bookname h1::text').get()
    content_list = selectors_1.css('#content::text').getall()
    content = '\n'.join(content_list)
    # return [title, content]
    # print(title)
    # print(content)
    # print(content)

    if not os.path.exists('F:/Git/xiaoshuo/' + novel_name):
        os.mkdir('F:/Git/xiaoshuo/' + novel_name)
        print('创建' + novel_name + '文件夹成功')
    with open('F:/Git/xiaoshuo/' + novel_name + '/' + title + '.txt', 'a', encoding='utf-8') as f:
        f.write(title + '\n')
        f.write('\n')
        f.write(content + '\n')

    # print('爬取成功', title)


def save_text(novel_name, title_list):
    with open('F:/Git/xiaoshuo/novel/' + novel_name + '.txt', 'a', encoding='utf-8') as f:
        # for title, content in zip(title_list, content_list):
        #     f.write(title + '\n')
        #     f.write('\n')
        #     f.write(content + '\n')
        for title in tqdm(title_list):
            # for line in open('F:/Git/xiaoshuo/' + novel_name + '/' + title + '.txt'):
            #     f.writelines(line)
            with open('F:/Git/xiaoshuo/' + novel_name + '/' + title + '.txt', 'r') as f1:
                f.write(f1.read())
    f.close()

    print('保存' + novel_name + '成功')
    sleep(10)
    shutil.rmtree('F:/Git/xiaoshuo/' + novel_name)
