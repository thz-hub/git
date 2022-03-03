.class public Lcom/mysql/jdbc/ByteArrayRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "ByteArrayRow.java"


# instance fields
.field internalRowData:[[B


# direct methods
.method public constructor <init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .param p1, "internalRowData"    # [[B
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 46
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    .line 49
    return-void
.end method


# virtual methods
.method public closeOpenStreams()V
    .locals 0

    .line 194
    return-void
.end method

.method public getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBytesSize()I
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 290
    .local v0, "bytesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 291
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 292
    aget-object v2, v2, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public getColumnValue(I)[B
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 10
    .param p1, "columnIndex"    # I
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p4, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    .line 240
    .local v1, "columnValue":[B
    if-nez v1, :cond_0

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    aget-object v4, v0, p1

    const/4 v5, 0x0

    array-length v6, v1

    move-object v2, p0

    move v3, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getInt([B)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .line 114
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 115
    const-wide/16 v0, 0x0

    return-wide v0

    .line 118
    :cond_0
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p4, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 263
    .local v0, "columnValue":[B
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    return-object v1

    .line 267
    :cond_0
    const/4 v4, 0x0

    array-length v5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 14
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "jdbcType"    # I
    .param p4, "mysqlType"    # I
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "rollForward"    # Z
    .param p7, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p8, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    move-object v12, p0

    iget-object v0, v12, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v13, v0, p1

    .line 252
    .local v13, "columnValue":[B
    if-nez v13, :cond_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    const/4 v3, 0x0

    array-length v4, v13

    move-object v0, p0

    move v1, p1

    move-object v2, v13

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNativeDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    return-wide v0

    .line 140
    :cond_0
    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeFloat([BI)F

    move-result v0

    return v0
.end method

.method public getNativeInt(I)I
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 155
    return v2

    .line 158
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeInt([BI)I

    move-result v0

    return v0
.end method

.method public getNativeLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 164
    const-wide/16 v0, 0x0

    return-wide v0

    .line 167
    :cond_0
    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeShort(I)S
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 173
    return v2

    .line 176
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeShort([BI)S

    move-result v0

    return v0
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 12
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    move-object v10, p0

    iget-object v0, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v11, v0, p1

    .line 275
    .local v11, "columnValue":[B
    if-nez v11, :cond_0

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    const/4 v3, 0x0

    array-length v4, v11

    move-object v0, p0

    move v1, p1

    move-object v2, v11

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 11
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 182
    move-object v9, p0

    iget-object v0, v9, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v10, v0, p1

    .line 184
    .local v10, "bits":[B
    if-nez v10, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    const/4 v2, 0x0

    array-length v3, v10

    move-object v0, p0

    move-object v1, v10

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ByteArrayRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 209
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    return-object v1

    .line 214
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 218
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 220
    throw v2
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 65
    .local v0, "columnData":[B
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_0
    const/4 v5, 0x0

    array-length v6, v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/ByteArrayRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 12
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 227
    move-object v10, p0

    iget-object v0, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v11, v0, p1

    .line 229
    .local v11, "columnValue":[B
    if-nez v11, :cond_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    aget-object v2, v0, p1

    const/4 v3, 0x0

    array-length v4, v11

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;
    .locals 14
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p7, "useGmtMillis"    # Z
    .param p8, "useJDBCCompliantTimezoneShift"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    move-object v12, p0

    iget-object v0, v12, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v13, v0, p1

    .line 126
    .local v13, "columnValue":[B
    if-nez v13, :cond_0

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    aget-object v2, v0, p1

    const/4 v3, 0x0

    array-length v4, v13

    move-object v0, p0

    move v1, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/ByteArrayRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    .line 81
    .local v1, "numAsBytes":[B
    aget-object v2, v0, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    aget-object v0, v0, p1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 86
    aget-byte v2, v1, v0

    int-to-char v2, v2

    const/16 v4, 0x65

    if-eq v2, v4, :cond_2

    aget-byte v2, v1, v0

    int-to-char v2, v2

    const/16 v4, 0x45

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v0    # "i":I
    :cond_3
    return v3

    .line 82
    :cond_4
    :goto_2
    return v3
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length(I)J
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 97
    const-wide/16 v0, 0x0

    return-wide v0

    .line 100
    :cond_0
    aget-object v0, v0, p1

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setColumnValue(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aput-object p2, v0, p1

    .line 59
    return-void
.end method
