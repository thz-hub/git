# -*- coding: utf-8 -*-
# @Time : 2022/3/3 16:19
# @Author : thz
# @Site : 
# @File : txsp.py
# @Software: PyCharm

import requests
import json
import pprint
from tqdm import tqdm
import re

url = 'https://vd.l.qq.com/proxyhttp'
data = {"buid": "vinfoad",
        "adparam": "pf=in&ad_type=LD%7CKB%7CPVL&pf_ex=pc&url=https%3A%2F%2Fv.qq.com%2Fx%2Fcover%2Fm441e3rjq9kwpsc%2Fx0029mu5avs.html&refer=https%3A%2F%2Fv.qq.com%2Fx%2Fcover%2Fm441e3rjq9kwpsc.html&ty=web&plugin=1.0.0&v=3.5.57&coverid=m441e3rjq9kwpsc&vid=x0029mu5avs&pt=&flowid=a084b832cee788d5da32383113e69dec_10201&vptag=www_baidu_com%7Cvideolist%3Aclick&pu=0&chid=0&adaptor=2&dtype=1&live=0&resp_type=json&guid=d3358aab73e72d9f6e789d2e086fa680&req_type=1&from=0&appversion=1.0.173&platform=10201&tpid=3&rfid=d63eb48c5846fa25f36dac08fa19f687_1632790012",
        "vinfoparam": "spsrt=1&charge=0&defaultfmt=auto&otype=ojson&guid=d3358aab73e72d9f6e789d2e086fa680&flowid=a084b832cee788d5da32383113e69dec_10201&platform=10201&sdtfrom=v1010&defnpayver=1&appVer=3.5.57&host=v.qq.com&ehost=https%3A%2F%2Fv.qq.com%2Fx%2Fcover%2Fm441e3rjq9kwpsc%2Fx0029mu5avs.html&refer=v.qq.com&sphttps=1&tm=1646299440&spwm=4&logintoken=%7B%22main_login%22%3A%22%22%2C%22openid%22%3A%22%22%2C%22appid%22%3A%22%22%2C%22access_token%22%3A%22%22%2C%22vuserid%22%3A%22%22%2C%22vusession%22%3A%22%22%7D&vid=x0029mu5avs&defn=shd&fhdswitch=0&show1080p=1&isHLS=1&dtype=3&sphls=2&spgzip=1&dlver=2&drm=32&hdcp=1&spau=1&spaudio=15&defsrc=2&encryptVer=9.1&cKey=lyp9fGV1MWZ6KJEItZs_lpJX5WB4a2CdS8kHY1ZrVaqtHEZQ1c_W6myJ8hQVnmDDFJ1rTsSNKTvm2vPBr-xE-uhvZyEMY131vUh1H4pgCXe2Op9Lrzb_fbB32kFt6bl1q3w8EERWGIfMluNDEH6IC8EOljLQ2VfW2sTdospNPlD9535CNT9iSo3cLRH93ogtX_OJeYNVWrDYS8b5t1pjAAuGkoYGNScB_8lMah6WRCh6LOdnhMQa8Fs2tsDnNfrGyzmzBvHBnCsJhrZ4JUBeuGEk8zAOhE9HTZPNDViLRIyt2mNDud09qSLLKl4XAj2SQq-m4abSQC8y1OnJsHDXnGhI1kY1ZIC-KAUiBZH0DYDM52XUBbnU6k4y49CvV18BZ08BuQ&fp2p=1&spadseg=3"}

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56',
    # 'Cookie':'ptui_loginuin=2971307069; RK=bCJ8ccfasC; ptcz=61e22934a7baf34552be215ec3d6fdee3d5ab9faa9b86d02e76d1dd58d51ce52; pt_sms_phone=180******11; _qpsvr_localtk=0.8113650109071782; uin=o2971307069; tvfe_boss_uuid=0466235cb5164960; pgv_pvid=1444332148; pgv_info=ssid=s9768011302; o_cookie=2971307069; vversion_name=8.2.95; video_omgid=926b6221e60cadce; o_minduid=f0RKTKuDSDpPqJT1t74yWwJG0NEgAzkS; appuser=5DEAA282B1DFC91B; Lturn=120; LKBturn=662; LPVLturn=375; LPSJturn=959; LBSturn=941; LZCturn=849; LVINturn=768; LPHLSturn=231; LPCZCturn=408; LPDFturn=560; LZTturn=936; LPPBturn=472'
}

response = requests.post(url=url, json=data, headers=headers)
# print(response.text)
html_data = response.json()['vinfo']

m3u8_url1 = re.findall('url(.*?),', html_data)[3].split('"')[2]
m3u8_url2 = re.findall('url(.*?),', html_data)[4].split('"')[2]
m3u8_url3 = re.findall('url(.*?),', html_data)[5].split('"')[2]
m3u8_url = re.findall('url(.*?),', html_data)[6].split('"')[2]


def main():
    print(m3u8_url1)
    # download(m3u8_url1,1)
    print(m3u8_url2)
    # download(m3u8_url2,2)
    print(m3u8_url3)
    # download(m3u8_url3,3)
    print(m3u8_url)
    # download(m3u8_url,4)


def download(m3u8_url,i):
    m3u8_data = requests.get(url=m3u8_url).text
    m3u8_data = re.sub('#EXTM3U', '', m3u8_data)
    m3u8_data = re.sub('#EXT-X-MEDIA-SEQUENCE:\d', '', m3u8_data)
    m3u8_data = re.sub('#EXT-X-VERSION:\d', '', m3u8_data)
    m3u8_data = re.sub('#EXT-X-TARGETDURATION:\d+', '', m3u8_data)
    m3u8_data = re.sub('#EXT-X-PLAYLIST-TYPE:VOD', '', m3u8_data)
    m3u8_data = re.sub('#EXTINF:\d+\.\d+,', '', m3u8_data)
    m3u8_data = re.sub('#EXT-X-ENDLIST', '', m3u8_data).split()
    for ts in tqdm(m3u8_data):
        ts_url = 'https://apd-06f47dfc9319757359c63e7d1101499b.v.smtcdns.com/moviets.tc.qq.com/AOY2MUdGHEy18MZ6eMUmlMxqSpgIBY7dmuNysnQiPLio/uwMROfz2r5zAoaQXGdGnC2df64-iUwCiwZmikOBGnwTA3zLD/2uK15I5mVRdVE0YUG9TGKkNRU-dMYlnEzl7qVagXbmiHcEnT5HgVUmBaCzYS56xBMIxF3XsnABZnfWJB6PalTqRZpEQvel_Y8euYE2dnOYd5C47qqvW1Mfr2Lj2-QIZIamltM7HbNOmHeT6m_d57VmgNusyvyrjllbmayAdXy2x9B6EFlwP5aA/' + ts
        ts_content = requests.get(url=ts_url).content
        with open(f'斗罗大陆{i}.mp4', mode='ab') as f:
            f.write(ts_content)
    print('ok')


if __name__ == '__main__':
    main()
# pprint.pprint(html_date)
# print(result)
