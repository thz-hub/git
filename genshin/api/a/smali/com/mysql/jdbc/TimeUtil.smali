.class public Lcom/mysql/jdbc/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field private static final TIME_ZONE_MAPPINGS_RESOURCE:Ljava/lang/String; = "/com/mysql/jdbc/TimeZoneMapping.properties"

.field protected static final systemNanoTimeMethod:Ljava/lang/reflect/Method;

.field private static timeZoneMappings:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 47
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 60
    :try_start_0
    const-class v1, Ljava/lang/System;

    const-string v2, "nanoTime"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "aMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 63
    .end local v0    # "aMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 64
    .restart local v0    # "aMethod":Ljava/lang/reflect/Method;
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    goto :goto_1

    .line 61
    .end local v0    # "aMethod":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 62
    .restart local v0    # "aMethod":Ljava/lang/reflect/Method;
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    .line 65
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 67
    :goto_1
    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    .line 68
    .end local v0    # "aMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTimestampNanosPrecision(Ljava/sql/Timestamp;IZ)Ljava/sql/Timestamp;
    .locals 10
    .param p0, "ts"    # Ljava/sql/Timestamp;
    .param p1, "fsp"    # I
    .param p2, "serverRoundFracSecs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    if-ltz p1, :cond_2

    const/4 v0, 0x6

    if-gt p1, v0, :cond_2

    .line 506
    invoke-virtual {p0}, Ljava/sql/Timestamp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    .line 507
    .local v0, "res":Ljava/sql/Timestamp;
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    .line 508
    .local v1, "nanos":I
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v4, p1, 0x9

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 510
    .local v2, "tail":D
    if-eqz p2, :cond_0

    .line 511
    int-to-double v4, v1

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    double-to-int v4, v2

    mul-int v5, v5, v4

    .line 512
    .end local v1    # "nanos":I
    .local v5, "nanos":I
    const v1, 0x3b9ac9ff

    if-le v5, v1, :cond_1

    .line 513
    const v1, 0x3b9aca00

    rem-int/2addr v5, v1

    .line 514
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/sql/Timestamp;->setTime(J)V

    goto :goto_0

    .line 517
    .end local v5    # "nanos":I
    .restart local v1    # "nanos":I
    :cond_0
    int-to-double v4, v1

    div-double/2addr v4, v2

    double-to-int v4, v4

    double-to-int v5, v2

    mul-int v5, v5, v4

    .line 519
    .end local v1    # "nanos":I
    .restart local v5    # "nanos":I
    :cond_1
    :goto_0
    invoke-virtual {v0, v5}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 521
    return-object v0

    .line 503
    .end local v0    # "res":Ljava/sql/Timestamp;
    .end local v2    # "tail":D
    .end local v5    # "nanos":I
    :cond_2
    const/4 v0, 0x0

    const-string v1, "fsp value must be in 0 to 6 range."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 9
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sessionCalendar"    # Ljava/util/Calendar;
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "t"    # Ljava/sql/Time;
    .param p4, "fromTz"    # Ljava/util/TimeZone;
    .param p5, "toTz"    # Ljava/util/TimeZone;
    .param p6, "rollForward"    # Z

    .line 110
    if-eqz p0, :cond_2

    .line 111
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForTimeType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "fromCal":Ljava/util/Calendar;
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 116
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 117
    .local v2, "fromOffset":I
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 118
    .local v4, "toCal":Ljava/util/Calendar;
    invoke-virtual {v4, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 120
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 121
    .local v1, "toOffset":I
    sub-int v3, v2, v1

    .line 122
    .local v3, "offsetDiff":I
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 124
    .local v5, "toTime":J
    if-eqz p6, :cond_0

    .line 125
    int-to-long v7, v3

    add-long/2addr v5, v7

    goto :goto_0

    .line 127
    :cond_0
    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 130
    :goto_0
    new-instance v7, Ljava/sql/Time;

    invoke-direct {v7, v5, v6}, Ljava/sql/Time;-><init>(J)V

    .line 132
    .local v7, "changedTime":Ljava/sql/Time;
    return-object v7

    .line 133
    .end local v0    # "fromCal":Ljava/util/Calendar;
    .end local v1    # "toOffset":I
    .end local v2    # "fromOffset":I
    .end local v3    # "offsetDiff":I
    .end local v4    # "toCal":Ljava/util/Calendar;
    .end local v5    # "toTime":J
    .end local v7    # "changedTime":Ljava/sql/Time;
    :cond_1
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    if-eqz p2, :cond_2

    .line 136
    new-instance v0, Ljava/sql/Time;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    .line 138
    .local v0, "adjustedTime":Ljava/sql/Time;
    return-object v0

    .line 143
    .end local v0    # "adjustedTime":Ljava/sql/Time;
    :cond_2
    return-object p3
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 9
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sessionCalendar"    # Ljava/util/Calendar;
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tstamp"    # Ljava/sql/Timestamp;
    .param p4, "fromTz"    # Ljava/util/TimeZone;
    .param p5, "toTz"    # Ljava/util/TimeZone;
    .param p6, "rollForward"    # Z

    .line 162
    if-eqz p0, :cond_2

    .line 163
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 166
    .local v0, "fromCal":Ljava/util/Calendar;
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 168
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 169
    .local v2, "fromOffset":I
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 170
    .local v4, "toCal":Ljava/util/Calendar;
    invoke-virtual {v4, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 173
    .local v1, "toOffset":I
    sub-int v3, v2, v1

    .line 174
    .local v3, "offsetDiff":I
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 176
    .local v5, "toTime":J
    if-eqz p6, :cond_0

    .line 177
    int-to-long v7, v3

    add-long/2addr v5, v7

    goto :goto_0

    .line 179
    :cond_0
    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 182
    :goto_0
    new-instance v7, Ljava/sql/Timestamp;

    invoke-direct {v7, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    .line 184
    .local v7, "changedTimestamp":Ljava/sql/Timestamp;
    return-object v7

    .line 185
    .end local v0    # "fromCal":Ljava/util/Calendar;
    .end local v1    # "toOffset":I
    .end local v2    # "fromOffset":I
    .end local v3    # "offsetDiff":I
    .end local v4    # "toCal":Ljava/util/Calendar;
    .end local v5    # "toTime":J
    .end local v7    # "changedTimestamp":Ljava/sql/Timestamp;
    :cond_1
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    if-eqz p2, :cond_2

    .line 188
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 190
    .local v0, "adjustedTimestamp":Ljava/sql/Timestamp;
    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 192
    return-object v0

    .line 197
    .end local v0    # "adjustedTimestamp":Ljava/sql/Timestamp;
    :cond_2
    return-object p3
.end method

.method static final fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "targetCalendar"    # Ljava/util/Calendar;

    .line 266
    if-nez p3, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 268
    .local v0, "dateCal":Ljava/util/Calendar;
    :goto_0
    monitor-enter v0

    .line 269
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v1

    .line 271
    .local v8, "origCalDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 274
    add-int/lit8 v3, p1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move v2, p0

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 275
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 279
    .local v1, "dateAsMillis":J
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v1    # "dateAsMillis":J
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 279
    .restart local v1    # "dateAsMillis":J
    monitor-exit v0

    return-object v3

    .line 281
    .end local v1    # "dateAsMillis":J
    :catchall_0
    move-exception v1

    .line 283
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 281
    nop

    .end local v0    # "dateCal":Ljava/util/Calendar;
    .end local p0    # "year":I
    .end local p1    # "month":I
    .end local p2    # "day":I
    .end local p3    # "targetCalendar":Ljava/util/Calendar;
    throw v1

    .line 283
    .end local v8    # "origCalDate":Ljava/util/Date;
    .restart local v0    # "dateCal":Ljava/util/Calendar;
    .restart local p0    # "year":I
    .restart local p1    # "month":I
    .restart local p2    # "day":I
    .restart local p3    # "targetCalendar":Ljava/util/Calendar;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static final fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 9
    .param p0, "useGmtConversion"    # Z
    .param p1, "gmtCalIfNeeded"    # Ljava/util/Calendar;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .line 234
    move-object v0, p2

    .line 236
    .local v0, "dateCal":Ljava/util/Calendar;
    if-eqz p0, :cond_1

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 242
    :cond_0
    move-object v0, p1

    move-object v7, v0

    goto :goto_0

    .line 236
    :cond_1
    move-object v7, v0

    .line 245
    .end local v0    # "dateCal":Ljava/util/Calendar;
    .local v7, "dateCal":Ljava/util/Calendar;
    :goto_0
    monitor-enter v7

    .line 246
    :try_start_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 248
    .local v8, "origCalDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 249
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 252
    add-int/lit8 v2, p4, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p3

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 254
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 256
    .local v0, "dateAsMillis":J
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v0    # "dateAsMillis":J
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 256
    .restart local v0    # "dateAsMillis":J
    monitor-exit v7

    return-object v2

    .line 258
    .end local v0    # "dateAsMillis":J
    :catchall_0
    move-exception v0

    .line 260
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 258
    nop

    .end local v7    # "dateCal":Ljava/util/Calendar;
    .end local p0    # "useGmtConversion":Z
    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .end local p2    # "cal":Ljava/util/Calendar;
    .end local p3    # "year":I
    .end local p4    # "month":I
    .end local p5    # "day":I
    throw v0

    .line 260
    .end local v8    # "origCalDate":Ljava/util/Date;
    .restart local v7    # "dateCal":Ljava/util/Calendar;
    .restart local p0    # "useGmtConversion":Z
    .restart local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local p2    # "cal":Ljava/util/Calendar;
    .restart local p3    # "year":I
    .restart local p4    # "month":I
    .restart local p5    # "day":I
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static final fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 9
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .param p4, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 323
    if-ltz p0, :cond_3

    const/16 v0, 0x17

    if-gt p0, v0, :cond_3

    .line 329
    if-ltz p1, :cond_2

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_2

    .line 335
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 341
    if-nez p3, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 343
    .local v0, "cal":Ljava/util/Calendar;
    :goto_0
    monitor-enter v0

    .line 344
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v1

    .line 346
    .local v8, "origCalDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 349
    const/16 v2, 0x7b2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, v0

    move v5, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 351
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 353
    .local v1, "timeAsMillis":J
    new-instance v3, Ljava/sql/Time;

    invoke-direct {v3, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .end local v1    # "timeAsMillis":J
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 353
    .restart local v1    # "timeAsMillis":J
    monitor-exit v0

    return-object v3

    .line 355
    .end local v1    # "timeAsMillis":J
    :catchall_0
    move-exception v1

    .line 357
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 355
    nop

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local p0    # "hour":I
    .end local p1    # "minute":I
    .end local p2    # "second":I
    .end local p3    # "targetCalendar":Ljava/util/Calendar;
    .end local p4    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    throw v1

    .line 357
    .end local v8    # "origCalDate":Ljava/util/Date;
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local p0    # "hour":I
    .restart local p1    # "minute":I
    .restart local p2    # "second":I
    .restart local p3    # "targetCalendar":Ljava/util/Calendar;
    .restart local p4    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 336
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 324
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hour value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method static final fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 287
    if-ltz p1, :cond_2

    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    .line 293
    if-ltz p2, :cond_1

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_1

    .line 299
    if-ltz p3, :cond_0

    if-gt p3, v0, :cond_0

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    .local v0, "origCalDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 311
    const/16 v2, 0x7b2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 313
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 315
    .local v1, "timeAsMillis":J
    new-instance v3, Ljava/sql/Time;

    invoke-direct {v3, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v1    # "timeAsMillis":J
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 315
    .restart local v1    # "timeAsMillis":J
    monitor-exit p0

    return-object v3

    .line 317
    .end local v1    # "timeAsMillis":J
    :catchall_0
    move-exception v1

    .line 319
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 317
    nop

    .end local p0    # "cal":Ljava/util/Calendar;
    .end local p1    # "hour":I
    .end local p2    # "minute":I
    .end local p3    # "second":I
    .end local p4    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    throw v1

    .line 319
    .end local v0    # "origCalDate":Ljava/util/Date;
    .restart local p0    # "cal":Ljava/util/Calendar;
    .restart local p1    # "hour":I
    .restart local p2    # "minute":I
    .restart local p3    # "second":I
    .restart local p4    # "exceptionInterceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hour value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method static final fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;
    .locals 8
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "seconds"    # I
    .param p7, "secondsPart"    # I

    .line 405
    new-instance v0, Ljava/util/GregorianCalendar;

    if-nez p0, :cond_0

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    :goto_0
    move-object v1, v0

    .line 406
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 409
    add-int/lit8 v3, p2, -0x1

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 411
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 413
    .local v2, "tsAsMillis":J
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 414
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-virtual {v0, p7}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 416
    return-object v0
.end method

.method static final fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;
    .locals 11
    .param p0, "useGmtConversion"    # Z
    .param p1, "gmtCalIfNeeded"    # Ljava/util/Calendar;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I
    .param p6, "hour"    # I
    .param p7, "minute"    # I
    .param p8, "seconds"    # I
    .param p9, "secondsPart"    # I

    .line 363
    move-object v8, p2

    move/from16 v9, p9

    monitor-enter p2

    .line 364
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v0

    .line 366
    .local v10, "origCalDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 369
    add-int/lit8 v3, p4, -0x1

    move-object v1, p2

    move v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "offsetDiff":I
    if-eqz p0, :cond_1

    .line 374
    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 376
    .local v2, "fromOffset":I
    if-nez p1, :cond_0

    .line 377
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .local v4, "gmtCalIfNeeded":Ljava/util/Calendar;
    goto :goto_0

    .line 376
    .end local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :cond_0
    move-object v4, p1

    .line 379
    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 381
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 384
    .local v1, "toOffset":I
    sub-int v0, v2, v1

    goto :goto_1

    .line 373
    .end local v1    # "toOffset":I
    .end local v2    # "fromOffset":I
    .end local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :cond_1
    move-object v4, p1

    .line 387
    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :goto_1
    if-eqz v9, :cond_2

    .line 388
    const/16 v1, 0xe

    const v2, 0xf4240

    div-int v2, v9, v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 391
    :cond_2
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 393
    .local v1, "tsAsMillis":J
    new-instance v3, Ljava/sql/Timestamp;

    int-to-long v5, v0

    add-long/2addr v5, v1

    invoke-direct {v3, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    .line 395
    .local v3, "ts":Ljava/sql/Timestamp;
    invoke-virtual {v3, v9}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    nop

    .line 401
    .end local v0    # "offsetDiff":I
    .end local v1    # "tsAsMillis":J
    .end local v3    # "ts":Ljava/sql/Timestamp;
    :try_start_3
    invoke-virtual {p2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v5, v3

    .line 397
    .restart local v0    # "offsetDiff":I
    .restart local v1    # "tsAsMillis":J
    .local v5, "ts":Ljava/sql/Timestamp;
    monitor-exit p2

    return-object v3

    .line 399
    .end local v0    # "offsetDiff":I
    .end local v1    # "tsAsMillis":J
    .end local v5    # "ts":Ljava/sql/Timestamp;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :catchall_1
    move-exception v0

    move-object v4, p1

    .line 401
    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {p2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 399
    nop

    .end local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .end local p0    # "useGmtConversion":Z
    .end local p2    # "cal":Ljava/util/Calendar;
    .end local p3    # "year":I
    .end local p4    # "month":I
    .end local p5    # "day":I
    .end local p6    # "hour":I
    .end local p7    # "minute":I
    .end local p8    # "seconds":I
    .end local p9    # "secondsPart":I
    throw v0

    .line 401
    .end local v10    # "origCalDate":Ljava/util/Date;
    .restart local p0    # "useGmtConversion":Z
    .restart local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local p2    # "cal":Ljava/util/Calendar;
    .restart local p3    # "year":I
    .restart local p4    # "month":I
    .restart local p5    # "day":I
    .restart local p6    # "hour":I
    .restart local p7    # "minute":I
    .restart local p8    # "seconds":I
    .restart local p9    # "secondsPart":I
    :catchall_2
    move-exception v0

    move-object v4, p1

    .end local p1    # "gmtCalIfNeeded":Ljava/util/Calendar;
    .restart local v4    # "gmtCalIfNeeded":Ljava/util/Calendar;
    :goto_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public static formatNanos(IZI)Ljava/lang/String;
    .locals 7
    .param p0, "nanos"    # I
    .param p1, "serverSupportsFracSecs"    # Z
    .param p2, "fsp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    const-string v1, "S1009"

    if-ltz p0, :cond_5

    const v2, 0x3b9ac9ff

    if-gt p0, v2, :cond_5

    .line 543
    if-ltz p2, :cond_4

    const/4 v2, 0x6

    if-gt p2, v2, :cond_4

    .line 547
    const-string v0, "0"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    int-to-double v1, p0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v5, p2, 0x9

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int p0, v1

    .line 553
    if-nez p0, :cond_1

    .line 554
    return-object v0

    .line 557
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "nanosString":Ljava/lang/String;
    const-string v1, "000000000"

    .line 560
    .local v1, "zeroPadding":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    const-string v4, "000000000"

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    add-int/lit8 v2, p2, -0x1

    .line 564
    .local v2, "pos":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    .line 565
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 568
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 570
    return-object v0

    .line 548
    .end local v0    # "nanosString":Ljava/lang/String;
    .end local v1    # "zeroPadding":Ljava/lang/String;
    .end local v2    # "pos":I
    :cond_3
    :goto_1
    return-object v0

    .line 544
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fsp value must be in 0 to 6 range but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 541
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nanos value must be in 0 to 999999999 range but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 4
    .param p0, "timezoneStr"    # Ljava/lang/String;
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 431
    if-nez p0, :cond_0

    .line 432
    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    .line 439
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 444
    :cond_2
    const-class v0, Lcom/mysql/jdbc/TimeUtil;

    monitor-enter v0

    .line 445
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    if-nez v1, :cond_3

    .line 446
    invoke-static {p1}, Lcom/mysql/jdbc/TimeUtil;->loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 448
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "canonicalTz":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 452
    return-object v1

    .line 455
    :cond_4
    const-string v0, "TimeUtil.UnrecognizedTimezoneId"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "01S00"

    invoke-static {v0, v2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 448
    .end local v1    # "canonicalTz":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getCurrentTimeNanosOrMillis()J
    .locals 3

    .line 79
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x0

    :try_start_0
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 91
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getDefaultTimeZone(Z)Ljava/util/TimeZone;
    .locals 1
    .param p0, "useCache"    # Z

    .line 75
    if-eqz p0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;
    .locals 2
    .param p0, "cachedSimpleDateFormat"    # Ljava/text/SimpleDateFormat;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;

    .line 602
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 604
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    if-eqz p2, :cond_1

    .line 605
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 608
    :cond_1
    if-eqz p3, :cond_2

    .line 609
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 611
    :cond_2
    return-object v0
.end method

.method private static jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J
    .locals 4
    .param p0, "sessionCalendar"    # Ljava/util/Calendar;
    .param p1, "targetCalendar"    # Ljava/util/Calendar;
    .param p2, "dt"    # Ljava/util/Date;

    .line 201
    if-nez p0, :cond_0

    .line 202
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    move-object p0, v0

    .line 205
    :cond_0
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 209
    .local v0, "origCalDate":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .local v1, "origSessionDate":Ljava/util/Date;
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 214
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 220
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 223
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 227
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 223
    monitor-exit p0

    return-wide v2

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 226
    nop

    .end local p0    # "sessionCalendar":Ljava/util/Calendar;
    .end local p1    # "targetCalendar":Ljava/util/Calendar;
    .end local p2    # "dt":Ljava/util/Date;
    throw v2

    .line 229
    .end local v0    # "origCalDate":Ljava/util/Date;
    .end local v1    # "origSessionDate":Ljava/util/Date;
    .restart local p0    # "sessionCalendar":Ljava/util/Calendar;
    .restart local p1    # "targetCalendar":Ljava/util/Calendar;
    .restart local p2    # "dt":Ljava/util/Date;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 5
    .param p0, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 582
    :try_start_0
    const-class v1, Lcom/mysql/jdbc/TimeUtil;

    const-string v2, "/com/mysql/jdbc/TimeZoneMapping.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    nop

    .line 588
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 589
    .local v3, "tz":Ljava/lang/String;
    sget-object v4, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    sget-object v4, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v4, v3, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .end local v3    # "tz":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TimeUtil.LoadTimeZoneMappingError"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "01S00"

    invoke-static {v1, v2, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static nanoTimeAvailable()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "origCalendar"    # Ljava/util/Calendar;
    .param p1, "refCalendar"    # Ljava/util/Calendar;

    .line 625
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 627
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/util/GregorianCalendar;

    .line 628
    move-object v0, p0

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 629
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 631
    :cond_0
    return-object p0
.end method

.method private static timeFormattedString(III)Ljava/lang/String;
    .locals 4
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 463
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "0"

    const/16 v2, 0xa

    if-ge p0, v2, :cond_0

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    if-ge p1, v2, :cond_1

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    if-ge p2, v2, :cond_2

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 3
    .param p0, "timestamp"    # Ljava/sql/Timestamp;

    .line 596
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 597
    .local v0, "truncatedTimestamp":Ljava/sql/Timestamp;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 598
    return-object v0
.end method
