.class public Lcom/mysql/jdbc/profiler/ProfilerEvent;
.super Ljava/lang/Object;
.source "ProfilerEvent.java"


# static fields
.field public static final NA:B = -0x1t

.field public static final TYPE_EXECUTE:B = 0x4t

.field public static final TYPE_FETCH:B = 0x5t

.field public static final TYPE_OBJECT_CREATION:B = 0x1t

.field public static final TYPE_PREPARE:B = 0x2t

.field public static final TYPE_QUERY:B = 0x3t

.field public static final TYPE_SLOW_QUERY:B = 0x6t

.field public static final TYPE_USAGE:B

.field public static final TYPE_WARN:B


# instance fields
.field protected catalog:Ljava/lang/String;

.field public catalogIndex:I

.field protected connectionId:J

.field protected durationUnits:Ljava/lang/String;

.field protected eventCreationPointDesc:Ljava/lang/String;

.field public eventCreationPointIndex:I

.field protected eventCreationTime:J

.field protected eventDuration:J

.field protected eventType:B

.field protected hostName:Ljava/lang/String;

.field public hostNameIndex:I

.field protected message:Ljava/lang/String;

.field protected resultSetId:I

.field protected statementId:I


# direct methods
.method private constructor <init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 13
    .param p1, "eventType"    # B
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "connectionId"    # J
    .param p6, "statementId"    # I
    .param p7, "resultSetId"    # I
    .param p8, "eventCreationTime"    # J
    .param p10, "eventDuration"    # J
    .param p12, "durationUnits"    # Ljava/lang/String;
    .param p13, "eventCreationPointDesc"    # Ljava/lang/String;
    .param p14, "message"    # Ljava/lang/String;
    .param p15, "hostNameIndex"    # I
    .param p16, "catalogIndex"    # I
    .param p17, "eventCreationPointIndex"    # I

    .line 184
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    move v1, p1

    iput-byte v1, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    .line 187
    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    iput-object v3, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostName:Ljava/lang/String;

    .line 188
    if-nez p3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    iput-object v3, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalog:Ljava/lang/String;

    .line 189
    move-wide/from16 v3, p4

    iput-wide v3, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    .line 190
    move/from16 v5, p6

    iput v5, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    .line 191
    move/from16 v6, p7

    iput v6, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    .line 192
    move-wide/from16 v7, p8

    iput-wide v7, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    .line 193
    move-wide/from16 v9, p10

    iput-wide v9, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    .line 194
    if-nez p12, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p12

    :goto_2
    iput-object v11, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    .line 195
    if-nez p13, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p13

    :goto_3
    iput-object v11, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    .line 196
    if-nez p14, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v2, p14

    :goto_4
    iput-object v2, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    .line 197
    move/from16 v2, p15

    iput v2, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostNameIndex:I

    .line 198
    move/from16 v11, p16

    iput v11, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalogIndex:I

    .line 199
    move/from16 v12, p17

    iput v12, v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointIndex:I

    .line 200
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 18
    .param p1, "eventType"    # B
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "connectionId"    # J
    .param p6, "statementId"    # I
    .param p7, "resultSetId"    # I
    .param p8, "eventDuration"    # J
    .param p10, "durationUnits"    # Ljava/lang/String;
    .param p11, "eventCreationPoint"    # Ljava/lang/Throwable;
    .param p12, "message"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v14, p12

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static/range {p11 .. p11}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v0 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 180
    return-void
.end method

.method private static readBytes([BI)[B
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "pos"    # I

    .line 496
    invoke-static {p0, p1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v0

    .line 497
    .local v0, "length":I
    new-array v1, v0, [B

    .line 498
    .local v1, "msg":[B
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    return-object v1
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "pos"    # I

    .line 486
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private static readLong([BI)J
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "pos"    # I

    .line 490
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x8

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x10

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x30

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static unpack([B)Lcom/mysql/jdbc/profiler/ProfilerEvent;
    .locals 38
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 375
    .local v1, "pos":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v1, v0, v1

    .local v1, "eventType":B
    move v4, v1

    .line 377
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v15

    .line 378
    .local v15, "host":[B
    array-length v3, v15

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 380
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v6

    .line 381
    .local v6, "db":[B
    array-length v3, v6

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 383
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readLong([BI)J

    move-result-wide v21

    .local v21, "connectionId":J
    move-wide/from16 v7, v21

    .line 384
    add-int/lit8 v2, v2, 0x8

    .line 385
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v23

    .local v23, "statementId":I
    move/from16 v9, v23

    .line 386
    add-int/lit8 v2, v2, 0x4

    .line 387
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v24

    .local v24, "resultSetId":I
    move/from16 v10, v24

    .line 388
    add-int/lit8 v2, v2, 0x4

    .line 389
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readLong([BI)J

    move-result-wide v25

    .local v25, "eventCreationTime":J
    move-wide/from16 v11, v25

    .line 390
    add-int/lit8 v2, v2, 0x8

    .line 391
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readLong([BI)J

    move-result-wide v27

    .local v27, "eventDuration":J
    move-wide/from16 v13, v27

    .line 392
    add-int/lit8 v2, v2, 0x8

    .line 394
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v5

    .line 395
    .local v5, "eventDurationUnits":[B
    array-length v3, v5

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 397
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v3

    .line 398
    .local v3, "eventCreationAsBytes":[B
    move/from16 v29, v1

    .end local v1    # "eventType":B
    .local v29, "eventType":B
    array-length v1, v3

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    .line 400
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v1

    .line 401
    .local v1, "message":[B
    move-object/from16 v16, v3

    .end local v3    # "eventCreationAsBytes":[B
    .local v16, "eventCreationAsBytes":[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 403
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v30

    .local v30, "hostNameIndex":I
    move/from16 v18, v30

    .line 404
    add-int/lit8 v2, v2, 0x4

    .line 405
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v31

    .local v31, "catalogIndex":I
    move/from16 v19, v31

    .line 406
    add-int/lit8 v2, v2, 0x4

    .line 407
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v32

    .local v32, "eventCreationPointIndex":I
    move/from16 v20, v32

    .line 408
    add-int/lit8 v2, v2, 0x4

    .line 411
    new-instance v33, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    move-object/from16 v0, v16

    .end local v16    # "eventCreationAsBytes":[B
    .local v0, "eventCreationAsBytes":[B
    move-object/from16 v3, v33

    move/from16 v34, v2

    .end local v2    # "pos":I
    .local v34, "pos":I
    const-string v2, "ISO8859_1"

    invoke-static {v15, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v35, v3

    move-object v3, v5

    .end local v5    # "eventDurationUnits":[B
    .local v3, "eventDurationUnits":[B
    move-object/from16 v5, v16

    invoke-static {v6, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v36, v6

    .end local v6    # "db":[B
    .local v36, "db":[B
    move-object/from16 v6, v16

    invoke-static {v3, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v37, v15

    .end local v15    # "host":[B
    .local v37, "host":[B
    move-object/from16 v15, v16

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v2, v3

    move-object/from16 v3, v35

    .end local v3    # "eventDurationUnits":[B
    .local v2, "eventDurationUnits":[B
    invoke-direct/range {v3 .. v20}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v33
.end method

.method private static writeBytes([B[BI)I
    .locals 2
    .param p0, "msg"    # [B
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 480
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result p2

    .line 481
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    array-length v0, p0

    add-int/2addr v0, p2

    return v0
.end method

.method private static writeInt(I[BI)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 460
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .local v0, "pos":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 461
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "pos":I
    .restart local p2    # "pos":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 462
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .restart local v0    # "pos":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 463
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "pos":I
    .restart local p2    # "pos":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 464
    return p2
.end method

.method private static writeLong(J[BI)I
    .locals 3
    .param p0, "l"    # J
    .param p2, "buf"    # [B
    .param p3, "pos"    # I

    .line 468
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .local v0, "pos":I
    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 469
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 470
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 471
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 472
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 473
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 474
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 475
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const/16 v1, 0x38

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 476
    return p3
.end method


# virtual methods
.method public getCatalog()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalog:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionId()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    return-wide v0
.end method

.method public getDurationUnits()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreationPointAsString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreationTime()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    return-wide v0
.end method

.method public getEventDuration()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    return-wide v0
.end method

.method public getEventType()B
    .locals 1

    .line 208
    iget-byte v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetId()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    return v0
.end method

.method public getStatementId()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    return v0
.end method

.method public pack()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostName:Ljava/lang/String;

    const-string v1, "ISO8859_1"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 428
    .local v0, "hostNameAsBytes":[B
    iget-object v2, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalog:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 429
    .local v2, "dbAsBytes":[B
    iget-object v3, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 430
    .local v3, "durationUnitsAsBytes":[B
    iget-object v4, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 431
    .local v4, "eventCreationAsBytes":[B
    iget-object v5, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 433
    .local v1, "messageAsBytes":[B
    array-length v5, v0

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x8

    array-length v6, v3

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    array-length v6, v4

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    array-length v6, v1

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    .line 438
    .local v5, "len":I
    new-array v6, v5, [B

    .line 439
    .local v6, "buf":[B
    const/4 v7, 0x0

    .line 440
    .local v7, "pos":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    iget-byte v9, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    aput-byte v9, v6, v7

    .line 441
    invoke-static {v0, v6, v8}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v7

    .line 442
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    invoke-static {v2, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v7

    .line 443
    iget-wide v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    invoke-static {v8, v9, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v7

    .line 444
    iget v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    invoke-static {v8, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v7

    .line 445
    iget v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    invoke-static {v8, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v7

    .line 446
    iget-wide v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    invoke-static {v8, v9, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v7

    .line 447
    iget-wide v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    invoke-static {v8, v9, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v7

    .line 448
    invoke-static {v3, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v7

    .line 449
    invoke-static {v4, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v7

    .line 450
    invoke-static {v1, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v7

    .line 452
    iget v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostNameIndex:I

    invoke-static {v8, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v7

    .line 453
    iget v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalogIndex:I

    invoke-static {v8, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v7

    .line 454
    iget v8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointIndex:I

    invoke-static {v8, v6, v7}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v7

    .line 456
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 334
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :pswitch_0
    const-string v1, "SLOW QUERY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    goto :goto_0

    .line 316
    :pswitch_1
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    goto :goto_0

    .line 313
    :pswitch_2
    const-string v1, "EXECUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    goto :goto_0

    .line 325
    :pswitch_3
    const-string v1, "QUERY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    goto :goto_0

    .line 322
    :pswitch_4
    const-string v1, "PREPARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    goto :goto_0

    .line 319
    :pswitch_5
    const-string v1, "CONSTRUCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    goto :goto_0

    .line 328
    :pswitch_6
    const-string v1, "USAGE ADVISOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    nop

    .line 336
    :goto_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, " [Created on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-wide v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", connection-id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-wide v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", statement-id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, ", resultset-id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", hostNameIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->hostNameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ", catalogIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalogIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, ", eventCreationPointIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
