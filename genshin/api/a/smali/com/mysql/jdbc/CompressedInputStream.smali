.class Lcom/mysql/jdbc/CompressedInputStream;
.super Ljava/io/InputStream;
.source "CompressedInputStream.java"


# instance fields
.field private buffer:[B

.field private in:Ljava/io/InputStream;

.field private inflater:Ljava/util/zip/Inflater;

.field private log:Lcom/mysql/jdbc/log/Log;

.field private packetHeaderBuffer:[B

.field private pos:I

.field private traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "streamFromServer"    # Ljava/io/InputStream;

    .line 70
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 73
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/mysql/jdbc/log/NullLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/log/NullLogger;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    .line 78
    .end local v0    # "e":Ljava/sql/SQLException;
    :goto_0
    iput-object p2, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    .line 79
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 80
    return-void
.end method

.method private getNextPacketFromServer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "uncompressedData":[B
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, v2, v3}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    move-result v1

    .line 119
    .local v1, "lengthRead":I
    if-lt v1, v3, :cond_7

    .line 123
    iget-object v3, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    .line 126
    .local v4, "compressedPacketLength":I
    const/4 v5, 0x4

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    const/4 v6, 0x6

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v5, v3

    .line 129
    .local v5, "uncompressedLength":I
    iget-object v3, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v3

    .line 131
    .local v3, "doTrace":Z
    if-eqz v3, :cond_0

    .line 132
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading compressed packet of length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uncompressed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 135
    :cond_0
    if-lez v5, :cond_1

    .line 136
    new-array v0, v5, [B

    .line 138
    new-array v6, v4, [B

    .line 140
    .local v6, "compressedBuffer":[B
    invoke-direct {p0, v6, v2, v4}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    .line 142
    iget-object v7, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->reset()V

    .line 144
    iget-object v7, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7, v6}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 147
    :try_start_0
    iget-object v7, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7, v0}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 152
    .end local v6    # "compressedBuffer":[B
    goto :goto_0

    .line 148
    .restart local v6    # "compressedBuffer":[B
    :catch_0
    move-exception v2

    .line 149
    .local v2, "dfe":Ljava/util/zip/DataFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Error while uncompressing packet from server."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    .end local v2    # "dfe":Ljava/util/zip/DataFormatException;
    .end local v6    # "compressedBuffer":[B
    :cond_1
    if-eqz v3, :cond_2

    .line 154
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v7, "Packet didn\'t meet compression threshold, not uncompressing..."

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 160
    :cond_2
    move v5, v4

    .line 161
    new-array v0, v5, [B

    .line 162
    invoke-direct {p0, v0, v2, v5}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    .line 165
    :goto_0
    if-eqz v3, :cond_4

    .line 166
    const/16 v6, 0x400

    const-string v7, "Uncompressed packet: \n"

    if-le v5, v6, :cond_3

    .line 167
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-static {v0, v9}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 168
    new-array v6, v9, [B

    .line 169
    .local v6, "tempData":[B
    add-int/lit16 v8, v5, -0x100

    invoke-static {v0, v8, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v8, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v9}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 171
    iget-object v7, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v8, "Large packet dump truncated. Showing first and last 256 bytes."

    invoke-interface {v7, v8}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 172
    .end local v6    # "tempData":[B
    goto :goto_1

    .line 173
    :cond_3
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 177
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-eqz v6, :cond_6

    iget v7, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    array-length v6, v6

    if-ge v7, v6, :cond_6

    .line 178
    if-eqz v3, :cond_5

    .line 179
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v7, "Combining remaining packet with new: "

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 182
    :cond_5
    iget-object v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v7, v6

    iget v8, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int/2addr v7, v8

    .line 183
    .local v7, "remaining":I
    array-length v9, v0

    add-int/2addr v9, v7

    new-array v9, v9, [B

    .line 185
    .local v9, "newBuffer":[B
    invoke-static {v6, v8, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v6, v0

    invoke-static {v0, v2, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object v0, v9

    .line 191
    .end local v7    # "remaining":I
    .end local v9    # "newBuffer":[B
    :cond_6
    iput v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    .line 192
    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    .line 194
    return-void

    .line 120
    .end local v3    # "doTrace":Z
    .end local v4    # "compressedPacketLength":I
    .end local v5    # "uncompressedLength":I
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of input stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getNextPacketIfRequired(I)V
    .locals 2
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/2addr v1, p1

    array-length v0, v0

    if-le v1, v0, :cond_1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketFromServer()V

    .line 211
    :cond_1
    return-void
.end method

.method private final readFully([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    if-ltz p3, :cond_2

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 273
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 275
    .local v1, "count":I
    if-ltz v1, :cond_0

    .line 279
    add-int/2addr v0, v1

    .line 280
    .end local v1    # "count":I
    goto :goto_0

    .line 276
    .restart local v1    # "count":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 282
    .end local v1    # "count":I
    :cond_1
    return v0

    .line 267
    .end local v0    # "n":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 91
    :cond_0
    array-length v0, v0

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    .line 101
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 102
    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 103
    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 104
    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    .line 105
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketIfRequired(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    nop

    .line 224
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ioEx":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/CompressedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    if-eqz p1, :cond_2

    .line 242
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    .line 246
    if-gtz p3, :cond_0

    .line 247
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketIfRequired(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 257
    .local v0, "remainingBufferLength":I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 259
    .local v1, "consummedBytesLength":I
    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    iget v3, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    .line 262
    return v1

    .line 252
    .end local v0    # "remainingBufferLength":I
    .end local v1    # "consummedBytesLength":I
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ioEx":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1

    .line 243
    .end local v0    # "ioEx":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const-wide/16 v0, 0x0

    .line 292
    .local v0, "count":J
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/mysql/jdbc/CompressedInputStream;->read()I

    move-result v4

    .line 295
    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 296
    goto :goto_1

    .line 299
    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 292
    .end local v4    # "bytesRead":I
    add-long/2addr v2, v5

    goto :goto_0

    .line 302
    .end local v2    # "i":J
    :cond_1
    :goto_1
    return-wide v0
.end method
