.class public Lcom/mysql/jdbc/BufferRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "BufferRow.java"


# instance fields
.field private homePosition:I

.field private isBinaryEncoded:Z

.field private isNull:[Z

.field private lastRequestedIndex:I

.field private lastRequestedPos:I

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private openStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private preNullBitmaskHomePosition:I

.field private rowFromServer:Lcom/mysql/jdbc/Buffer;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "buf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p3, "isBinaryEncoded"    # Z
    .param p4, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p4}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 60
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    .line 96
    iput-boolean p3, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    .line 97
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 98
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/BufferRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 103
    :cond_0
    return-void
.end method

.method private findAndSeekToOffset(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v0, :cond_5

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 131
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 132
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 134
    return v0

    .line 137
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 140
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return v0

    .line 143
    :cond_1
    const/4 v1, 0x0

    .line 145
    .local v1, "startingIndex":I
    if-le p1, v0, :cond_3

    .line 146
    if-ltz v0, :cond_2

    .line 147
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    move v1, v0

    .end local v1    # "startingIndex":I
    .local v0, "startingIndex":I
    goto :goto_0

    .line 149
    .end local v0    # "startingIndex":I
    .restart local v1    # "startingIndex":I
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 157
    :goto_1
    move v0, v1

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_4

    .line 158
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 161
    .end local v0    # "i":I
    :cond_4
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 162
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 164
    return v0

    .line 167
    .end local v1    # "startingIndex":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffsetForBinaryEncoding(I)I

    move-result v0

    return v0
.end method

.method private findAndSeekToOffsetForBinaryEncoding(I)I
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 173
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 174
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 176
    return v0

    .line 179
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 182
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return v0

    .line 185
    :cond_1
    const/4 v1, 0x0

    .line 187
    .local v1, "startingIndex":I
    if-le p1, v0, :cond_3

    .line 188
    if-ltz v0, :cond_2

    .line 189
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    move v1, v0

    .end local v1    # "startingIndex":I
    .local v0, "startingIndex":I
    goto :goto_0

    .line 192
    .end local v0    # "startingIndex":I
    .restart local v1    # "startingIndex":I
    :cond_2
    const/4 v0, 0x0

    .line 193
    .end local v1    # "startingIndex":I
    .restart local v0    # "startingIndex":I
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    move v1, v0

    .line 196
    .end local v0    # "startingIndex":I
    .restart local v1    # "startingIndex":I
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 201
    :goto_1
    move v0, v1

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_5

    .line 202
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    .line 203
    goto/16 :goto_3

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 208
    .local v2, "curPosition":I
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.97"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.98"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.99"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.100"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v5, "S1000"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 240
    :sswitch_0
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 242
    goto :goto_3

    .line 245
    :sswitch_1
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 247
    goto :goto_3

    .line 228
    :sswitch_2
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 230
    goto :goto_3

    .line 250
    :sswitch_3
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 252
    goto :goto_3

    .line 210
    :sswitch_4
    goto :goto_3

    .line 236
    :sswitch_5
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 238
    goto :goto_3

    .line 232
    :sswitch_6
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 234
    goto :goto_3

    .line 224
    :sswitch_7
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 226
    goto :goto_3

    .line 219
    :sswitch_8
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 221
    goto :goto_3

    .line 214
    :sswitch_9
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 215
    goto :goto_3

    .line 265
    :sswitch_a
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 267
    nop

    .line 201
    .end local v2    # "curPosition":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 277
    .end local v0    # "i":I
    :cond_5
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 280
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xd -> :sswitch_8
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_a
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_a
        0xfc -> :sswitch_a
        0xfd -> :sswitch_a
        0xfe -> :sswitch_a
        0xff -> :sswitch_a
    .end sparse-switch
.end method

.method private setupIsNullBitmask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    if-eqz v0, :cond_0

    .line 650
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 655
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    .line 657
    .local v0, "nullCount":I
    new-array v1, v0, [B

    .line 659
    .local v1, "nullBitMask":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 660
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 665
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "nullMaskPos":I
    const/4 v3, 0x4

    .line 670
    .local v3, "bit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 672
    iget-object v5, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-byte v6, v1, v2

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v5, v4

    .line 674
    shl-int/lit8 v5, v3, 0x1

    move v3, v5

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_3

    .line 675
    const/4 v3, 0x1

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 670
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 680
    .end local v4    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized closeOpenStreams()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/InputStream;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_0

    .line 117
    .end local p0    # "this":Lcom/mysql/jdbc/BufferRow;
    :catch_0
    move-exception v1

    .line 119
    goto :goto_0

    .line 122
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/InputStream;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 7
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 287
    monitor-exit p0

    return-object v1

    .line 291
    .end local p0    # "this":Lcom/mysql/jdbc/BufferRow;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    .line 295
    .local v2, "length":J
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .local v0, "offset":I
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 298
    monitor-exit p0

    return-object v1

    .line 301
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    long-to-int v5, v2

    invoke-direct {v1, v4, v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 303
    .local v1, "stream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-nez v4, :cond_2

    .line 304
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :cond_2
    monitor-exit p0

    return-object v1

    .line 284
    .end local v0    # "offset":I
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "length":J
    .end local p1    # "columnIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBytesSize()I
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    return v0
.end method

.method public getColumnValue(I)[B
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 314
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v0, v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 319
    return-object v2

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.97"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.99"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.100"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 338
    :sswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 324
    :sswitch_1
    return-object v2

    .line 344
    :sswitch_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 341
    :sswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 335
    :sswitch_4
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 331
    :sswitch_5
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 327
    :sswitch_6
    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0

    .line 362
    :sswitch_7
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_7
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_5
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_7
        0xf9 -> :sswitch_7
        0xfa -> :sswitch_7
        0xfb -> :sswitch_7
        0xfc -> :sswitch_7
        0xfd -> :sswitch_7
        0xfe -> :sswitch_7
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 11
    .param p1, "columnIndex"    # I
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p4, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x0

    return-object v0

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 690
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 692
    .local v0, "length":J
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 694
    .local v2, "offset":I
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    long-to-int v7, v0

    move-object v3, p0

    move v4, p1

    move v6, v2

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/mysql/jdbc/BufferRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v3

    return-object v3
.end method

.method public getInt(I)I
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 377
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 379
    .local v0, "length":J
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 381
    .local v2, "offset":I
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 382
    const/4 v3, 0x0

    return v3

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v4, v0

    add-int/2addr v4, v2

    invoke-static {v3, v2, v4}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    return v3
.end method

.method public getLong(I)J
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 392
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 394
    .local v0, "length":J
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 396
    .local v2, "offset":I
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 397
    const-wide/16 v3, 0x0

    return-wide v3

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v4, v0

    add-int/2addr v4, v2

    invoke-static {v3, v2, v4}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v3

    return-wide v3
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 11
    .param p1, "columnIndex"    # I
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p4, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x0

    return-object v0

    .line 703
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 705
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 707
    .local v0, "length":J
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 709
    .local v2, "offset":I
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    long-to-int v7, v0

    move-object v3, p0

    move v4, p1

    move v6, v2

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/mysql/jdbc/BufferRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v3

    return-object v3
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 16
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "jdbcType"    # I
    .param p4, "mysqlType"    # I
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "rollForward"    # Z
    .param p7, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p8, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 715
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const/4 v0, 0x0

    return-object v0

    .line 719
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 721
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v13

    .line 723
    .local v13, "length":J
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v15

    .line 725
    .local v15, "offset":I
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v3, v15

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/BufferRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNativeDouble(I)D
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-wide/16 v0, 0x0

    return-wide v0

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 411
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 413
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeDouble([BI)D

    move-result-wide v1

    return-wide v1
.end method

.method public getNativeFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 424
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 426
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeFloat([BI)F

    move-result v1

    return v1
.end method

.method public getNativeInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 437
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 439
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeInt([BI)I

    move-result v1

    return v1
.end method

.method public getNativeLong(I)J
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-wide/16 v0, 0x0

    return-wide v0

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 452
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeLong([BI)J

    move-result-wide v1

    return-wide v1
.end method

.method public getNativeShort(I)S
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 463
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 465
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeShort([BI)S

    move-result v1

    return v1
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 14
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 732
    move-object v10, p0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    return-object v0

    .line 736
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 738
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v11

    .line 740
    .local v11, "length":J
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v13

    .line 742
    .local v13, "offset":I
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v11

    move-object v0, p0

    move v1, p1

    move v3, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 13
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 471
    move-object v9, p0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 477
    iget-object v0, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v10

    .line 479
    .local v10, "length":J
    iget-object v0, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v12

    .line 481
    .local v12, "offset":I
    iget-object v0, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    long-to-int v3, v10

    move-object v0, p0

    move v2, v12

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/BufferRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 488
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x0

    return-object v1

    .line 493
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 497
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 499
    throw v2
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .locals 10
    .param p1, "columnIndex"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    return-object v1

    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 513
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    .line 515
    .local v2, "length":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 516
    return-object v1

    .line 519
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 520
    const-string v0, ""

    return-object v0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 527
    .local v0, "offset":I
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    long-to-int v9, v2

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/mysql/jdbc/BufferRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 14
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 533
    move-object v10, p0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 539
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v11

    .line 541
    .local v11, "length":J
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v13

    .line 543
    .local v13, "offset":I
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v11

    move-object v0, p0

    move v1, p1

    move v3, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;
    .locals 16
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p7, "useGmtMillis"    # Z
    .param p8, "useJDBCCompliantTimezoneShift"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 549
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 553
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 555
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v13

    .line 557
    .local v13, "length":J
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v15

    .line 559
    .local v15, "offset":I
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v3, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/BufferRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 565
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    :pswitch_0
    return v2

    .line 571
    :pswitch_1
    return v1

    .line 577
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 579
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v3

    .line 581
    .local v3, "length":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 582
    return v2

    .line 585
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 586
    return v2

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 590
    .local v0, "offset":I
    iget-object v5, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    .line 592
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    long-to-int v7, v3

    if-ge v6, v7, :cond_5

    .line 593
    add-int v7, v0, v6

    aget-byte v7, v5, v7

    int-to-char v7, v7

    .line 595
    .local v7, "c":C
    const/16 v8, 0x65

    if-eq v7, v8, :cond_4

    const/16 v8, 0x45

    if-ne v7, v8, :cond_3

    goto :goto_1

    .line 592
    .end local v7    # "c":C
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 596
    .restart local v7    # "c":C
    :cond_4
    :goto_1
    return v1

    .line 600
    .end local v6    # "i":I
    .end local v7    # "c":C
    :cond_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 605
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 606
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 608
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public length(I)J
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 616
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 618
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 620
    .local v0, "length":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 621
    const-wide/16 v2, 0x0

    return-wide v2

    .line 624
    :cond_0
    return-wide v0
.end method

.method public setColumnValue(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 629
    new-instance v0, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {v0}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 1
    .param p1, "f"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 634
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 636
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/mysql/jdbc/BufferRow;->setupIsNullBitmask()V

    .line 640
    :cond_0
    return-object p0
.end method
