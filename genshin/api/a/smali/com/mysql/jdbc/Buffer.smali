.class public Lcom/mysql/jdbc/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final MAX_BYTES_TO_DUMP:I = 0x200

.field static final NO_LENGTH_LIMIT:I = -0x1

.field static final NULL_LENGTH:J = -0x1L

.field public static final TYPE_ID_AUTH_SWITCH:S = 0xfes

.field public static final TYPE_ID_EOF:S = 0xfes

.field public static final TYPE_ID_ERROR:S = 0xffs

.field public static final TYPE_ID_LOCAL_INFILE:S = 0xfbs

.field public static final TYPE_ID_OK:S


# instance fields
.field private bufLength:I

.field private byteBuffer:[B

.field private position:I

.field protected wasMultiPacket:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 62
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 63
    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 58
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 59
    return-void
.end method


# virtual methods
.method final clear()V
    .locals 1

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 69
    return-void
.end method

.method final dump(I)Ljava/lang/String;
    .locals 2
    .param p1, "numBytes"    # I

    .line 76
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final dump()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    .line 73
    return-void
.end method

.method final dumpClampedBytes(I)Ljava/lang/String;
    .locals 4
    .param p1, "numBytes"    # I

    .line 80
    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    move v0, p1

    .line 82
    .local v0, "numBytesToDump":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "dumped":Ljava/lang/String;
    if-ge v0, p1, :cond_3

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ....(packet exceeds max. dump length)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 89
    :cond_3
    return-object v1
.end method

.method final dumpHeader()V
    .locals 5

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "hexVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    .end local v1    # "hexVal":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method final dumpNBytes(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "nBytes"    # I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "asciiBuf":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "hexVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v3

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_1
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .end local v2    # "hexVal":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method final ensureCapacity(I)V
    .locals 8
    .param p1, "additionalData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 130
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    array-length v0, v1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    goto :goto_0

    .line 139
    :cond_0
    array-length v0, v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 141
    .local v0, "newLength":I
    array-length v2, v1

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_1

    .line 142
    array-length v2, v1

    int-to-double v6, p1

    mul-double v6, v6, v4

    double-to-int v3, v6

    add-int v0, v2, v3

    .line 145
    :cond_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 146
    array-length v2, v1

    add-int v0, v2, p1

    .line 149
    :cond_2
    new-array v2, v0, [B

    .line 151
    .local v2, "newBytes":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 153
    array-length v1, v2

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 156
    .end local v0    # "newLength":I
    .end local v2    # "newBytes":[B
    :cond_3
    :goto_0
    return-void
.end method

.method public fastSkipLenByteArray()V
    .locals 5

    .line 172
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 174
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v3, v2

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 179
    return-void

    .line 175
    :cond_1
    :goto_0
    return-void
.end method

.method public fastSkipLenString()I
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 166
    .local v0, "len":J
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v3, v2

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 168
    long-to-int v2, v0

    return v2
.end method

.method public getBufLength()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    return v0
.end method

.method protected final getBufferSource()[B
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method public getByteBuffer()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method final getBytes(I)[B
    .locals 4
    .param p1, "len"    # I

    .line 199
    new-array v0, p1, [B

    .line 200
    .local v0, "b":[B
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 203
    return-object v0
.end method

.method getBytes(II)[B
    .locals 3
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 212
    new-array v0, p2, [B

    .line 213
    .local v0, "dest":[B
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v0
.end method

.method getCapacity()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteArrayBuffer.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return v0
.end method

.method final isAuthMethodSwitchRequestPacket()Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isEOFPacket()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isOKPacket()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isRawPacket()Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isResultSetOKPacket()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const v2, 0xffffff

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final newReadLength()J
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 258
    .local v0, "sw":I
    packed-switch v0, :pswitch_data_0

    .line 272
    int-to-long v1, v0

    return-wide v1

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v1

    return-wide v1

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 263
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 260
    :pswitch_3
    const-wide/16 v1, 0x0

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readByte()B
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method final readByte(I)B
    .locals 1
    .param p1, "readAt"    # I

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method final readFieldLength()J
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 287
    .local v0, "sw":I
    packed-switch v0, :pswitch_data_0

    .line 301
    int-to-long v1, v0

    return-wide v1

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v1

    return-wide v1

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 292
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 289
    :pswitch_3
    const-wide/16 v1, -0x1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readInt()I
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 308
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method final readIntAsLong()I
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 314
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method final readLenByteArray(I)[B
    .locals 5
    .param p1, "offset"    # I

    .line 318
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 320
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 321
    const/4 v2, 0x0

    return-object v2

    .line 324
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 325
    sget-object v2, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    return-object v2

    .line 328
    :cond_1
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 330
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v2

    return-object v2
.end method

.method final readLength()J
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 336
    .local v0, "sw":I
    packed-switch v0, :pswitch_data_0

    .line 350
    int-to-long v1, v0

    return-wide v1

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v1

    return-wide v1

    .line 344
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 341
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 338
    :pswitch_3
    const-wide/16 v1, 0x0

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readLong()J
    .locals 9

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 357
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v5, v7

    const/16 v2, 0x8

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long v1, v2, v5

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method final readLongInt()I
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 364
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method final readLongLong()J
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 370
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v5, v2

    const/16 v2, 0x8

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long v1, v2, v5

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    or-long/2addr v1, v5

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    const/16 v3, 0x30

    shl-long/2addr v5, v3

    or-long/2addr v1, v5

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 6

    .line 402
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 403
    .local v0, "i":I
    const/4 v1, 0x0

    .line 404
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    .line 406
    .local v2, "maxLen":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v3, v4, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "s":Ljava/lang/String;
    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 414
    return-object v3
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 6
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 426
    .local v0, "i":I
    const/4 v1, 0x0

    .line 427
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    .line 429
    .local v2, "maxLen":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v3, v4, v1, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 435
    return-object v3

    .line 440
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 436
    :catch_0
    move-exception v3

    .line 437
    .local v3, "uEE":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ByteArrayBuffer.1"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1009"

    invoke-static {v4, v5, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "maxLen":I
    .end local p1    # "encoding":Ljava/lang/String;
    .end local p2    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    .end local v3    # "uEE":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "maxLen":I
    .restart local p1    # "encoding":Ljava/lang/String;
    .restart local p2    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    :goto_1
    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw v3
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 448
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    const-string v2, "S1009"

    if-gt v0, v1, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v1, p3, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 453
    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "uEE":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ByteArrayBuffer.1"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "encoding":Ljava/lang/String;
    .end local p2    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    .end local p3    # "expectedLength":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    .end local v0    # "uEE":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "encoding":Ljava/lang/String;
    .restart local p2    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    .restart local p3    # "expectedLength":I
    :goto_0
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw v0

    .line 449
    :cond_0
    const-string v0, "ByteArrayBuffer.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method final readnBytes()I
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 378
    .local v1, "sw":I
    packed-switch v1, :pswitch_data_0

    .line 392
    return v3

    .line 389
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v2

    long-to-int v0, v2

    return v0

    .line 386
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    return v0

    .line 383
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    return v0

    .line 380
    :pswitch_3
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/2addr v0, v3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBufLength(I)V
    .locals 0
    .param p1, "bufLengthToSet"    # I

    .line 463
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 464
    return-void
.end method

.method public setByteBuffer([B)V
    .locals 0
    .param p1, "byteBufferToSet"    # [B

    .line 473
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 474
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "positionToSet"    # I

    .line 483
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 484
    return-void
.end method

.method public setWasMultiPacket(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 493
    iput-boolean p1, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dumpClampedBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSuperString()Ljava/lang/String;
    .locals 1

    .line 502
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasMultiPacket()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    return v0
.end method

.method public final writeByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 517
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aput-byte p1, v0, v1

    .line 518
    return-void
.end method

.method public final writeBytesNoNull([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    array-length v0, p1

    .line 523
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 524
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 526
    return-void
.end method

.method final writeBytesNoNull([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 533
    return-void
.end method

.method final writeDouble(D)V
    .locals 2
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 536
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 537
    .local v0, "l":J
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    .line 538
    return-void
.end method

.method final writeFieldLength(J)V
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 541
    const-wide/16 v0, 0xfb

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 542
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_0

    .line 543
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 544
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 545
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 546
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    goto :goto_0

    .line 547
    :cond_1
    const-wide/32 v0, 0x1000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 548
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 549
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 550
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto :goto_0

    .line 552
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 553
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    .line 556
    :goto_0
    return-void
.end method

.method final writeFloat(F)V
    .locals 5
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 561
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 562
    .local v0, "i":I
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 563
    .local v1, "b":[B
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 564
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 565
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 566
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 567
    return-void
.end method

.method final writeInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 572
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 573
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 574
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 575
    return-void
.end method

.method final writeLenBytes([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 579
    array-length v0, p1

    .line 580
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x9

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 581
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    .line 582
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 584
    return-void
.end method

.method final writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p5, "parserKnowsUnicode"    # Z
    .param p6, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, "b":[B
    if-eqz p4, :cond_0

    .line 592
    invoke-virtual {p4, p1}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_0
    invoke-interface {p6}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 597
    :goto_0
    array-length v1, v0

    .line 598
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x9

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 599
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    .line 600
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 602
    return-void
.end method

.method final writeLong(J)V
    .locals 5
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 605
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 607
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 608
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 609
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x8

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 610
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 611
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v1, 0x18

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 612
    return-void
.end method

.method final writeLongInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 615
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 616
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 617
    .local v0, "b":[B
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 618
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 619
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 620
    return-void
.end method

.method final writeLongLong(J)V
    .locals 6
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 623
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 624
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 625
    .local v1, "b":[B
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    .line 626
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 627
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 628
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 629
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 630
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 631
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 632
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    .line 633
    return-void
.end method

.method final writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 638
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 640
    return-void
.end method

.method final writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 644
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 646
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move-object v6, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    nop

    .line 651
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 652
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "ue":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method final writeStringNoNull(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 657
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 658
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 665
    return-void
.end method

.method final writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "parserKnowsUnicode"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 670
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 672
    .local v0, "b":[B
    array-length v1, v0

    .line 673
    .local v1, "len":I
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 674
    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 676
    return-void
.end method
