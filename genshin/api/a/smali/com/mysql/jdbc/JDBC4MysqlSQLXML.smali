.class public Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
.super Ljava/lang/Object;
.source "JDBC4MysqlSQLXML.java"

# interfaces
.implements Ljava/sql/SQLXML;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;
    }
.end annotation


# instance fields
.field private asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private asDOMResult:Ljavax/xml/transform/dom/DOMResult;

.field private asSAXResult:Ljavax/xml/transform/sax/SAXResult;

.field private asStringWriter:Ljava/io/StringWriter;

.field private columnIndexOfXml:I

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private fromResultSet:Z

.field private inputFactory:Ljavax/xml/stream/XMLInputFactory;

.field private isClosed:Z

.field private outputFactory:Ljavax/xml/stream/XMLOutputFactory;

.field private owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field private saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

.field private stringRep:Ljava/lang/String;

.field private workingWithResult:Z


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z

    .line 108
    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    .line 109
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 110
    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/ResultSetInternalMethods;ILcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "owner"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p2, "index"    # I
    .param p3, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z

    .line 101
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 102
    iput p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    .line 104
    iput-object p3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 105
    return-void
.end method

.method private binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;
    .locals 6
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;

    .line 513
    :try_start_0
    const-string v0, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v0, "encoding":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 517
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    .line 519
    .local v2, "reader":Ljavax/xml/stream/XMLStreamReader;
    const/4 v3, 0x0

    .line 521
    .local v3, "eventType":I
    :cond_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v4

    move v3, v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 522
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 523
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .local v4, "possibleEncoding":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 526
    move-object v0, v4

    .line 534
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "reader":Ljavax/xml/stream/XMLStreamReader;
    .end local v3    # "eventType":I
    .end local v4    # "possibleEncoding":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    .line 536
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 537
    .end local v0    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "badEnc":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    const-string v0, "SQLXMLInstance has been free()d"

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkWorkingWithResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 146
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    const-string v0, "Can\'t perform requested operation after getResult() has been called to write XML data"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBinaryStreamInternal()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 376
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-object v0

    .line 375
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCharacterStreamInternal()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-object v0

    .line 414
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected domSourceToString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 593
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 594
    .local v0, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 595
    .local v1, "identity":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 596
    .local v2, "stringOut":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 597
    .local v3, "result":Ljavax/xml/transform/Result;
    invoke-virtual {v1, v0, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 599
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 600
    .end local v0    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v1    # "identity":Ljavax/xml/transform/Transformer;
    .end local v2    # "stringOut":Ljava/io/StringWriter;
    .end local v3    # "result":Ljavax/xml/transform/Result;
    :catchall_0
    move-exception v0

    .line 601
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 602
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 604
    throw v1
.end method

.method public declared-synchronized free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 113
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    .line 115
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    .line 116
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 117
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 118
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 194
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 225
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 223
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSource(Ljava/lang/Class;)Ljavax/xml/transform/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/xml/transform/Source;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 277
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 282
    if-eqz p1, :cond_7

    const-class v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 293
    :cond_0
    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 295
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 296
    .local v0, "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 297
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 299
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v2, 0x0

    .line 301
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    iget-boolean v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v3, :cond_1

    .line 302
    new-instance v3, Lorg/xml/sax/InputSource;

    iget-object v4, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v5, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    goto :goto_0

    .line 304
    :cond_1
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 307
    :goto_0
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 308
    .end local v0    # "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v0

    .line 309
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 310
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v1

    .line 315
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_2
    const-class v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "reader":Ljava/io/Reader;
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 321
    :cond_3
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 324
    :goto_1
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 325
    .end local v0    # "reader":Ljava/io/Reader;
    :cond_4
    :try_start_3
    const-class v0, Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    .line 327
    const/4 v0, 0x0

    .line 329
    .restart local v0    # "reader":Ljava/io/Reader;
    :try_start_4
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v1, :cond_5

    .line 330
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 332
    :cond_5
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 335
    :goto_2
    new-instance v1, Ljavax/xml/transform/stax/StAXSource;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, v0}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stax/StAXSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V
    :try_end_4
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    .line 336
    .end local v0    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Ljavax/xml/stream/XMLStreamException;
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 338
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v1

    .line 343
    .end local v0    # "ex":Ljavax/xml/stream/XMLStreamException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML Source of type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" Not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 284
    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 286
    .local v0, "inputSource":Lorg/xml/sax/InputSource;
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v1, :cond_8

    .line 287
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_4

    .line 289
    :cond_8
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 292
    :goto_4
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v1

    .line 275
    .end local v0    # "inputSource":Lorg/xml/sax/InputSource;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 126
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 128
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 183
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 185
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_0
    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 189
    :cond_2
    monitor-exit p0

    return v1

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readerToString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 7
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 547
    .local v1, "charsRead":I
    const/16 v2, 0x200

    new-array v2, v2, [C

    .line 550
    .local v2, "charBuf":[C
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :cond_0
    nop

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 553
    :catch_0
    move-exception v3

    .line 554
    .local v3, "ioEx":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v6, "S1009"

    invoke-static {v4, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 555
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 557
    throw v4
.end method

.method protected declared-synchronized serializeAsCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 564
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 565
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 571
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->domSourceToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 575
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_2

    .line 576
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 579
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->toReader()Ljava/io/Reader;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 583
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    .line 584
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 588
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized serializeAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 609
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 610
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 613
    monitor-exit p0

    return-object v0

    .line 616
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->domSourceToString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 620
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 624
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->toReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 628
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    .line 629
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 633
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBinaryStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 368
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 372
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setBinaryStreamInternal()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 366
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharacterStream()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 407
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 411
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 405
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Class;)Ljavax/xml/transform/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/xml/transform/Result;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 464
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 465
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    .line 469
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    .line 470
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    .line 471
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 472
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    .line 473
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 475
    if-eqz p1, :cond_5

    const-class v0, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 481
    :cond_0
    const-class v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v0}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-object v0

    .line 486
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    :cond_1
    :try_start_1
    const-class v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 488
    :cond_2
    :try_start_2
    const-class v0, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 490
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    if-nez v0, :cond_3

    .line 491
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 494
    :cond_3
    new-instance v0, Ljavax/xml/transform/stax/StAXResult;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stax/StAXResult;-><init>(Ljavax/xml/stream/XMLEventWriter;)V
    :try_end_3
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Ljavax/xml/stream/XMLStreamException;
    :try_start_4
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 497
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 499
    throw v1

    .line 502
    .end local v0    # "ex":Ljavax/xml/stream/XMLStreamException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML Result of type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" Not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 476
    :cond_5
    :goto_0
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;-><init>(Lcom/mysql/jdbc/JDBC4MysqlSQLXML;)V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    .line 478
    new-instance v0, Ljavax/xml/transform/sax/SAXResult;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    monitor-exit p0

    return-object v0

    .line 463
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 175
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 177
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 173
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
