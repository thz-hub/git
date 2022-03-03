.class public Lnet/sf/json/groovy/JsonSlurper;
.super Lgroovy/lang/GroovyObjectSupport;
.source "JsonSlurper.java"


# instance fields
.field private jsonConfig:Lnet/sf/json/JsonConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, v0}, Lnet/sf/json/groovy/JsonSlurper;-><init>(Lnet/sf/json/JsonConfig;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lnet/sf/json/JsonConfig;)V
    .locals 1
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 47
    invoke-direct {p0}, Lgroovy/lang/GroovyObjectSupport;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lnet/sf/json/groovy/JsonSlurper;->jsonConfig:Lnet/sf/json/JsonConfig;

    .line 49
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lnet/sf/json/groovy/JsonSlurper;->parse(Ljava/io/Reader;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lnet/sf/json/groovy/JsonSlurper;->parse(Ljava/io/Reader;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lnet/sf/json/JSON;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 73
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/json/groovy/JsonSlurper;->parseText(Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v3

    return-object v3
.end method

.method public parse(Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/json/groovy/JsonSlurper;->parse(Ljava/net/URL;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/net/URL;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/groovy/JsonSlurper;->parse(Ljava/io/InputStream;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public parseText(Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lnet/sf/json/groovy/JsonSlurper;->jsonConfig:Lnet/sf/json/JsonConfig;

    invoke-static {p1, v0}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method
