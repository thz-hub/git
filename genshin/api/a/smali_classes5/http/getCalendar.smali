.class public Lhttp/getCalendar;
.super Ljava/lang/Object;
.source "getCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCalendarinfoGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpurl"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 16
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 17
    .local v2, "br":Ljava/io/BufferedReader;
    const-string v3, "\u9519\u8bef"

    .line 20
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    .line 24
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 28
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 30
    const-string v5, "Accept"

    const-string v6, "application / json, text / plain, */*"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 39
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 41
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v5, "sbf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 43
    .local v6, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_0

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 55
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "sbf":Ljava/lang/StringBuffer;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_1

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 66
    :catch_1
    move-exception v4

    goto :goto_5

    .line 55
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 51
    :catch_2
    move-exception v4

    .line 52
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    goto :goto_2

    .line 58
    :catch_3
    move-exception v4

    .line 59
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 65
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 66
    :catch_4
    move-exception v4

    goto :goto_5

    .line 49
    :catch_5
    move-exception v4

    .line 50
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_6
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    .end local v4    # "e":Ljava/net/MalformedURLException;
    if-eqz v2, :cond_4

    .line 57
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 60
    goto :goto_3

    .line 58
    :catch_6
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 65
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 68
    :goto_4
    goto :goto_6

    .line 66
    :catch_7
    move-exception v4

    .line 67
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    nop

    .line 73
    return-object v3

    .line 55
    :goto_7
    if-eqz v2, :cond_6

    .line 57
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 60
    goto :goto_8

    .line 58
    :catch_8
    move-exception v5

    .line 59
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 65
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 68
    goto :goto_9

    .line 66
    :catch_9
    move-exception v5

    .line 67
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    throw v4
.end method
