.class public Lcom/mysql/fabric/xmlrpc/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    .line 56
    return-void
.end method


# virtual methods
.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public execute(Lcom/mysql/fabric/xmlrpc/base/MethodCall;)Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 10
    .param p1, "methodCall"    # Lcom/mysql/fabric/xmlrpc/base/MethodCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    move-object v0, v1

    .line 70
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const-string v1, "User-Agent"

    const-string v2, "MySQL XML-RPC"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 78
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 82
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 86
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 87
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 88
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 92
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 93
    .local v5, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const-string v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v5, v6, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 94
    const-string v6, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {v5, v6, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 96
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v6, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;

    invoke-direct {v6}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;-><init>()V

    .line 98
    .local v6, "saxp":Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
    invoke-virtual {v1, v4, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 100
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 102
    invoke-virtual {v6}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    move-result-object v7

    .line 103
    .local v7, "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    invoke-virtual {v7}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_2

    .line 107
    nop

    .line 110
    .end local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "out":Ljava/lang/String;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "saxp":Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
    .end local v7    # "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    nop

    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v6    # "saxp":Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
    move-object v8, v7

    .line 107
    .restart local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v2    # "out":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .local v8, "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    return-object v7

    .line 104
    .end local v8    # "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .restart local v7    # "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    :cond_2
    :try_start_1
    new-instance v8, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;

    invoke-virtual {v7}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;-><init>(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local p1    # "methodCall":Lcom/mysql/fabric/xmlrpc/base/MethodCall;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "out":Ljava/lang/String;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "saxp":Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
    .end local v7    # "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "methodCall":Lcom/mysql/fabric/xmlrpc/base/MethodCall;
    :catchall_0
    move-exception v1

    .line 111
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    :cond_3
    throw v1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
