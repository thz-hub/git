.class public Lhttp/SignHttp;
.super Ljava/lang/Object;
.source "SignHttp.java"


# instance fields
.field act_id:Ljava/lang/String;

.field cookie:Ljava/lang/String;

.field uid:Ljava/lang/String;

.field url_award:Ljava/lang/String;

.field url_info:Ljava/lang/String;

.field url_sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "e202009291139501"

    iput-object v0, p0, Lhttp/SignHttp;->act_id:Ljava/lang/String;

    .line 16
    const-string v0, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/sign"

    iput-object v0, p0, Lhttp/SignHttp;->url_sign:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/home?act_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhttp/SignHttp;->act_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhttp/SignHttp;->url_award:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/info?act_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhttp/SignHttp;->act_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&region=cn_gf01&uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhttp/SignHttp;->url_info:Ljava/lang/String;

    return-void
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 25
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 26
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 27
    .local v3, "br":Ljava/io/BufferedReader;
    const-string v4, "\u9519\u8bef"

    .line 30
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v0, v6

    .line 34
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    const/16 v6, 0xbb8

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 44
    const-string v6, "Accept"

    const-string v7, "application / json, text / plain, */*"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v6, "User-Agent"

    const-string v7, "Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 miHoYoBBS/2.4.0"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v6, "Content-Type"

    const-string v7, "text/plain"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v6, "x-rpc-device_id"

    const-string v7, "fa498beb-eddf-345d-84e1-a3145b225309"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v6, "x-rpc-client_type"

    const-string v7, "5"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v6, "x-rpc-app_version"

    const-string v7, "2.2.1"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v6, "Cookie"

    invoke-virtual {v0, v6, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v6, "DS"

    invoke-static {}, Lhttp/SafeUtil2;->Get_DS()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    move-object v2, v6

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v1, v6

    .line 66
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 68
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v6, "sbf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 71
    .local v7, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_0

    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v8

    .line 83
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "sbf":Ljava/lang/StringBuffer;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 85
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 92
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    goto :goto_2

    .line 93
    :catch_1
    move-exception v5

    .line 94
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_8

    .line 99
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 100
    :catch_2
    move-exception v5

    goto :goto_8

    .line 83
    :catchall_0
    move-exception v5

    goto :goto_a

    .line 79
    :catch_3
    move-exception v5

    .line 80
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 85
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    goto :goto_3

    .line 86
    :catch_4
    move-exception v5

    .line 87
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 92
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 95
    goto :goto_4

    .line 93
    :catch_5
    move-exception v5

    .line 94
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    if-eqz v1, :cond_8

    .line 99
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 100
    :catch_6
    move-exception v5

    goto :goto_8

    .line 77
    :catch_7
    move-exception v5

    .line 78
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_8
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 83
    .end local v5    # "e":Ljava/net/MalformedURLException;
    if-eqz v3, :cond_6

    .line 85
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 88
    goto :goto_5

    .line 86
    :catch_8
    move-exception v5

    .line 87
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 92
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 95
    goto :goto_6

    .line 93
    :catch_9
    move-exception v5

    .line 94
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 99
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 102
    :goto_7
    goto :goto_9

    .line 100
    :catch_a
    move-exception v5

    .line 101
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    nop

    .line 107
    return-object v4

    .line 83
    :goto_a
    if-eqz v3, :cond_9

    .line 85
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 88
    goto :goto_b

    .line 86
    :catch_b
    move-exception v6

    .line 87
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    .line 92
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 95
    goto :goto_c

    .line 93
    :catch_c
    move-exception v6

    .line 94
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    .line 99
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 102
    goto :goto_d

    .line 100
    :catch_d
    move-exception v6

    .line 101
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    :goto_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    throw v5
.end method

.method public static doSignGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 177
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 178
    .local v2, "br":Ljava/io/BufferedReader;
    const-string v3, "\u9519\u8bef"

    .line 181
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 183
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    .line 185
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 187
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 191
    const-string v5, "Accept"

    const-string v6, "application / json, text / plain, */*"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 miHoYoBBS/2.4.0"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v5, "Content-Type"

    const-string v6, "text/plain"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v5, "x-rpc-device_id"

    const-string v6, "fa498beb-eddf-345d-84e1-a3145b225309"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v5, "x-rpc-client_type"

    const-string v6, "5"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "x-rpc-app_version"

    const-string v6, "2.2.1"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v5, "Cookie"

    invoke-virtual {v0, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "DS"

    invoke-static {}, Lhttp/SafeUtil2;->Get_DS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 212
    const-string v5, "1"

    move-object v3, v5

    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 217
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 219
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v5, "sbf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 221
    .local v6, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_0

    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 235
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "sbf":Ljava/lang/StringBuffer;
    .end local v6    # "temp":Ljava/lang/String;
    nop

    .line 237
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    goto :goto_1

    .line 238
    :catch_0
    move-exception v4

    .line 239
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_3

    .line 245
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 246
    :catch_1
    move-exception v4

    goto :goto_5

    .line 235
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 230
    :catch_2
    move-exception v4

    .line 231
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    const-string v5, "3"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v5

    .line 235
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 237
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 240
    goto :goto_2

    .line 238
    :catch_3
    move-exception v4

    .line 239
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    .line 245
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 246
    :catch_4
    move-exception v4

    goto :goto_5

    .line 227
    :catch_5
    move-exception v4

    .line 228
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_6
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 229
    const-string v5, "2"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v5

    .line 235
    .end local v4    # "e":Ljava/net/MalformedURLException;
    if-eqz v2, :cond_2

    .line 237
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 240
    goto :goto_3

    .line 238
    :catch_6
    move-exception v4

    .line 239
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 245
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 248
    :goto_4
    goto :goto_6

    .line 246
    :catch_7
    move-exception v4

    .line 247
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    nop

    .line 252
    return-object v3

    .line 235
    :goto_7
    if-eqz v2, :cond_4

    .line 237
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 240
    goto :goto_8

    .line 238
    :catch_8
    move-exception v5

    .line 239
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    .line 245
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 248
    goto :goto_9

    .line 246
    :catch_9
    move-exception v5

    .line 247
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    throw v4
.end method

.method public static doWithCookiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "cookies"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 113
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 114
    .local v2, "br":Ljava/io/BufferedReader;
    const-string v3, "\u9519\u8bef"

    .line 117
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    .line 121
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 123
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 128
    const-string v5, "Cookie"

    invoke-virtual {v0, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 136
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 138
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v5, "sbf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 140
    .local v6, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_0

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 152
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "sbf":Ljava/lang/StringBuffer;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    goto :goto_1

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 162
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 163
    :catch_1
    move-exception v4

    goto :goto_5

    .line 152
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 148
    :catch_2
    move-exception v4

    .line 149
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 157
    goto :goto_2

    .line 155
    :catch_3
    move-exception v4

    .line 156
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 163
    :catch_4
    move-exception v4

    goto :goto_5

    .line 146
    :catch_5
    move-exception v4

    .line 147
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_6
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    .end local v4    # "e":Ljava/net/MalformedURLException;
    if-eqz v2, :cond_4

    .line 154
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 157
    goto :goto_3

    .line 155
    :catch_6
    move-exception v4

    .line 156
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 162
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 165
    :goto_4
    goto :goto_6

    .line 163
    :catch_7
    move-exception v4

    .line 164
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    nop

    .line 170
    return-object v3

    .line 152
    :goto_7
    if-eqz v2, :cond_6

    .line 154
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 157
    goto :goto_8

    .line 155
    :catch_8
    move-exception v5

    .line 156
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 162
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 165
    goto :goto_9

    .line 163
    :catch_9
    move-exception v5

    .line 164
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    throw v4
.end method
