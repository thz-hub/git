.class public Lcom/mysql/jdbc/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static CACHING_SHA2_DIGEST_LENGTH:I = 0x0

.field private static final PVERSION41_CHAR:C = '*'

.field private static final SHA1_HASH_SIZE:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x20

    sput v0, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method private static charVal(C)I
    .locals 1
    .param p0, "c"    # C

    .line 45
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    goto :goto_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x61

    :goto_0
    add-int/lit8 v0, v0, 0xa

    :goto_1
    return v0
.end method

.method static createKeyFromOldPassword(Ljava/lang/String;)[B
    .locals 2
    .param p0, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcom/mysql/jdbc/Security;->makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/mysql/jdbc/Security;->getSaltFromPassword(Ljava/lang/String;)[I

    move-result-object v0

    .line 80
    .local v0, "salt":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Security;->getBinaryPassword([IZ)[B

    move-result-object v1

    return-object v1
.end method

.method static getBinaryPassword([IZ)[B
    .locals 7
    .param p0, "salt"    # [I
    .param p1, "usingNewPasswords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "val":I
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 95
    .local v1, "binaryPassword":[B
    if-eqz p1, :cond_2

    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 99
    aget v0, p0, v3

    .line 101
    const/4 v4, 0x3

    .local v4, "t":I
    :goto_1
    if-ltz v4, :cond_0

    .line 102
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 103
    shr-int/lit8 v0, v0, 0x8

    .line 101
    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_1

    .line 98
    .end local v4    # "t":I
    .end local v5    # "pos":I
    .restart local v2    # "pos":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    :cond_1
    return-object v1

    .line 110
    .end local v2    # "pos":I
    :cond_2
    const/4 v2, 0x0

    .line 112
    .local v2, "offset":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 113
    aget v0, p0, v3

    .line 115
    const/4 v4, 0x3

    .restart local v4    # "t":I
    :goto_3
    if-ltz v4, :cond_3

    .line 116
    add-int v5, v4, v2

    rem-int/lit16 v6, v0, 0x100

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 117
    shr-int/lit8 v0, v0, 0x8

    .line 115
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 120
    .end local v4    # "t":I
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 123
    .end local v3    # "i":I
    :cond_4
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 125
    .local v3, "md":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v3, v1, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 127
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method private static getSaltFromPassword(Ljava/lang/String;)[I
    .locals 8
    .param p0, "password"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 133
    .local v0, "result":[I
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 137
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2

    .line 139
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "saltInHex":Ljava/lang/String;
    const/4 v2, 0x0

    .line 143
    .local v2, "val":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 144
    shl-int/lit8 v4, v2, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/mysql/jdbc/Security;->charVal(C)I

    move-result v5

    add-int v2, v4, v5

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_1
    return-object v0

    .line 150
    .end local v1    # "saltInHex":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_2
    const/4 v1, 0x0

    .line 151
    .local v1, "resultPos":I
    const/4 v2, 0x0

    .line 152
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 154
    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, "val":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    const/16 v6, 0x8

    if-ge v5, v6, :cond_3

    .line 158
    shl-int/lit8 v6, v4, 0x4

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mysql/jdbc/Security;->charVal(C)I

    move-result v2

    add-int v4, v6, v2

    .line 157
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_2

    .line 161
    .end local v5    # "i":I
    .end local v7    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "resultPos":I
    .local v5, "resultPos":I
    aput v4, v0, v1

    .line 162
    .end local v4    # "val":I
    move v1, v5

    goto :goto_1

    .line 164
    .end local v5    # "resultPos":I
    .restart local v1    # "resultPos":I
    :cond_4
    return-object v0

    .line 134
    .end local v1    # "resultPos":I
    .end local v2    # "pos":I
    .end local v3    # "length":I
    :cond_5
    :goto_3
    return-object v0
.end method

.method private static longToHex(J)Ljava/lang/String;
    .locals 6
    .param p0, "val"    # J

    .line 168
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "longHex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 172
    .local v1, "length":I
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 173
    rsub-int/lit8 v2, v1, 0x8

    .line 174
    .local v2, "padding":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 177
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 185
    .end local v2    # "padding":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object v0

    .line 203
    .local v0, "passwordHash":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v1, "scramble":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static passwordHashStage1(Ljava/lang/String;)[B
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 247
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 248
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, "cleansedPassword":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 252
    .local v2, "passwordLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 255
    .local v4, "c":C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 256
    goto :goto_1

    .line 259
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .end local v4    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    return-object v3
.end method

.method static passwordHashStage2([B[B)[B
    .locals 3
    .param p0, "hashedPassword"    # [B
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 279
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 282
    .local v0, "md":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 284
    const/16 v2, 0x14

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 286
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "passwordEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 307
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 309
    .local v0, "md":Ljava/security/MessageDigest;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 311
    .local v1, "passwordHashStage1":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 313
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 314
    .local v2, "passwordHashStage2":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 316
    const-string v3, "ASCII"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 317
    .local v3, "seedAsBytes":[B
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 322
    .local v4, "toBeXord":[B
    array-length v5, v4

    .line 324
    .local v5, "numToXor":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_2

    .line 325
    aget-byte v7, v4, v6

    aget-byte v8, v1, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 328
    .end local v6    # "i":I
    :cond_2
    return-object v4
.end method

.method public static scrambleCachingSha2([B[B)[B
    .locals 6
    .param p0, "password"    # [B
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 356
    sget v1, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v2, v1, [B

    .line 357
    .local v2, "dig1":[B
    new-array v3, v1, [B

    .line 358
    .local v3, "dig2":[B
    new-array v1, v1, [B

    .line 361
    .local v1, "scramble1":[B
    array-length v4, p0

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 362
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 363
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 366
    array-length v4, v2

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 367
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v3, v5, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 368
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 371
    array-length v4, v2

    invoke-virtual {v0, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 372
    array-length v4, p1

    invoke-virtual {v0, p1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 373
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v1, v5, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 376
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v5, v4, [B

    .line 377
    .local v5, "mysqlScrambleBuff":[B
    invoke-static {v2, v5, v1, v4}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 379
    return-object v5

    .line 352
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "scramble1":[B
    .end local v2    # "dig1":[B
    .end local v3    # "dig2":[B
    .end local v5    # "mysqlScrambleBuff":[B
    :catch_0
    move-exception v1

    .line 353
    .restart local v0    # "md":Ljava/security/MessageDigest;
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/mysql/jdbc/AssertionFailedException;

    invoke-direct {v2, v1}, Lcom/mysql/jdbc/AssertionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static xorString([B[B[BI)V
    .locals 4
    .param p0, "from"    # [B
    .param p1, "to"    # [B
    .param p2, "scramble"    # [B
    .param p3, "length"    # I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "pos":I
    array-length v1, p2

    .line 229
    .local v1, "scrambleLength":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 230
    aget-byte v2, p0, v0

    rem-int v3, v0, v1

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method
