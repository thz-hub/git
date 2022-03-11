# -*- coding: utf-8 -*-
# @Time : 2022/3/10 16:32
# @Author : thz
# @Site : 
# @File : run.py
# @Software: PyCharm
# import threading
from concurrent.futures import ThreadPoolExecutor
import novel

import novel

d = []
for i in range(1000, 62000, 1000):
    a = i - 1000 + 1
    b = i
    c = [a, b]
    d.append(c)
print(d)
print(len(d))


def main():
    # for h in range(1, 61, 10):
    #     t = threading.Thread(target=run_run, args=(h,))
    #     t.setDaemon(False)
    #     t.start()

    h = int(input("请输入线程：1~61："))

    run(h)


def run_run(h):
    # with ThreadPoolExecutor(max_workers=10) as pool:
    #     [pool.submit(run, k) for k in range(h, h+10)]
    for k in range(h, h + 10):
        run(k)


def run(r):

    n = int(d[r - 1][0])
    m = int(d[r - 1][1])
    print(n, m)
    novel.run(n, m)


if __name__ == '__main__':
    main()
