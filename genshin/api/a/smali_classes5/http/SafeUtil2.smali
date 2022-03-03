.class public Lhttp/SafeUtil2;
.super Ljava/lang/Object;
.source "SafeUtil2.java"


# instance fields
.field final l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhttp/SafeUtil2;->l:J

    return-void
.end method

.method public static GenerateMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plainText"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "secretBytes":[B
    :try_start_0
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 81
    nop

    .line 82
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "md5code":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    if-ge v2, v3, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 79
    .end local v1    # "md5code":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "\u6ca1\u6709\u8fd9\u4e2amd5\u7b97\u6cd5\uff01"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static GetRandomString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 27
    .local v0, "rand":Ljava/util/Random;
    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 28
    .local v2, "index":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTimeStamp()Ljava/lang/String;
    .locals 4

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 65
    .local v0, "ts":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static Get_DS()Ljava/lang/String;
    .locals 9

    .line 13
    const-string v0, "cx2y9z9a29tfqvr1qsq6c7yz99b5jsqt"

    .line 14
    .local v0, "n":Ljava/lang/String;
    invoke-static {}, Lhttp/SafeUtil2;->GetTimeStamp()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "i":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-static {v2}, Lhttp/SafeUtil2;->getRandomCharacterAndNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "r":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/4 v7, 0x2

    aput-object v2, v4, v7

    const-string v8, "salt={0}&t={1}&r={2}"

    invoke-static {v8, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhttp/SafeUtil2;->GenerateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "c":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    aput-object v4, v3, v7

    const-string v5, "{0},{1},{2}"

    invoke-static {v5, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getRandomCharacterAndNumber(I)Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I

    .line 32
    const-string v0, ""

    .line 33
    .local v0, "val":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 34
    .local v1, "random":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_4

    .line 35
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/2addr v4, v3

    const-string v5, "char"

    const-string v6, "num"

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    move-object v4, v6

    .line 37
    .local v4, "charOrNum":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/2addr v5, v3

    if-nez v5, :cond_1

    const/16 v3, 0x41

    goto :goto_2

    :cond_1
    const/16 v3, 0x61

    .line 40
    .local v3, "choice":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x1a

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v3    # "choice":I
    goto :goto_3

    .line 43
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 43
    :cond_3
    :goto_3
    nop

    .line 34
    .end local v4    # "charOrNum":Ljava/lang/String;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method
