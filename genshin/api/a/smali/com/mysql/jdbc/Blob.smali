.class public Lcom/mysql/jdbc/Blob;
.super Ljava/lang/Object;
.source "Blob.java"

# interfaces
.implements Ljava/sql/Blob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;


# instance fields
.field private binaryData:[B

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private isClosed:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 56
    sget-object v0, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 58
    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 68
    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ResultSetInternalMethods;I)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "creatorResultSetToSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p3, "columnIndexToSet"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 79
    return-void
.end method

.method private declared-synchronized checkClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 362
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    :try_start_1
    const-string v0, "Invalid operation on closed BLOB"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBinaryData()[B
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBinaryData([B)V
    .locals 0
    .param p1, "newBinaryData"    # [B

    monitor-enter p0

    .line 181
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    .end local p1    # "newBinaryData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 312
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 311
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
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

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 5
    .param p1, "pos"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 339
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 343
    sub-long/2addr p1, v0

    .line 345
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 350
    add-long v1, p1, p3

    array-length v0, v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 355
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    long-to-int v2, p1

    long-to-int v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 351
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :cond_0
    :try_start_1
    const-string v0, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 346
    :cond_1
    const-string v0, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 340
    :cond_2
    const-string v0, "\"pos\" argument can not be < 1."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local p1    # "pos":J
    .end local p3    # "length":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBytes(JI)[B
    .locals 5
    .param p1, "pos"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 116
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 120
    sub-long/2addr p1, v0

    .line 122
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 127
    int-to-long v1, p3

    add-long/2addr v1, p1

    array-length v0, v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 132
    new-array v0, p3, [B

    .line 133
    .local v0, "newData":[B
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    long-to-int v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-object v0

    .line 128
    .end local v0    # "newData":[B
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :cond_0
    :try_start_1
    const-string v0, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 123
    :cond_1
    const-string v0, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 117
    :cond_2
    const-string v0, "Blob.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local p1    # "pos":J
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 150
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 147
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position(Ljava/sql/Blob;J)J
    .locals 4
    .param p1, "pattern"    # Ljava/sql/Blob;
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 177
    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {p1, v0, v1, v3}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/Blob;->position([BJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 174
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    .end local p1    # "pattern":Ljava/sql/Blob;
    .end local p2    # "start":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized position([BJ)J
    .locals 2
    .param p1, "pattern"    # [B
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    const-string v0, "Not implemented"

    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    .end local p1    # "pattern":[B
    .end local p2    # "start":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBinaryStream(J)Ljava/io/OutputStream;
    .locals 6
    .param p1, "indexToWriteAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 190
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 194
    new-instance v2, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v2}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 195
    .local v2, "bytesOut":Lcom/mysql/jdbc/WatchableOutputStream;
    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    .line 197
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 198
    iget-object v3, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v4, 0x0

    sub-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 191
    .end local v2    # "bytesOut":Lcom/mysql/jdbc/WatchableOutputStream;
    :cond_1
    :try_start_1
    const-string v0, "Blob.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local p1    # "indexToWriteAt":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBytes(J[B)I
    .locals 6
    .param p1, "writeAt"    # J
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 210
    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/Blob;->setBytes(J[BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 207
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    .end local p1    # "writeAt":J
    .end local p3    # "bytes":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBytes(J[BII)I
    .locals 5
    .param p1, "writeAt"    # J
    .param p3, "bytes"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Blob;->setBinaryStream(J)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    .local v0, "bytesOut":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v0, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    nop

    .line 236
    nop

    .line 230
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    goto :goto_0

    .line 231
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :catch_0
    move-exception v1

    .line 233
    :goto_0
    nop

    .line 234
    nop

    .line 236
    monitor-exit p0

    return p5

    .line 229
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 223
    :catch_1
    move-exception v1

    .line 224
    .local v1, "ioEx":Ljava/io/IOException;
    :try_start_3
    const-string v2, "Blob.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 225
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    nop

    .end local v0    # "bytesOut":Ljava/io/OutputStream;
    .end local p1    # "writeAt":J
    .end local p3    # "bytes":[B
    .end local p4    # "offset":I
    .end local p5    # "length":I
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    .end local v1    # "ioEx":Ljava/io/IOException;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local v0    # "bytesOut":Ljava/io/OutputStream;
    .restart local p1    # "writeAt":J
    .restart local p3    # "bytes":[B
    .restart local p4    # "offset":I
    .restart local p5    # "length":I
    :goto_1
    nop

    .line 230
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    goto :goto_2

    .line 231
    :catch_2
    move-exception v2

    .line 233
    :goto_2
    nop

    .line 229
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    .end local v0    # "bytesOut":Ljava/io/OutputStream;
    .end local p1    # "writeAt":J
    .end local p3    # "bytes":[B
    .end local p4    # "offset":I
    .end local p5    # "length":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/mysql/jdbc/WatchableOutputStream;

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v0

    .line 252
    .local v0, "streamSize":I
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 253
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    .line 256
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "streamSize":I
    .end local p1    # "out":Lcom/mysql/jdbc/WatchableOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized streamClosed([B)V
    .locals 0
    .param p1, "byteData"    # [B

    monitor-enter p0

    .line 243
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    .end local p1    # "byteData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized truncate(J)V
    .locals 4
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 289
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 290
    .local v0, "newData":[B
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    long-to-int v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 283
    .end local v0    # "newData":[B
    .end local p0    # "this":Lcom/mysql/jdbc/Blob;
    :cond_0
    :try_start_1
    const-string v0, "\"len\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 279
    :cond_1
    const-string v0, "\"len\" argument can not be < 1."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local p1    # "len":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
