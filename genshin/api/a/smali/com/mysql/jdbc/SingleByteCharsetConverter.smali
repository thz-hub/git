.class public Lcom/mysql/jdbc/SingleByteCharsetConverter;
.super Ljava/lang/Object;
.source "SingleByteCharsetConverter.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/SingleByteCharsetConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static allBytes:[B

.field private static unknownCharsMap:[B


# instance fields
.field private byteToChars:[C

.field private charToByteMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    .line 44
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    .line 47
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 48
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    add-int/lit16 v2, v0, 0x80

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 52
    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "encodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/16 v0, 0x100

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    .line 123
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    .line 134
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 135
    .local v1, "allBytesString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, "allBytesLen":I
    sget-object v4, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    array-length v6, v5

    invoke-static {v4, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    if-ge v3, v2, :cond_0

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 141
    .local v4, "c":C
    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aput-char v4, v5, v3

    .line 142
    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    sget-object v6, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    aget-byte v6, v6, v3

    aput-byte v6, v5, v4

    .line 139
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 3
    .param p0, "encodingName"    # Ljava/lang/String;
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 70
    .local v1, "instance":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    if-nez v1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 74
    :cond_0
    monitor-exit v0

    return-object v1

    .line 67
    .end local v1    # "instance":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .end local p0    # "encodingName":Ljava/lang/String;
    .end local p1    # "conn":Lcom/mysql/jdbc/Connection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 4
    .param p0, "javaEncodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 90
    return-object v0

    .line 96
    :cond_0
    nop

    .line 98
    new-instance v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0

    .line 92
    .end local v0    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 94
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v0
.end method

.method public static toStringDefaultEncoding([BII)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final toBytes(Ljava/lang/String;)[B
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    .local v0, "length":I
    new-array v1, v0, [B

    .line 214
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 215
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final toBytes(Ljava/lang/String;II)[B
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    if-nez p3, :cond_1

    .line 261
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 264
    :cond_1
    new-array v0, p3, [B

    .line 266
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 267
    add-int v2, v1, p2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    .local v2, "c":C
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v3, v3, v2

    aput-byte v3, v0, v1

    .line 266
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public final toBytes([C)[B
    .locals 5
    .param p1, "c"    # [C

    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    array-length v0, p1

    .line 152
    .local v0, "length":I
    new-array v1, v0, [B

    .line 154
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 155
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v4, p1, v2

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final toBytes([CII)[B
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    if-nez p3, :cond_1

    .line 187
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 190
    :cond_1
    new-array v0, p3, [B

    .line 192
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 193
    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    add-int v3, v1, p2

    aget-char v3, p1, v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public final toBytesWrapped(Ljava/lang/String;CC)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "beginWrap"    # C
    .param p3, "endWrap"    # C

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 228
    .local v0, "stringLength":I
    add-int/lit8 v1, v0, 0x2

    .line 230
    .local v1, "length":I
    new-array v2, v1, [B

    .line 232
    .local v2, "bytes":[B
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p2

    aput-byte v4, v2, v3

    .line 234
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 235
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p3

    aput-byte v4, v2, v3

    .line 240
    return-object v2
.end method

.method public final toBytesWrapped([CCC)[B
    .locals 7
    .param p1, "c"    # [C
    .param p2, "beginWrap"    # C
    .param p3, "endWrap"    # C

    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    .line 167
    .local v0, "length":I
    array-length v1, p1

    .line 169
    .local v1, "charLength":I
    new-array v2, v0, [B

    .line 170
    .local v2, "bytes":[B
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p2

    aput-byte v4, v2, v3

    .line 172
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 173
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v6, p1, v3

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p3

    aput-byte v4, v2, v3

    .line 178
    return-object v2
.end method

.method public final toString([B)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # [B

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "startPos"    # I
    .param p3, "length"    # I

    .line 299
    new-array v0, p3, [C

    .line 300
    .local v0, "charArray":[C
    move v1, p2

    .line 302
    .local v1, "readpoint":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aget-byte v4, p1, v1

    add-int/lit16 v4, v4, 0x80

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
