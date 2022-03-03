.class public Lcom/mysql/jdbc/Clob;
.super Ljava/lang/Object;
.source "Clob.java"

# interfaces
.implements Ljava/sql/Clob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;
.implements Lcom/mysql/jdbc/WriterWatcher;


# instance fields
.field private charData:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .param p1, "charDataInit"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 49
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 2
    .param p1, "pos"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/io/StringReader;

    long-to-int v1, p3

    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 5
    .param p1, "startPos"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    const-string v0, "S1009"

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    .line 81
    long-to-int v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 82
    .local v1, "adjustedStartPos":I
    add-int v2, v1, p3

    .line 84
    .local v2, "adjustedEndIndex":I
    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const-string v3, "Clob.7"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v3, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 78
    .end local v1    # "adjustedStartPos":I
    .end local v2    # "adjustedEndIndex":I
    :cond_2
    const-string v1, "Clob.6"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 103
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 10
    .param p1, "stringToFind"    # Ljava/lang/String;
    .param p2, "startPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    const-string v0, "S1009"

    const-wide/16 v1, 0x1

    cmp-long v3, p2, v1

    if-ltz v3, :cond_3

    .line 122
    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    .line 123
    sub-long v6, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 127
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    sub-long v1, p2, v1

    long-to-int v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    :goto_0
    return-wide v4

    .line 124
    .end local v0    # "pos":I
    :cond_1
    const-string v1, "Clob.10"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 132
    :cond_2
    return-wide v4

    .line 118
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clob.8"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "Clob.9"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 4
    .param p1, "arg0"    # Ljava/sql/Clob;
    .param p2, "arg1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/sql/Clob;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-wide/16 v2, 0x1

    invoke-interface {p1, v2, v3, v1}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/Clob;->position(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 6
    .param p1, "indexToWriteAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 139
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 143
    new-instance v2, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v2}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 144
    .local v2, "bytesOut":Lcom/mysql/jdbc/WatchableOutputStream;
    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    .line 146
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 147
    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    sub-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    .line 150
    :cond_0
    return-object v2

    .line 140
    .end local v2    # "bytesOut":Lcom/mysql/jdbc/WatchableOutputStream;
    :cond_1
    const-string v0, "Clob.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 5
    .param p1, "indexToWriteAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 161
    new-instance v2, Lcom/mysql/jdbc/WatchableWriter;

    invoke-direct {v2}, Lcom/mysql/jdbc/WatchableWriter;-><init>()V

    .line 162
    .local v2, "writer":Lcom/mysql/jdbc/WatchableWriter;
    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/WatchableWriter;->setWatcher(Lcom/mysql/jdbc/WriterWatcher;)V

    .line 167
    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v4, 0x0

    sub-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    .line 171
    :cond_0
    return-object v2

    .line 158
    .end local v2    # "writer":Lcom/mysql/jdbc/WatchableWriter;
    :cond_1
    const-string v0, "Clob.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setString(JLjava/lang/String;)I
    .locals 5
    .param p1, "pos"    # J
    .param p3, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    const-string v0, "S1009"

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 182
    if-eqz p3, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "charBuf":Ljava/lang/StringBuilder;
    sub-long/2addr p1, v1

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 192
    .local v1, "strLength":I
    long-to-int v2, p1

    int-to-long v3, v1

    add-long/2addr v3, p1

    long-to-int v4, v3

    invoke-virtual {v0, v2, v4, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 196
    return v1

    .line 183
    .end local v0    # "charBuf":Ljava/lang/StringBuilder;
    .end local v1    # "strLength":I
    :cond_0
    const-string v1, "Clob.3"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 179
    :cond_1
    const-string v1, "Clob.2"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setString(JLjava/lang/String;II)I
    .locals 6
    .param p1, "pos"    # J
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 203
    const-wide/16 v0, 0x1

    const-string v2, "S1009"

    cmp-long v3, p1, v0

    if-ltz v3, :cond_1

    .line 207
    if-eqz p3, :cond_0

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, "charBuf":Ljava/lang/StringBuilder;
    sub-long/2addr p1, v0

    .line 216
    add-int v0, p4, p5

    :try_start_0
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "replaceString":Ljava/lang/String;
    long-to-int v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v5, v4

    invoke-virtual {v3, v1, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    nop

    .line 223
    .end local v0    # "replaceString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 225
    return p5

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 208
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v3    # "charBuf":Ljava/lang/StringBuilder;
    :cond_0
    const-string v0, "Clob.5"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 204
    :cond_1
    const-string v0, "Clob.4"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 8
    .param p1, "out"    # Lcom/mysql/jdbc/WatchableOutputStream;

    .line 232
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v0

    .line 234
    .local v0, "streamSize":I
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public truncate(J)V
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 257
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clob.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Clob.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "Clob.13"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public writerClosed(Lcom/mysql/jdbc/WatchableWriter;)V
    .locals 3
    .param p1, "out"    # Lcom/mysql/jdbc/WatchableWriter;

    .line 270
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->size()I

    move-result v0

    .line 272
    .local v0, "dataLength":I
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public writerClosed([C)V
    .locals 1
    .param p1, "charDataBeingWritten"    # [C

    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 264
    return-void
.end method
