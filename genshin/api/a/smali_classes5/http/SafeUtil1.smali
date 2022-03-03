.class public Lhttp/SafeUtil1;
.super Ljava/lang/Object;
.source "SafeUtil1.java"


# instance fields
.field final l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhttp/SafeUtil1;->l:J

    return-void
.end method

.method public static GenerateMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plainText"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "secretBytes":[B
    :try_start_0
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 65
    nop

    .line 66
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "md5code":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    if-ge v2, v3, :cond_0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 63
    .end local v1    # "md5code":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "\u6ca1\u6709\u8fd9\u4e2amd5\u7b97\u6cd5\uff01"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static GetRandomString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 35
    .local v0, "rand":Ljava/util/Random;
    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 36
    .local v2, "index":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTimeStamp()Ljava/lang/String;
    .locals 4

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 49
    .local v0, "ts":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static Get_DS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "q"    # Ljava/lang/String;

    .line 13
    const-string v0, "xV8v4Qu54lUKrEYFZkJhB8cuOh9Asafs"

    .line 14
    .local v0, "n":Ljava/lang/String;
    invoke-static {}, Lhttp/SafeUtil1;->GetTimeStamp()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "i":Ljava/lang/String;
    invoke-static {}, Lhttp/SafeUtil1;->GetRandomString()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "r":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    aput-object v2, v3, v6

    const/4 v7, 0x3

    aput-object p0, v3, v7

    const/4 v8, 0x4

    aput-object p1, v3, v8

    const-string v8, "salt={0}&t={1}&r={2}&b={3}&q={4}"

    invoke-static {v8, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhttp/SafeUtil1;->GenerateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "c":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v2, v7, v5

    aput-object v3, v7, v6

    const-string v4, "{0},{1},{2}"

    invoke-static {v4, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
