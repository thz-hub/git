.class public Lcore/getCookie/CookieHttpClient;
.super Ljava/lang/Object;
.source "CookieHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCookieGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "cookies"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 17
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 18
    .local v2, "br":Ljava/io/BufferedReader;
    const-string v3, "\u9519\u8bef"

    .line 21
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    .line 25
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 27
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 29
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 31
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v5, "Cookie"

    invoke-virtual {v0, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 40
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 42
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v5, "sbf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 44
    .local v6, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 56
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "sbf":Ljava/lang/StringBuffer;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception v4

    .line 60
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 66
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 67
    :catch_1
    move-exception v4

    goto :goto_5

    .line 56
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 52
    :catch_2
    move-exception v4

    .line 53
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 58
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    goto :goto_2

    .line 59
    :catch_3
    move-exception v4

    .line 60
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 67
    :catch_4
    move-exception v4

    goto :goto_5

    .line 50
    :catch_5
    move-exception v4

    .line 51
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_6
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 56
    .end local v4    # "e":Ljava/net/MalformedURLException;
    if-eqz v2, :cond_4

    .line 58
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 61
    goto :goto_3

    .line 59
    :catch_6
    move-exception v4

    .line 60
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 66
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 69
    :goto_4
    goto :goto_6

    .line 67
    :catch_7
    move-exception v4

    .line 68
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    nop

    .line 74
    return-object v3

    .line 56
    :goto_7
    if-eqz v2, :cond_6

    .line 58
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 61
    goto :goto_8

    .line 59
    :catch_8
    move-exception v5

    .line 60
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 66
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 69
    goto :goto_9

    .line 67
    :catch_9
    move-exception v5

    .line 68
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    throw v4
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 88
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 89
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 90
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 92
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v0, v6

    .line 96
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 98
    const/16 v6, 0x3a98

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 100
    const v6, 0xea60

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 103
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 105
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 107
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    move-object v2, v6

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v1, v6

    .line 118
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 120
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v6, "sbf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 123
    .local v7, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_0

    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v8

    .line 135
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "sbf":Ljava/lang/StringBuffer;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 137
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_1

    .line 138
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 144
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    goto :goto_2

    .line 145
    :catch_1
    move-exception v5

    .line 146
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_8

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 152
    :catch_2
    move-exception v5

    goto :goto_8

    .line 135
    :catchall_0
    move-exception v5

    goto :goto_a

    .line 131
    :catch_3
    move-exception v5

    .line 132
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 137
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 140
    goto :goto_3

    .line 138
    :catch_4
    move-exception v5

    .line 139
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 144
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 147
    goto :goto_4

    .line 145
    :catch_5
    move-exception v5

    .line 146
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    if-eqz v1, :cond_8

    .line 151
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 152
    :catch_6
    move-exception v5

    goto :goto_8

    .line 129
    :catch_7
    move-exception v5

    .line 130
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_8
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 135
    .end local v5    # "e":Ljava/net/MalformedURLException;
    if-eqz v3, :cond_6

    .line 137
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 140
    goto :goto_5

    .line 138
    :catch_8
    move-exception v5

    .line 139
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 144
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 147
    goto :goto_6

    .line 145
    :catch_9
    move-exception v5

    .line 146
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 151
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 154
    :goto_7
    goto :goto_9

    .line 152
    :catch_a
    move-exception v5

    .line 153
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    nop

    .line 159
    return-object v4

    .line 135
    :goto_a
    if-eqz v3, :cond_9

    .line 137
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 140
    goto :goto_b

    .line 138
    :catch_b
    move-exception v6

    .line 139
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    .line 144
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 147
    goto :goto_c

    .line 145
    :catch_c
    move-exception v6

    .line 146
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    .line 151
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 154
    goto :goto_d

    .line 152
    :catch_d
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    :goto_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    throw v5
.end method
