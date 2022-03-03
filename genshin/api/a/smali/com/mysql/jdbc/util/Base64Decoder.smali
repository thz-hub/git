.class public Lcom/mysql/jdbc/util/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
    }
.end annotation


# static fields
.field private static decoderMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static decode([BII)[B
    .locals 16
    .param p0, "in"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .line 62
    move-object/from16 v0, p0

    new-instance v1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;

    move/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;-><init>(I)V

    .line 63
    .local v1, "offset":Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 65
    .local v4, "sestet":[B
    mul-int/lit8 v5, p2, 0x3

    div-int/2addr v5, v3

    .line 66
    .local v5, "outLen":I
    new-array v6, v5, [B

    .line 67
    .local v6, "octet":[B
    const/4 v7, 0x0

    .line 69
    .local v7, "octetId":I
    iget v8, v1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int v8, v8, p2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 70
    .local v8, "maxPos":I
    :cond_0
    :goto_0
    iget v10, v1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    const/4 v11, 0x0

    if-gt v10, v8, :cond_3

    .line 71
    sget-object v10, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v12

    aget-byte v10, v10, v12

    aput-byte v10, v4, v11

    .line 72
    sget-object v10, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v12

    aget-byte v10, v10, v12

    aput-byte v10, v4, v9

    .line 73
    sget-object v10, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v12

    aget-byte v10, v10, v12

    const/4 v12, 0x2

    aput-byte v10, v4, v12

    .line 74
    sget-object v10, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v13

    aget-byte v10, v10, v13

    const/4 v13, 0x3

    aput-byte v10, v4, v13

    .line 76
    aget-byte v10, v4, v9

    const/4 v14, -0x2

    if-eq v10, v14, :cond_1

    .line 77
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "octetId":I
    .local v10, "octetId":I
    aget-byte v11, v4, v11

    shl-int/2addr v11, v12

    aget-byte v15, v4, v9

    ushr-int/2addr v15, v3

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    move v7, v10

    .line 79
    .end local v10    # "octetId":I
    .restart local v7    # "octetId":I
    :cond_1
    aget-byte v10, v4, v12

    if-eq v10, v14, :cond_2

    .line 80
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "octetId":I
    .restart local v10    # "octetId":I
    aget-byte v11, v4, v9

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v3

    aget-byte v15, v4, v12

    ushr-int/2addr v15, v12

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    move v7, v10

    .line 82
    .end local v10    # "octetId":I
    .restart local v7    # "octetId":I
    :cond_2
    aget-byte v10, v4, v13

    if-eq v10, v14, :cond_0

    .line 83
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "octetId":I
    .restart local v10    # "octetId":I
    aget-byte v11, v4, v12

    and-int/2addr v11, v13

    shl-int/lit8 v11, v11, 0x6

    aget-byte v12, v4, v13

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    move v7, v10

    goto :goto_0

    .line 87
    .end local v10    # "octetId":I
    .restart local v7    # "octetId":I
    :cond_3
    new-array v3, v7, [B

    .line 88
    .local v3, "out":[B
    invoke-static {v6, v11, v3, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-object v3
.end method

.method private static getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B
    .locals 2
    .param p0, "in"    # [B
    .param p1, "pos"    # Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
    .param p2, "maxPos"    # I

    .line 51
    :goto_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    if-gt v0, p2, :cond_1

    .line 52
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    iget v1, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v1, p0, v1

    aget-byte v0, v0, v1

    if-ltz v0, :cond_0

    .line 53
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v0, p0, v0

    return v0

    .line 55
    :cond_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x3d

    return v0
.end method
