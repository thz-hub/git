# -*- coding: utf-8 -*-
# @Time : 2022/3/7 14:52
# @Author : thz
# @Site : 
# @File : upload.py
# @Software: PyCharm

import requests


# response = requests.get('https://api.gofile.io/getServer')
# print(response.text)
# def main():
#     upload_file('F:/Git/xiaoshuo/novel/大荒扶妻人.txt')


def upload_file(file_path):
    print(file_path)
    url = 'https://store2.gofile.io/uploadFile'
    folderId = 'c3cd8dfb-76b3-451d-b888-9d354ecf2fef'
    files = {'file': open(file_path, 'rb')}
    token = 'e8ito5i9uPR29PmX6xoGin9VuByPtIIP'
    # headers = {
    #     'token': token,
    #
    # }
    data = {
        'token': token,
        'folderId': folderId,
    }

    response = requests.post(url, files=files, data=data)
    # print(response.text)
    return True
