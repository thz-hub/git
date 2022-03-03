.class public Lcore/TimeCounter;
.super Ljava/lang/Object;
.source "TimeCounter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AimTime(I)Ljava/lang/String;
    .locals 8
    .param p0, "needTime"    # I

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    .local v0, "nowTime":Ljava/util/Date;
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    .line 17
    .local v1, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 20
    .local v3, "ts":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v5, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 22
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, "res":Ljava/lang/String;
    return-object v7
.end method

.method public static NeededTime(I)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # I

    .line 35
    div-int/lit16 v0, p0, 0xe10

    .line 36
    .local v0, "remainHours":I
    rem-int/lit16 v1, p0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 37
    .local v1, "remainminutes":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "NeededTime":Ljava/lang/String;
    return-object v2
.end method
