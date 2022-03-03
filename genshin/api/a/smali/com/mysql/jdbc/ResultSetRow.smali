.class public abstract Lcom/mysql/jdbc/ResultSetRow;
.super Ljava/lang/Object;
.source "ResultSetRow.java"


# instance fields
.field protected exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected metadata:[Lcom/mysql/jdbc/Field;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract closeOpenStreams()V
.end method

.method public abstract getBinaryInputStream(I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getBytesSize()I
.end method

.method public abstract getColumnValue(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected final getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 19
    .param p1, "columnIndex"    # I
    .param p2, "dateAsBytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p7, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const/4 v7, 0x0

    .line 93
    .local v7, "year":I
    const/4 v8, 0x0

    .line 94
    .local v8, "month":I
    const/4 v9, 0x0

    .line 97
    .local v9, "day":I
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 98
    return-object v0

    .line 101
    :cond_0
    const/4 v10, 0x1

    .line 103
    .local v10, "allZeroDate":Z
    const/4 v11, 0x0

    .line 105
    .local v11, "onlyTimePresent":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const-string v14, "ResultSet.Bad_format_for_Date"

    const-string v15, "S1009"

    const/16 v17, 0x0

    if-ge v12, v4, :cond_2

    .line 106
    add-int v18, v3, v12

    :try_start_0
    aget-byte v13, v2, v18

    const/16 v0, 0x3a

    if-ne v13, v0, :cond_1

    .line 107
    const/4 v11, 0x1

    .line 108
    goto :goto_1

    .line 105
    :cond_1
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    goto :goto_0

    .line 265
    .end local v10    # "allZeroDate":Z
    .end local v11    # "onlyTimePresent":Z
    .end local v12    # "i":I
    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 263
    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 112
    .restart local v10    # "allZeroDate":Z
    .restart local v11    # "onlyTimePresent":Z
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_6

    .line 113
    add-int v13, v3, v0

    aget-byte v13, v2, v13

    .line 115
    .local v13, "b":B
    const/16 v12, 0x20

    if-eq v13, v12, :cond_3

    const/16 v12, 0x2d

    if-eq v13, v12, :cond_3

    const/16 v12, 0x2f

    if-ne v13, v12, :cond_4

    .line 116
    :cond_3
    const/4 v11, 0x0

    .line 119
    :cond_4
    const/16 v12, 0x30

    if-eq v13, v12, :cond_5

    const/16 v12, 0x20

    if-eq v13, v12, :cond_5

    const/16 v12, 0x3a

    if-eq v13, v12, :cond_5

    const/16 v12, 0x2d

    if-eq v13, v12, :cond_5

    const/16 v12, 0x2f

    if-eq v13, v12, :cond_5

    const/16 v12, 0x2e

    if-eq v13, v12, :cond_5

    .line 120
    const/4 v10, 0x0

    .line 122
    goto :goto_3

    .line 112
    .end local v13    # "b":B
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 127
    .end local v0    # "i":I
    :cond_6
    :goto_3
    const/4 v0, -0x1

    .line 128
    .local v0, "decimalIndex":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v4, :cond_8

    .line 129
    add-int v13, v3, v12

    aget-byte v13, v2, v13
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v0

    const/16 v0, 0x2e

    .end local v0    # "decimalIndex":I
    .local v16, "decimalIndex":I
    if-ne v13, v0, :cond_7

    .line 130
    move v0, v12

    .line 131
    .end local v16    # "decimalIndex":I
    .restart local v0    # "decimalIndex":I
    goto :goto_5

    .line 128
    .end local v0    # "decimalIndex":I
    .restart local v16    # "decimalIndex":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    goto :goto_4

    .end local v16    # "decimalIndex":I
    .restart local v0    # "decimalIndex":I
    :cond_8
    move/from16 v16, v0

    .line 136
    .end local v12    # "i":I
    :goto_5
    const/4 v12, -0x1

    if-le v0, v12, :cond_9

    .line 137
    move v4, v0

    .line 140
    .end local p4    # "length":I
    .local v4, "length":I
    :cond_9
    if-nez v11, :cond_c

    if-eqz v10, :cond_c

    .line 142
    :try_start_1
    const-string v12, "convertToNull"

    invoke-interface/range {p5 .. p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 144
    const/4 v12, 0x0

    return-object v12

    .line 145
    :cond_a
    const-string v12, "exception"

    invoke-interface/range {p5 .. p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 151
    const/4 v12, 0x1

    invoke-virtual {v5, v6, v12, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v12

    return-object v12

    .line 146
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' can not be represented as java.sql.Date"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v12, v15, v13}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v12

    .end local v4    # "length":I
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local p1    # "columnIndex":I
    .end local p2    # "dateAsBytes":[B
    .end local p3    # "offset":I
    .end local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p7    # "targetCalendar":Ljava/util/Calendar;
    throw v12

    .line 153
    .restart local v4    # "length":I
    .restart local v7    # "year":I
    .restart local v8    # "month":I
    .restart local v9    # "day":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "dateAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p7    # "targetCalendar":Ljava/util/Calendar;
    :cond_c
    iget-object v12, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v12

    const/4 v13, 0x7

    move/from16 v16, v0

    .end local v0    # "decimalIndex":I
    .restart local v16    # "decimalIndex":I
    const/16 v0, 0x45

    if-ne v12, v13, :cond_10

    .line 155
    sparse-switch v4, :sswitch_data_0

    .line 213
    goto/16 :goto_6

    .line 159
    :sswitch_0
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v7, v0

    .line 160
    add-int/lit8 v0, v3, 0x5

    add-int/lit8 v12, v3, 0x7

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v8, v0

    .line 161
    add-int/lit8 v0, v3, 0x8

    add-int/lit8 v12, v3, 0xa

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v9, v0

    .line 163
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 168
    :sswitch_1
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v7, v0

    .line 169
    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v12, v3, 0x6

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v8, v0

    .line 170
    add-int/lit8 v0, v3, 0x6

    add-int/lit8 v12, v3, 0x8

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v9, v0

    .line 172
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 178
    :sswitch_2
    add-int/lit8 v12, v3, 0x0

    add-int/lit8 v13, v3, 0x2

    invoke-static {v2, v12, v13}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v12

    move v7, v12

    .line 180
    if-gt v7, v0, :cond_d

    .line 181
    add-int/lit8 v7, v7, 0x64

    .line 184
    :cond_d
    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v8, v0

    .line 185
    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v12, v3, 0x6

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v9, v0

    .line 187
    add-int/lit16 v0, v7, 0x76c

    invoke-virtual {v5, v6, v0, v8, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 191
    :sswitch_3
    add-int/lit8 v12, v3, 0x0

    add-int/lit8 v13, v3, 0x4

    invoke-static {v2, v12, v13}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v12

    move v7, v12

    .line 193
    if-gt v7, v0, :cond_e

    .line 194
    add-int/lit8 v7, v7, 0x64

    .line 197
    :cond_e
    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v8, v0

    .line 199
    add-int/lit16 v0, v7, 0x76c

    const/4 v12, 0x1

    invoke-virtual {v5, v6, v0, v8, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 203
    :sswitch_4
    add-int/lit8 v12, v3, 0x0

    add-int/lit8 v13, v3, 0x2

    invoke-static {v2, v12, v13}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v12

    move v7, v12

    .line 205
    if-gt v7, v0, :cond_f

    .line 206
    add-int/lit8 v7, v7, 0x64

    .line 209
    :cond_f
    add-int/lit16 v0, v7, 0x76c

    const/4 v12, 0x1

    invoke-virtual {v5, v6, v0, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 213
    :goto_6
    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v17

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    invoke-static {v14, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v15, v12}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v4    # "length":I
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local p1    # "columnIndex":I
    .end local p2    # "dateAsBytes":[B
    .end local p3    # "offset":I
    .end local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p7    # "targetCalendar":Ljava/util/Calendar;
    throw v0

    .line 218
    .restart local v4    # "length":I
    .restart local v7    # "year":I
    .restart local v8    # "month":I
    .restart local v9    # "day":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "dateAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p7    # "targetCalendar":Ljava/util/Calendar;
    :cond_10
    iget-object v12, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_14

    .line 220
    const/4 v12, 0x2

    if-eq v4, v12, :cond_12

    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    goto :goto_7

    .line 229
    :cond_11
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v7, v0

    .end local v7    # "year":I
    .local v0, "year":I
    goto :goto_8

    .line 221
    .end local v0    # "year":I
    .restart local v7    # "year":I
    :cond_12
    :goto_7
    add-int v12, v3, v4

    invoke-static {v2, v3, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v12

    move v7, v12

    .line 223
    if-gt v7, v0, :cond_13

    .line 224
    add-int/lit8 v7, v7, 0x64

    .line 227
    :cond_13
    add-int/lit16 v7, v7, 0x76c

    .line 232
    :goto_8
    const/4 v12, 0x1

    invoke-virtual {v5, v6, v7, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 233
    :cond_14
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v12, 0xb

    const/16 v13, 0x7b2

    if-ne v0, v12, :cond_15

    .line 234
    const/4 v12, 0x1

    invoke-virtual {v5, v6, v13, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 236
    :cond_15
    const/16 v0, 0xa

    if-ge v4, v0, :cond_17

    .line 237
    const/16 v0, 0x8

    if-ne v4, v0, :cond_16

    .line 238
    const/4 v12, 0x1

    invoke-virtual {v5, v6, v13, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 242
    :cond_16
    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v17

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    invoke-static {v14, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v15, v12}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v4    # "length":I
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local p1    # "columnIndex":I
    .end local p2    # "dateAsBytes":[B
    .end local p3    # "offset":I
    .end local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p7    # "targetCalendar":Ljava/util/Calendar;
    throw v0

    .line 248
    .restart local v4    # "length":I
    .restart local v7    # "year":I
    .restart local v8    # "month":I
    .restart local v9    # "day":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "dateAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p5    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p6    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p7    # "targetCalendar":Ljava/util/Calendar;
    :cond_17
    const/16 v0, 0x12

    if-eq v4, v0, :cond_18

    .line 249
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v12, v3, 0x4

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v7, v0

    .line 250
    add-int/lit8 v0, v3, 0x5

    add-int/lit8 v12, v3, 0x7

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v8, v0

    .line 251
    add-int/lit8 v0, v3, 0x8

    add-int/lit8 v12, v3, 0xa

    invoke-static {v2, v0, v12}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move v9, v0

    .end local v9    # "day":I
    .local v0, "day":I
    goto :goto_9

    .line 254
    .end local v0    # "day":I
    .restart local v9    # "day":I
    :cond_18
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v12, "ISO8859_1"

    invoke-static {v2, v3, v4, v12}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "- "

    invoke-direct {v0, v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v7, v12

    .line 257
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 258
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    .line 262
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :goto_9
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 265
    .end local v10    # "allZeroDate":Z
    .end local v11    # "onlyTimePresent":Z
    .end local v16    # "decimalIndex":I
    :catch_2
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v17

    add-int/lit8 v11, p1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v14, v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v10, v15, v11}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v10

    .line 269
    .local v10, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v10, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v10

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "sqlEx":Ljava/sql/SQLException;
    :catch_3
    move-exception v0

    .line 264
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :goto_b
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract getInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 6
    .param p1, "columnIndex"    # I
    .param p2, "bits"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p7, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "year":I
    const/4 v1, 0x0

    .line 316
    .local v1, "month":I
    const/4 v2, 0x0

    .line 318
    .local v2, "day":I
    if-eqz p4, :cond_0

    .line 319
    add-int/lit8 v3, p3, 0x0

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p3, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 321
    add-int/lit8 v3, p3, 0x2

    aget-byte v1, p2, v3

    .line 322
    add-int/lit8 v3, p3, 0x3

    aget-byte v2, p2, v3

    .line 325
    :cond_0
    if-eqz p4, :cond_1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 326
    :cond_1
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    const-string v4, "convertToNull"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    const/4 v3, 0x0

    return-object v3

    .line 328
    :cond_2
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exception"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 333
    const/4 v0, 0x1

    .line 334
    const/4 v1, 0x1

    .line 335
    const/4 v2, 0x1

    .line 338
    :cond_3
    iget-boolean v3, p6, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_4

    .line 339
    invoke-static {v0, v1, v2, p7}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v3

    return-object v3

    .line 342
    :cond_4
    if-nez p7, :cond_5

    invoke-virtual {p6}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, p7

    :goto_0
    invoke-virtual {p6, v3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v3

    return-object v3

    .line 329
    :cond_6
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v4, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v5, "S1009"

    invoke-static {v4, v5, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public abstract getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 29
    .param p1, "columnIndex"    # I
    .param p2, "bits"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "targetCalendar"    # Ljava/util/Calendar;
    .param p6, "jdbcType"    # I
    .param p7, "mysqlType"    # I
    .param p8, "tz"    # Ljava/util/TimeZone;
    .param p9, "rollForward"    # Z
    .param p10, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p11, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 350
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v11, p5

    move-object/from16 v10, p8

    move/from16 v9, p9

    move-object/from16 v8, p11

    const/4 v2, 0x0

    .line 351
    .local v2, "year":I
    const/4 v4, 0x0

    .line 352
    .local v4, "month":I
    const/4 v5, 0x0

    .line 354
    .local v5, "day":I
    const/4 v6, 0x0

    .line 355
    .local v6, "hour":I
    const/4 v7, 0x0

    .line 356
    .local v7, "minute":I
    const/4 v12, 0x0

    .line 358
    .local v12, "seconds":I
    const/4 v13, 0x0

    .line 360
    .local v13, "nanos":I
    const/4 v14, 0x0

    if-nez p2, :cond_0

    .line 362
    return-object v14

    .line 365
    :cond_0
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    .line 367
    .local v3, "sessionCalendar":Ljava/util/Calendar;
    :goto_0
    const/4 v15, 0x0

    .line 369
    .local v15, "populatedFromDateTimeValue":Z
    packed-switch p7, :pswitch_data_0

    .line 420
    :pswitch_0
    move/from16 v18, v2

    .end local v2    # "year":I
    .local v18, "year":I
    const/4 v15, 0x0

    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto/16 :goto_1

    .line 404
    .end local v18    # "year":I
    .restart local v2    # "year":I
    :pswitch_1
    const/4 v15, 0x1

    .line 406
    if-eqz v1, :cond_2

    .line 409
    add-int/lit8 v16, p3, 0x5

    aget-byte v6, p2, v16

    .line 410
    add-int/lit8 v16, p3, 0x6

    aget-byte v7, p2, v16

    .line 411
    add-int/lit8 v16, p3, 0x7

    aget-byte v12, p2, v16

    .line 414
    :cond_2
    const/16 v2, 0x7b2

    .line 415
    const/4 v4, 0x1

    .line 416
    const/4 v5, 0x1

    .line 418
    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto/16 :goto_1

    .line 394
    :pswitch_2
    const/4 v15, 0x1

    .line 396
    if-eqz v1, :cond_3

    .line 397
    add-int/lit8 v16, p3, 0x0

    aget-byte v14, p2, v16

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v16, p3, 0x1

    move/from16 v18, v2

    .end local v2    # "year":I
    .restart local v18    # "year":I
    aget-byte v2, p2, v16

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v14

    .line 398
    .end local v18    # "year":I
    .restart local v2    # "year":I
    add-int/lit8 v14, p3, 0x2

    aget-byte v4, p2, v14

    .line 399
    add-int/lit8 v14, p3, 0x3

    aget-byte v5, p2, v14

    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto/16 :goto_1

    .line 396
    :cond_3
    move/from16 v18, v2

    .end local v2    # "year":I
    .restart local v18    # "year":I
    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto/16 :goto_1

    .line 372
    .end local v18    # "year":I
    .restart local v2    # "year":I
    :pswitch_3
    move/from16 v18, v2

    .end local v2    # "year":I
    .restart local v18    # "year":I
    const/4 v15, 0x1

    .line 374
    if-eqz v1, :cond_6

    .line 375
    add-int/lit8 v2, p3, 0x0

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v14, p3, 0x1

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v2, v14

    .line 376
    .end local v18    # "year":I
    .restart local v2    # "year":I
    add-int/lit8 v14, p3, 0x2

    aget-byte v4, p2, v14

    .line 377
    add-int/lit8 v14, p3, 0x3

    aget-byte v5, p2, v14

    .line 379
    const/4 v14, 0x4

    if-le v1, v14, :cond_4

    .line 380
    add-int/lit8 v14, p3, 0x4

    aget-byte v6, p2, v14

    .line 381
    add-int/lit8 v14, p3, 0x5

    aget-byte v7, p2, v14

    .line 382
    add-int/lit8 v14, p3, 0x6

    aget-byte v12, p2, v14

    .line 385
    :cond_4
    const/4 v14, 0x7

    if-le v1, v14, :cond_5

    .line 387
    add-int/lit8 v14, p3, 0x7

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v16, p3, 0x8

    aget-byte v1, p2, v16

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v14

    add-int/lit8 v14, p3, 0x9

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v1, v14

    add-int/lit8 v14, p3, 0xa

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v1, v14

    mul-int/lit16 v13, v1, 0x3e8

    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto :goto_1

    .line 385
    :cond_5
    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    goto :goto_1

    .line 374
    .end local v2    # "year":I
    .restart local v18    # "year":I
    :cond_6
    move v1, v4

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v2, v18

    move/from16 v27, v12

    move v12, v5

    move/from16 v5, v27

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    .line 423
    .end local v4    # "month":I
    .end local v13    # "nanos":I
    .end local v15    # "populatedFromDateTimeValue":Z
    .end local v18    # "year":I
    .local v1, "month":I
    .restart local v2    # "year":I
    .local v5, "seconds":I
    .local v6, "minute":I
    .local v7, "hour":I
    .local v12, "day":I
    .local v22, "nanos":I
    .local v23, "populatedFromDateTimeValue":Z
    :goto_1
    const-string v4, "S1009"

    const-string v13, "exception"

    const-string v14, "convertToNull"

    packed-switch p6, :pswitch_data_1

    .line 494
    move v15, v5

    move/from16 v16, v12

    move-object v12, v8

    .end local v5    # "seconds":I
    .end local v12    # "day":I
    .local v15, "seconds":I
    .local v16, "day":I
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "Internal error - conversion method doesn\'t support this type"

    const-string v8, "S1000"

    invoke-direct {v4, v5, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 463
    .end local v15    # "seconds":I
    .end local v16    # "day":I
    .restart local v5    # "seconds":I
    .restart local v12    # "day":I
    :pswitch_4
    if-eqz v23, :cond_b

    .line 464
    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-nez v12, :cond_9

    .line 465
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 467
    const/4 v4, 0x0

    return-object v4

    .line 468
    :cond_7
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 472
    const/4 v2, 0x1

    .line 473
    const/4 v1, 0x1

    .line 474
    const/4 v12, 0x1

    move/from16 v24, v2

    move/from16 v25, v12

    goto :goto_2

    .line 469
    :cond_8
    new-instance v13, Ljava/sql/SQLException;

    const-string v14, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    invoke-direct {v13, v14, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    .line 477
    :cond_9
    move/from16 v24, v2

    move/from16 v25, v12

    .end local v2    # "year":I
    .end local v12    # "day":I
    .local v24, "year":I
    .local v25, "day":I
    :goto_2
    iget-boolean v2, v8, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v2, :cond_a

    .line 478
    move-object/from16 v12, p8

    move/from16 v13, v24

    move v14, v1

    move/from16 v15, v25

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v19, v22

    invoke-static/range {v12 .. v19}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v2

    return-object v2

    .line 481
    :cond_a
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v26

    .line 483
    .local v26, "useGmtMillis":Z
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v12, p11

    move/from16 v14, v24

    move v15, v1

    move/from16 v16, v25

    move/from16 v17, v7

    move/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v22

    move/from16 v21, v26

    invoke-virtual/range {v12 .. v21}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v12

    .line 486
    .local v12, "ts":Ljava/sql/Timestamp;
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v13

    move-object/from16 v2, p10

    move-object/from16 v4, p5

    move v15, v5

    .end local v5    # "seconds":I
    .restart local v15    # "seconds":I
    move-object v5, v12

    move v14, v6

    .end local v6    # "minute":I
    .local v14, "minute":I
    move-object v6, v13

    move v13, v7

    .end local v7    # "hour":I
    .local v13, "hour":I
    move-object/from16 v7, p8

    move-object/from16 v16, v12

    move-object v12, v8

    .end local v12    # "ts":Ljava/sql/Timestamp;
    .local v16, "ts":Ljava/sql/Timestamp;
    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v2

    .line 488
    .local v2, "adjustedTs":Ljava/sql/Timestamp;
    return-object v2

    .line 491
    .end local v13    # "hour":I
    .end local v14    # "minute":I
    .end local v15    # "seconds":I
    .end local v16    # "ts":Ljava/sql/Timestamp;
    .end local v24    # "year":I
    .end local v25    # "day":I
    .end local v26    # "useGmtMillis":Z
    .local v2, "year":I
    .restart local v5    # "seconds":I
    .restart local v6    # "minute":I
    .restart local v7    # "hour":I
    .local v12, "day":I
    :cond_b
    move/from16 v16, v12

    move-object v12, v8

    .end local v12    # "day":I
    .local v16, "day":I
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v12, v4, v11, v10, v9}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v4

    return-object v4

    .line 425
    .end local v16    # "day":I
    .restart local v12    # "day":I
    :pswitch_5
    move v15, v5

    move v14, v6

    move v13, v7

    move/from16 v16, v12

    move-object v12, v8

    .end local v5    # "seconds":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v12    # "day":I
    .restart local v13    # "hour":I
    .restart local v14    # "minute":I
    .restart local v15    # "seconds":I
    .restart local v16    # "day":I
    if-eqz v23, :cond_d

    .line 426
    iget-boolean v4, v12, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v4, :cond_c

    .line 427
    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v13, v14, v15, v11, v4}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v4

    return-object v4

    .line 430
    :cond_c
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v13, v14, v15, v5}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v17

    .line 432
    .local v17, "time":Ljava/sql/Time;
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v8

    move-object/from16 v4, p10

    move-object v5, v3

    move-object/from16 v6, p5

    move-object/from16 v7, v17

    move v0, v9

    move-object/from16 v9, p8

    move-object/from16 v18, v3

    move-object v3, v10

    .end local v3    # "sessionCalendar":Ljava/util/Calendar;
    .local v18, "sessionCalendar":Ljava/util/Calendar;
    move/from16 v10, p9

    invoke-static/range {v4 .. v10}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v4

    .line 434
    .local v4, "adjustedTime":Ljava/sql/Time;
    return-object v4

    .line 437
    .end local v4    # "adjustedTime":Ljava/sql/Time;
    .end local v17    # "time":Ljava/sql/Time;
    .end local v18    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v3    # "sessionCalendar":Ljava/util/Calendar;
    :cond_d
    move-object/from16 v18, v3

    move v0, v9

    move-object v3, v10

    .end local v3    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v18    # "sessionCalendar":Ljava/util/Calendar;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v12, v4, v11, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v4

    return-object v4

    .line 440
    .end local v13    # "hour":I
    .end local v14    # "minute":I
    .end local v15    # "seconds":I
    .end local v16    # "day":I
    .end local v18    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v3    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v5    # "seconds":I
    .restart local v6    # "minute":I
    .restart local v7    # "hour":I
    .restart local v12    # "day":I
    :pswitch_6
    move-object/from16 v18, v3

    move v15, v5

    move v0, v9

    move-object v3, v10

    move/from16 v16, v12

    move-object v12, v8

    move/from16 v27, v7

    move v7, v6

    move/from16 v6, v27

    .end local v3    # "sessionCalendar":Ljava/util/Calendar;
    .end local v5    # "seconds":I
    .end local v12    # "day":I
    .local v6, "hour":I
    .local v7, "minute":I
    .restart local v15    # "seconds":I
    .restart local v16    # "day":I
    .restart local v18    # "sessionCalendar":Ljava/util/Calendar;
    if-eqz v23, :cond_12

    .line 441
    if-nez v2, :cond_10

    if-nez v1, :cond_10

    if-nez v16, :cond_10

    .line 442
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 444
    const/4 v4, 0x0

    return-object v4

    .line 445
    :cond_e
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 449
    const/4 v2, 0x1

    .line 450
    const/4 v1, 0x1

    .line 451
    const/4 v4, 0x1

    .end local v16    # "day":I
    .local v4, "day":I
    goto :goto_3

    .line 446
    .end local v4    # "day":I
    .restart local v16    # "day":I
    :cond_f
    new-instance v5, Ljava/sql/SQLException;

    const-string v8, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    invoke-direct {v5, v8, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 454
    :cond_10
    move/from16 v4, v16

    .end local v16    # "day":I
    .restart local v4    # "day":I
    :goto_3
    iget-boolean v5, v12, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v5, :cond_11

    .line 455
    invoke-static {v2, v1, v4, v11}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v5

    return-object v5

    .line 458
    :cond_11
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v12, v5, v2, v1, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v5

    return-object v5

    .line 461
    .end local v4    # "day":I
    .restart local v16    # "day":I
    :cond_12
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v12, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDateViaParseConversion(I)Ljava/sql/Date;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public abstract getNativeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDouble([BI)D
    .locals 5
    .param p1, "bits"    # [B
    .param p2, "offset"    # I

    .line 502
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 506
    .local v0, "valueAsLong":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public abstract getNativeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeFloat([BI)F
    .locals 2
    .param p1, "bits"    # [B
    .param p2, "offset"    # I

    .line 512
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 514
    .local v0, "asInt":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public abstract getNativeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeInt([BI)I
    .locals 2
    .param p1, "bits"    # [B
    .param p2, "offset"    # I

    .line 521
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 523
    .local v0, "valueAsInt":I
    return v0
.end method

.method public abstract getNativeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeLong([BI)J
    .locals 5
    .param p1, "bits"    # [B
    .param p2, "offset"    # I

    .line 529
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 533
    .local v0, "valueAsLong":J
    return-wide v0
.end method

.method public abstract getNativeShort(I)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeShort([BI)S
    .locals 2
    .param p1, "bits"    # [B
    .param p2, "offset"    # I

    .line 539
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 541
    .local v0, "asShort":S
    return v0
.end method

.method public abstract getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 15
    .param p1, "columnIndex"    # I
    .param p2, "bits"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "targetCalendar"    # Ljava/util/Calendar;
    .param p6, "tz"    # Ljava/util/TimeZone;
    .param p7, "rollForward"    # Z
    .param p8, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p9, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 561
    move-object v0, p0

    const/4 v1, 0x0

    .line 562
    .local v1, "hour":I
    const/4 v2, 0x0

    .line 563
    .local v2, "minute":I
    const/4 v3, 0x0

    .line 565
    .local v3, "seconds":I
    if-eqz p4, :cond_0

    .line 568
    add-int/lit8 v4, p3, 0x5

    aget-byte v1, p2, v4

    .line 569
    add-int/lit8 v4, p3, 0x6

    aget-byte v2, p2, v4

    .line 570
    add-int/lit8 v4, p3, 0x7

    aget-byte v3, p2, v4

    .line 573
    :cond_0
    move-object/from16 v4, p9

    iget-boolean v5, v4, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v5, :cond_1

    .line 574
    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    move-object/from16 v13, p5

    invoke-static {v1, v2, v3, v13, v5}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v5

    return-object v5

    .line 577
    :cond_1
    move-object/from16 v13, p5

    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v5

    .line 579
    .local v5, "sessionCalendar":Ljava/util/Calendar;
    iget-object v6, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v5, v1, v2, v3, v6}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v14

    .line 581
    .local v14, "time":Ljava/sql/Time;
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v6, p8

    move-object v7, v5

    move-object/from16 v8, p5

    move-object v9, v14

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v6 .. v12}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v6

    .line 583
    .local v6, "adjustedTime":Ljava/sql/Time;
    return-object v6
.end method

.method public abstract getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 26
    .param p1, "bits"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "targetCalendar"    # Ljava/util/Calendar;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "rollForward"    # Z
    .param p7, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p8, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 591
    move/from16 v0, p3

    const/4 v1, 0x0

    .line 592
    .local v1, "year":I
    const/4 v2, 0x0

    .line 593
    .local v2, "month":I
    const/4 v3, 0x0

    .line 595
    .local v3, "day":I
    const/4 v4, 0x0

    .line 596
    .local v4, "hour":I
    const/4 v5, 0x0

    .line 597
    .local v5, "minute":I
    const/4 v6, 0x0

    .line 599
    .local v6, "seconds":I
    const/4 v7, 0x0

    .line 601
    .local v7, "nanos":I
    if-eqz v0, :cond_2

    .line 602
    add-int/lit8 v8, p2, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v1, v8, v9

    .line 603
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 604
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 606
    const/4 v8, 0x4

    if-le v0, v8, :cond_0

    .line 607
    add-int/lit8 v8, p2, 0x4

    aget-byte v4, p1, v8

    .line 608
    add-int/lit8 v8, p2, 0x5

    aget-byte v5, p1, v8

    .line 609
    add-int/lit8 v8, p2, 0x6

    aget-byte v6, p1, v8

    .line 612
    :cond_0
    const/4 v8, 0x7

    if-le v0, v8, :cond_1

    .line 614
    add-int/lit8 v8, p2, 0x7

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    mul-int/lit16 v7, v8, 0x3e8

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_0

    .line 612
    :cond_1
    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_0

    .line 601
    :cond_2
    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    .line 619
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "seconds":I
    .end local v7    # "nanos":I
    .local v14, "hour":I
    .local v15, "minute":I
    .local v16, "seconds":I
    .local v17, "nanos":I
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 620
    :cond_3
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    const-string v5, "convertToNull"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    const/4 v4, 0x0

    return-object v4

    .line 623
    :cond_4
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exception"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 628
    const/4 v1, 0x1

    .line 629
    const/4 v2, 0x1

    .line 630
    const/4 v3, 0x1

    .line 633
    :cond_5
    move-object/from16 v13, p8

    iget-boolean v4, v13, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v4, :cond_6

    .line 634
    move-object/from16 v4, p5

    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-static/range {v4 .. v11}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v4

    return-object v4

    .line 637
    :cond_6
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v18

    .line 639
    .local v18, "useGmtMillis":Z
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-virtual/range {p8 .. p8}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    :goto_1
    move-object v5, v4

    .line 641
    .local v5, "sessionCalendar":Ljava/util/Calendar;
    move-object/from16 v4, p8

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-virtual/range {v4 .. v13}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v4

    .line 643
    .local v4, "ts":Ljava/sql/Timestamp;
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v23

    move-object/from16 v19, p7

    move-object/from16 v20, v5

    move-object/from16 v21, p4

    move-object/from16 v22, v4

    move-object/from16 v24, p5

    move/from16 v25, p6

    invoke-static/range {v19 .. v25}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v6

    .line 645
    .local v6, "adjustedTs":Ljava/sql/Timestamp;
    return-object v6

    .line 624
    .end local v4    # "ts":Ljava/sql/Timestamp;
    .end local v5    # "sessionCalendar":Ljava/util/Calendar;
    .end local v6    # "adjustedTs":Ljava/sql/Timestamp;
    .end local v18    # "useGmtMillis":Z
    :cond_8
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v6, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v7, "S1009"

    invoke-static {v6, v7, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5
.end method

.method public abstract getReader(I)Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;
    .locals 5
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "value"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 695
    const/4 v0, 0x0

    .line 697
    .local v0, "stringVal":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    if-nez p1, :cond_0

    .line 700
    :try_start_0
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 702
    :cond_0
    invoke-interface {p2, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    .line 704
    .local v1, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v1, p3, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {p3, p4, p5, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 713
    .end local v1    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :goto_0
    goto :goto_1

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "E":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Unsupported_character_encoding____101"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v4, "0S100"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 715
    .end local v1    # "E":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_1
    return-object v0
.end method

.method public abstract getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 24
    .param p1, "columnIndex"    # I
    .param p2, "timeAsBytes"    # [B
    .param p3, "offset"    # I
    .param p4, "fullLength"    # I
    .param p5, "targetCalendar"    # Ljava/util/Calendar;
    .param p6, "tz"    # Ljava/util/TimeZone;
    .param p7, "rollForward"    # Z
    .param p8, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p9, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 724
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p9

    const/4 v5, 0x0

    .line 725
    .local v5, "hr":I
    const/4 v6, 0x0

    .line 726
    .local v6, "min":I
    const/4 v7, 0x0

    .line 727
    .local v7, "sec":I
    const/4 v8, 0x0

    .line 729
    .local v8, "nanos":I
    const/4 v9, -0x1

    .line 733
    .local v9, "decimalIndex":I
    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 734
    return-object v0

    .line 737
    :cond_0
    const/4 v10, 0x1

    .line 738
    .local v10, "allZeroTime":Z
    const/4 v11, 0x0

    .line 740
    .local v11, "onlyTimePresent":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const-string v15, "S1009"

    if-ge v14, v4, :cond_2

    .line 741
    add-int v17, p3, v14

    :try_start_0
    aget-byte v0, v3, v17
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v5

    const/16 v5, 0x3a

    .end local v5    # "hr":I
    .local v17, "hr":I
    if-ne v0, v5, :cond_1

    .line 742
    const/4 v11, 0x1

    .line 743
    goto :goto_1

    .line 740
    :cond_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    const/4 v0, 0x0

    goto :goto_0

    .line 898
    .end local v10    # "allZeroTime":Z
    .end local v11    # "onlyTimePresent":Z
    .end local v14    # "i":I
    .end local v17    # "hr":I
    .restart local v5    # "hr":I
    :catch_0
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "hr":I
    .restart local v17    # "hr":I
    goto/16 :goto_e

    .line 740
    .end local v17    # "hr":I
    .restart local v5    # "hr":I
    .restart local v10    # "allZeroTime":Z
    .restart local v11    # "onlyTimePresent":Z
    .restart local v14    # "i":I
    :cond_2
    move/from16 v17, v5

    .line 747
    .end local v5    # "hr":I
    .end local v14    # "i":I
    .restart local v17    # "hr":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v5, 0x2e

    if-ge v0, v4, :cond_4

    .line 748
    add-int v14, p3, v0

    :try_start_1
    aget-byte v14, v3, v14
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v14, v5, :cond_3

    .line 749
    move v9, v0

    .line 750
    move v14, v9

    goto :goto_3

    .line 747
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 898
    .end local v0    # "i":I
    .end local v10    # "allZeroTime":Z
    .end local v11    # "onlyTimePresent":Z
    :catch_1
    move-exception v0

    move/from16 v5, v17

    goto/16 :goto_e

    .line 747
    .restart local v0    # "i":I
    .restart local v10    # "allZeroTime":Z
    .restart local v11    # "onlyTimePresent":Z
    :cond_4
    move v14, v9

    .line 754
    .end local v0    # "i":I
    .end local v9    # "decimalIndex":I
    .local v14, "decimalIndex":I
    :goto_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v4, :cond_9

    .line 755
    add-int v9, p3, v0

    :try_start_2
    aget-byte v9, v3, v9

    .line 757
    .local v9, "b":B
    const/16 v5, 0x20

    if-eq v9, v5, :cond_5

    const/16 v5, 0x2d

    if-eq v9, v5, :cond_5

    const/16 v5, 0x2f

    if-ne v9, v5, :cond_6

    .line 758
    :cond_5
    const/4 v5, 0x0

    move v11, v5

    .line 761
    :cond_6
    const/16 v5, 0x30

    if-eq v9, v5, :cond_7

    const/16 v5, 0x20

    if-eq v9, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v9, v5, :cond_7

    const/16 v5, 0x2d

    if-eq v9, v5, :cond_7

    const/16 v5, 0x2f

    if-eq v9, v5, :cond_7

    const/16 v5, 0x2e

    if-eq v9, v5, :cond_8

    .line 762
    const/4 v10, 0x0

    .line 764
    move v0, v10

    move/from16 v16, v11

    goto :goto_5

    .line 761
    :cond_7
    const/16 v5, 0x2e

    .line 754
    .end local v9    # "b":B
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 898
    .end local v0    # "i":I
    .end local v10    # "allZeroTime":Z
    .end local v11    # "onlyTimePresent":Z
    :catch_2
    move-exception v0

    move v9, v14

    move/from16 v5, v17

    goto/16 :goto_e

    .line 754
    .restart local v0    # "i":I
    .restart local v10    # "allZeroTime":Z
    .restart local v11    # "onlyTimePresent":Z
    :cond_9
    move v0, v10

    move/from16 v16, v11

    .line 768
    .end local v10    # "allZeroTime":Z
    .end local v11    # "onlyTimePresent":Z
    .local v0, "allZeroTime":Z
    .local v16, "onlyTimePresent":Z
    :goto_5
    const/4 v5, 0x0

    if-nez v16, :cond_c

    if-eqz v0, :cond_c

    .line 769
    const-string v9, "convertToNull"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 770
    const/4 v5, 0x0

    return-object v5

    .line 771
    :cond_a
    const-string v9, "exception"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 777
    invoke-virtual {v13, v12, v5, v5, v5}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v5

    return-object v5

    .line 772
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' can not be represented as java.sql.Time"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v5, v15, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .end local v6    # "min":I
    .end local v7    # "sec":I
    .end local v8    # "nanos":I
    .end local v14    # "decimalIndex":I
    .end local v17    # "hr":I
    .end local p1    # "columnIndex":I
    .end local p2    # "timeAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "fullLength":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    throw v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 780
    .restart local v6    # "min":I
    .restart local v7    # "sec":I
    .restart local v8    # "nanos":I
    .restart local v14    # "decimalIndex":I
    .restart local v17    # "hr":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timeAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "fullLength":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_c
    :try_start_3
    iget-object v9, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v9, v9, v2

    move-object v11, v9

    .line 782
    .local v11, "timeColField":Lcom/mysql/jdbc/Field;
    move/from16 v9, p4

    .line 784
    .local v9, "length":I
    const/4 v10, -0x1

    if-eq v14, v10, :cond_f

    .line 786
    move v9, v14

    .line 788
    add-int/lit8 v10, v14, 0x2

    if-gt v10, v4, :cond_e

    .line 789
    add-int v10, p3, v14

    add-int/lit8 v10, v10, 0x1

    add-int v5, p3, v4

    invoke-static {v3, v10, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_18

    move v8, v5

    .line 791
    add-int/lit8 v5, v14, 0x1

    sub-int v5, v4, v5

    .line 793
    .local v5, "numDigits":I
    const/16 v10, 0x9

    if-ge v5, v10, :cond_d

    .line 794
    move v10, v6

    move/from16 v20, v7

    .end local v6    # "min":I
    .end local v7    # "sec":I
    .local v10, "min":I
    .local v20, "sec":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move/from16 v21, v0

    .end local v0    # "allZeroTime":Z
    .local v21, "allZeroTime":Z
    rsub-int/lit8 v0, v5, 0x9

    move/from16 v22, v5

    .end local v5    # "numDigits":I
    .local v22, "numDigits":I
    int-to-double v4, v0

    :try_start_4
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    .line 795
    .local v0, "factor":I
    mul-int v8, v8, v0

    goto :goto_6

    .line 793
    .end local v10    # "min":I
    .end local v20    # "sec":I
    .end local v21    # "allZeroTime":Z
    .end local v22    # "numDigits":I
    .local v0, "allZeroTime":Z
    .restart local v5    # "numDigits":I
    .restart local v6    # "min":I
    .restart local v7    # "sec":I
    :cond_d
    move/from16 v21, v0

    move/from16 v22, v5

    move v10, v6

    move/from16 v20, v7

    .line 797
    .end local v0    # "allZeroTime":Z
    .end local v5    # "numDigits":I
    .end local v6    # "min":I
    .end local v7    # "sec":I
    .restart local v10    # "min":I
    .restart local v20    # "sec":I
    .restart local v21    # "allZeroTime":Z
    :goto_6
    move v4, v8

    move v0, v9

    goto :goto_7

    .line 798
    .end local v10    # "min":I
    .end local v20    # "sec":I
    .end local v21    # "allZeroTime":Z
    .restart local v0    # "allZeroTime":Z
    .restart local v6    # "min":I
    .restart local v7    # "sec":I
    :cond_e
    move/from16 v21, v0

    move v10, v6

    move/from16 v20, v7

    .end local v0    # "allZeroTime":Z
    .end local v6    # "min":I
    .end local v7    # "sec":I
    .restart local v10    # "min":I
    .restart local v20    # "sec":I
    .restart local v21    # "allZeroTime":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v8    # "nanos":I
    .end local v10    # "min":I
    .end local v14    # "decimalIndex":I
    .end local v17    # "hr":I
    .end local v20    # "sec":I
    .end local p1    # "columnIndex":I
    .end local p2    # "timeAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "fullLength":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 898
    .end local v9    # "length":I
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    .restart local v8    # "nanos":I
    .restart local v10    # "min":I
    .restart local v14    # "decimalIndex":I
    .restart local v17    # "hr":I
    .restart local v20    # "sec":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timeAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "fullLength":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    :catch_3
    move-exception v0

    move v6, v10

    move v9, v14

    move/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_e

    .line 784
    .end local v10    # "min":I
    .end local v20    # "sec":I
    .restart local v0    # "allZeroTime":Z
    .restart local v6    # "min":I
    .restart local v7    # "sec":I
    .restart local v9    # "length":I
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    :cond_f
    move/from16 v21, v0

    move v10, v6

    move/from16 v20, v7

    .end local v0    # "allZeroTime":Z
    .end local v6    # "min":I
    .end local v7    # "sec":I
    .restart local v10    # "min":I
    .restart local v20    # "sec":I
    .restart local v21    # "allZeroTime":Z
    move v4, v8

    move v0, v9

    .line 807
    .end local v8    # "nanos":I
    .end local v9    # "length":I
    .local v0, "length":I
    .local v4, "nanos":I
    :goto_7
    :try_start_5
    invoke-virtual {v11}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_17

    const/4 v6, 0x7

    const-string v7, ")."

    const-string v8, "("

    const/16 v9, 0x8

    if-ne v5, v6, :cond_10

    .line 809
    sparse-switch v0, :sswitch_data_0

    .line 836
    move/from16 v23, v4

    .end local v4    # "nanos":I
    .local v23, "nanos":I
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_16

    goto/16 :goto_9

    .line 812
    .end local v23    # "nanos":I
    .restart local v4    # "nanos":I
    :sswitch_0
    add-int v5, p3, v0

    sub-int/2addr v5, v9

    add-int v6, p3, v0

    add-int/lit8 v6, v6, -0x6

    :try_start_7
    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 813
    .end local v17    # "hr":I
    .local v5, "hr":I
    add-int v6, p3, v0

    const/4 v9, 0x5

    sub-int/2addr v6, v9

    add-int v9, p3, v0

    add-int/lit8 v9, v9, -0x3

    :try_start_8
    invoke-static {v3, v6, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 814
    .end local v10    # "min":I
    .restart local v6    # "min":I
    add-int v9, p3, v0

    add-int/lit8 v9, v9, -0x2

    add-int v10, p3, v0

    :try_start_9
    invoke-static {v3, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 817
    .end local v20    # "sec":I
    .local v9, "sec":I
    goto :goto_8

    .line 820
    .end local v5    # "hr":I
    .end local v6    # "min":I
    .end local v9    # "sec":I
    .restart local v10    # "min":I
    .restart local v17    # "hr":I
    .restart local v20    # "sec":I
    :sswitch_1
    add-int v5, p3, v0

    add-int/lit8 v5, v5, -0x6

    add-int v6, p3, v0

    add-int/lit8 v6, v6, -0x4

    :try_start_a
    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 821
    .end local v17    # "hr":I
    .restart local v5    # "hr":I
    add-int v6, p3, v0

    add-int/lit8 v6, v6, -0x4

    add-int v9, p3, v0

    add-int/lit8 v9, v9, -0x2

    :try_start_b
    invoke-static {v3, v6, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    .line 822
    .end local v10    # "min":I
    .restart local v6    # "min":I
    add-int v9, p3, v0

    add-int/lit8 v9, v9, -0x2

    add-int v10, p3, v0

    :try_start_c
    invoke-static {v3, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 825
    .end local v20    # "sec":I
    .restart local v9    # "sec":I
    goto :goto_8

    .line 898
    .end local v0    # "length":I
    .end local v9    # "sec":I
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    .restart local v20    # "sec":I
    :catch_4
    move-exception v0

    move v8, v4

    move v9, v14

    move/from16 v7, v20

    goto/16 :goto_e

    .end local v6    # "min":I
    .restart local v10    # "min":I
    :catch_5
    move-exception v0

    move v8, v4

    move v6, v10

    move v9, v14

    move/from16 v7, v20

    goto/16 :goto_e

    .end local v5    # "hr":I
    .restart local v17    # "hr":I
    :catch_6
    move-exception v0

    move v8, v4

    move v6, v10

    move v9, v14

    move/from16 v5, v17

    move/from16 v7, v20

    goto/16 :goto_e

    .line 828
    .restart local v0    # "length":I
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    .restart local v21    # "allZeroTime":Z
    :sswitch_2
    add-int/lit8 v5, p3, 0x6

    add-int/lit8 v6, p3, 0x8

    :try_start_d
    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_17

    .line 829
    .end local v17    # "hr":I
    .restart local v5    # "hr":I
    add-int/lit8 v6, p3, 0x8

    add-int/lit8 v9, p3, 0xa

    :try_start_e
    invoke-static {v3, v6, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_a

    .line 830
    .end local v10    # "min":I
    .restart local v6    # "min":I
    const/4 v9, 0x0

    .line 833
    .end local v20    # "sec":I
    .restart local v9    # "sec":I
    nop

    .line 841
    :goto_8
    :try_start_f
    new-instance v10, Ljava/sql/SQLWarning;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_9

    move/from16 v23, v4

    .end local v4    # "nanos":I
    .restart local v23    # "nanos":I
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8

    move/from16 v18, v5

    .end local v5    # "hr":I
    .local v18, "hr":I
    :try_start_11
    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7

    .line 849
    move v10, v6

    move/from16 v4, v18

    goto/16 :goto_c

    .line 898
    .end local v0    # "length":I
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    :catch_7
    move-exception v0

    move v7, v9

    move v9, v14

    move/from16 v5, v18

    move/from16 v8, v23

    goto/16 :goto_e

    .end local v18    # "hr":I
    .restart local v5    # "hr":I
    :catch_8
    move-exception v0

    move/from16 v18, v5

    move v7, v9

    move v9, v14

    move/from16 v8, v23

    .end local v5    # "hr":I
    .restart local v18    # "hr":I
    goto/16 :goto_e

    .end local v18    # "hr":I
    .end local v23    # "nanos":I
    .restart local v4    # "nanos":I
    .restart local v5    # "hr":I
    :catch_9
    move-exception v0

    move/from16 v23, v4

    move/from16 v18, v5

    move v7, v9

    move v9, v14

    move/from16 v8, v23

    .end local v4    # "nanos":I
    .end local v5    # "hr":I
    .restart local v18    # "hr":I
    .restart local v23    # "nanos":I
    goto/16 :goto_e

    .end local v6    # "min":I
    .end local v9    # "sec":I
    .end local v18    # "hr":I
    .end local v23    # "nanos":I
    .restart local v4    # "nanos":I
    .restart local v5    # "hr":I
    .restart local v10    # "min":I
    .restart local v20    # "sec":I
    :catch_a
    move-exception v0

    move/from16 v23, v4

    move v6, v10

    move v9, v14

    move/from16 v7, v20

    move/from16 v8, v23

    .end local v4    # "nanos":I
    .restart local v23    # "nanos":I
    goto/16 :goto_e

    .line 836
    .end local v5    # "hr":I
    .restart local v0    # "length":I
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    .restart local v17    # "hr":I
    .restart local v21    # "allZeroTime":Z
    :goto_9
    :try_start_12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v15, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v10    # "min":I
    .end local v14    # "decimalIndex":I
    .end local v17    # "hr":I
    .end local v20    # "sec":I
    .end local v23    # "nanos":I
    .end local p1    # "columnIndex":I
    .end local p2    # "timeAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "fullLength":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    throw v4

    .line 849
    .restart local v4    # "nanos":I
    .restart local v10    # "min":I
    .restart local v14    # "decimalIndex":I
    .restart local v17    # "hr":I
    .restart local v20    # "sec":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timeAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "fullLength":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_10
    move/from16 v23, v4

    .end local v4    # "nanos":I
    .restart local v23    # "nanos":I
    invoke-virtual {v11}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_11

    .line 850
    add-int/lit8 v4, p3, 0xb

    add-int/lit8 v5, p3, 0xd

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_16

    move v5, v4

    .line 851
    .end local v17    # "hr":I
    .restart local v5    # "hr":I
    add-int/lit8 v4, p3, 0xe

    add-int/lit8 v6, p3, 0x10

    :try_start_13
    invoke-static {v3, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_e

    move v6, v4

    .line 852
    .end local v10    # "min":I
    .restart local v6    # "min":I
    add-int/lit8 v4, p3, 0x11

    add-int/lit8 v9, p3, 0x13

    :try_start_14
    invoke-static {v3, v4, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_d

    .line 855
    .end local v20    # "sec":I
    .local v4, "sec":I
    :try_start_15
    new-instance v9, Ljava/sql/SQLWarning;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c

    move/from16 v18, v4

    .end local v4    # "sec":I
    .local v18, "sec":I
    :try_start_16
    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_b

    .line 864
    move v4, v5

    move v10, v6

    move/from16 v9, v18

    goto/16 :goto_c

    .line 898
    .end local v0    # "length":I
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    :catch_b
    move-exception v0

    move v9, v14

    move/from16 v7, v18

    move/from16 v8, v23

    goto/16 :goto_e

    .end local v18    # "sec":I
    .restart local v4    # "sec":I
    :catch_c
    move-exception v0

    move/from16 v18, v4

    move v9, v14

    move/from16 v7, v18

    move/from16 v8, v23

    .end local v4    # "sec":I
    .restart local v18    # "sec":I
    goto/16 :goto_e

    .end local v18    # "sec":I
    .restart local v20    # "sec":I
    :catch_d
    move-exception v0

    move v9, v14

    move/from16 v7, v20

    move/from16 v8, v23

    goto/16 :goto_e

    .end local v6    # "min":I
    .restart local v10    # "min":I
    :catch_e
    move-exception v0

    move v6, v10

    move v9, v14

    move/from16 v7, v20

    move/from16 v8, v23

    goto/16 :goto_e

    .line 864
    .end local v5    # "hr":I
    .restart local v0    # "length":I
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    .restart local v17    # "hr":I
    .restart local v21    # "allZeroTime":Z
    :cond_11
    :try_start_17
    invoke-virtual {v11}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_12

    .line 865
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5, v5, v5}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v4

    return-object v4

    .line 869
    :cond_12
    const/4 v5, 0x0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_14

    if-ne v0, v9, :cond_13

    goto :goto_a

    .line 870
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ResultSet.___in_column__268"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v15, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v10    # "min":I
    .end local v14    # "decimalIndex":I
    .end local v17    # "hr":I
    .end local v20    # "sec":I
    .end local v23    # "nanos":I
    .end local p1    # "columnIndex":I
    .end local p2    # "timeAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "fullLength":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    throw v4

    .line 876
    .restart local v10    # "min":I
    .restart local v14    # "decimalIndex":I
    .restart local v17    # "hr":I
    .restart local v20    # "sec":I
    .restart local v23    # "nanos":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timeAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "fullLength":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_14
    :goto_a
    add-int/lit8 v4, p3, 0x0

    add-int/lit8 v6, p3, 0x2

    invoke-static {v3, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_16

    .line 877
    .end local v17    # "hr":I
    .local v4, "hr":I
    add-int/lit8 v6, p3, 0x3

    add-int/lit8 v7, p3, 0x5

    :try_start_18
    invoke-static {v3, v6, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_15

    .line 878
    .end local v10    # "min":I
    .restart local v6    # "min":I
    const/4 v7, 0x5

    if-ne v0, v7, :cond_15

    goto :goto_b

    :cond_15
    add-int/lit8 v5, p3, 0x6

    add-int/lit8 v7, p3, 0x8

    :try_start_19
    invoke-static {v3, v5, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_14

    .end local v20    # "sec":I
    .local v5, "sec":I
    :goto_b
    move v9, v5

    move v10, v6

    .line 881
    .end local v5    # "sec":I
    .end local v6    # "min":I
    .restart local v9    # "sec":I
    .restart local v10    # "min":I
    :goto_c
    :try_start_1a
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v5

    move-object v8, v5

    .line 883
    .local v8, "sessionCalendar":Ljava/util/Calendar;
    iget-boolean v5, v13, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_13

    if-nez v5, :cond_17

    .line 887
    if-nez v12, :cond_16

    .line 888
    :try_start_1b
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_10

    move-object/from16 v7, p6

    :try_start_1c
    invoke-static {v7, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_f

    move-object v12, v5

    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .local v5, "targetCalendar":Ljava/util/Calendar;
    goto :goto_d

    .line 898
    .end local v0    # "length":I
    .end local v5    # "targetCalendar":Ljava/util/Calendar;
    .end local v8    # "sessionCalendar":Ljava/util/Calendar;
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    :catch_f
    move-exception v0

    move v5, v4

    move v7, v9

    move v6, v10

    move v9, v14

    move/from16 v8, v23

    goto/16 :goto_e

    :catch_10
    move-exception v0

    move-object/from16 v7, p6

    move v5, v4

    move v7, v9

    move v6, v10

    move v9, v14

    move/from16 v8, v23

    goto/16 :goto_e

    .line 887
    .restart local v0    # "length":I
    .restart local v8    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    .restart local v21    # "allZeroTime":Z
    :cond_16
    move-object/from16 v7, p6

    .line 890
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .local v12, "targetCalendar":Ljava/util/Calendar;
    :goto_d
    :try_start_1d
    invoke-virtual {v13, v12, v4, v10, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v5
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_11

    return-object v5

    .line 898
    .end local v0    # "length":I
    .end local v8    # "sessionCalendar":Ljava/util/Calendar;
    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v16    # "onlyTimePresent":Z
    .end local v21    # "allZeroTime":Z
    :catch_11
    move-exception v0

    move v5, v4

    move v7, v9

    move v6, v10

    move v9, v14

    move/from16 v8, v23

    goto/16 :goto_e

    .line 893
    .end local v12    # "targetCalendar":Ljava/util/Calendar;
    .restart local v0    # "length":I
    .restart local v8    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .restart local v16    # "onlyTimePresent":Z
    .restart local v21    # "allZeroTime":Z
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    :cond_17
    move-object/from16 v7, p6

    :try_start_1e
    invoke-virtual {v13, v8, v4, v10, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v17

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v18
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_13

    move-object/from16 v5, p8

    move-object v6, v8

    move-object/from16 v7, p5

    move-object/from16 v19, v8

    .end local v8    # "sessionCalendar":Ljava/util/Calendar;
    .local v19, "sessionCalendar":Ljava/util/Calendar;
    move-object/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "sec":I
    .local v17, "sec":I
    move-object/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "min":I
    .local v18, "min":I
    move-object/from16 v10, p6

    move-object/from16 v20, v11

    .end local v11    # "timeColField":Lcom/mysql/jdbc/Field;
    .local v20, "timeColField":Lcom/mysql/jdbc/Field;
    move/from16 v11, p7

    :try_start_1f
    invoke-static/range {v5 .. v11}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v5
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_12

    return-object v5

    .line 898
    .end local v0    # "length":I
    .end local v16    # "onlyTimePresent":Z
    .end local v19    # "sessionCalendar":Ljava/util/Calendar;
    .end local v20    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v21    # "allZeroTime":Z
    :catch_12
    move-exception v0

    move v5, v4

    move v9, v14

    move/from16 v7, v17

    move/from16 v6, v18

    move/from16 v8, v23

    goto :goto_e

    .end local v17    # "sec":I
    .end local v18    # "min":I
    .restart local v9    # "sec":I
    .restart local v10    # "min":I
    :catch_13
    move-exception v0

    move/from16 v17, v9

    move/from16 v18, v10

    move v5, v4

    move v9, v14

    move/from16 v7, v17

    move/from16 v6, v18

    move/from16 v8, v23

    .end local v9    # "sec":I
    .end local v10    # "min":I
    .restart local v17    # "sec":I
    .restart local v18    # "min":I
    goto :goto_e

    .end local v17    # "sec":I
    .end local v18    # "min":I
    .restart local v6    # "min":I
    .local v20, "sec":I
    :catch_14
    move-exception v0

    move v5, v4

    move v9, v14

    move/from16 v7, v20

    move/from16 v8, v23

    goto :goto_e

    .end local v6    # "min":I
    .restart local v10    # "min":I
    :catch_15
    move-exception v0

    move v5, v4

    move v6, v10

    move v9, v14

    move/from16 v7, v20

    move/from16 v8, v23

    goto :goto_e

    .end local v4    # "hr":I
    .local v17, "hr":I
    :catch_16
    move-exception v0

    move v6, v10

    move v9, v14

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v8, v23

    goto :goto_e

    .end local v23    # "nanos":I
    .local v4, "nanos":I
    :catch_17
    move-exception v0

    move/from16 v23, v4

    move v6, v10

    move v9, v14

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v8, v23

    .end local v4    # "nanos":I
    .restart local v23    # "nanos":I
    goto :goto_e

    .end local v10    # "min":I
    .end local v20    # "sec":I
    .end local v23    # "nanos":I
    .restart local v6    # "min":I
    .restart local v7    # "sec":I
    .local v8, "nanos":I
    :catch_18
    move-exception v0

    move v10, v6

    move/from16 v20, v7

    move v9, v14

    move/from16 v5, v17

    .line 899
    .end local v14    # "decimalIndex":I
    .end local v17    # "hr":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v5, "hr":I
    .local v9, "decimalIndex":I
    .restart local v12    # "targetCalendar":Ljava/util/Calendar;
    :goto_e
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v10, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v15, v10}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 900
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 902
    throw v4

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;
    .locals 35
    .param p1, "columnIndex"    # I
    .param p2, "timestampAsBytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "targetCalendar"    # Ljava/util/Calendar;
    .param p6, "tz"    # Ljava/util/TimeZone;
    .param p7, "rollForward"    # Z
    .param p8, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p9, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;
    .param p10, "useGmtMillis"    # Z
    .param p11, "useJDBCCompliantTimezoneShift"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v15, p9

    .line 913
    const-string v14, "S1009"

    if-eqz p11, :cond_0

    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1180
    :catch_0
    move-exception v0

    move-object v15, v14

    :goto_0
    move v14, v5

    goto/16 :goto_14

    .line 913
    :cond_0
    :try_start_1
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    .line 914
    .local v0, "sessionCalendar":Ljava/util/Calendar;
    :goto_1
    move-object/from16 v13, p5

    invoke-static {v0, v13}, Lcom/mysql/jdbc/TimeUtil;->setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    .line 916
    .end local v0    # "sessionCalendar":Ljava/util/Calendar;
    .local v17, "sessionCalendar":Ljava/util/Calendar;
    const/4 v0, 0x1

    .line 918
    .local v0, "allZeroTimestamp":Z
    const/4 v6, 0x0

    .line 920
    .local v6, "onlyTimePresent":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    const/16 v8, 0x3a

    if-ge v7, v5, :cond_2

    .line 921
    add-int v9, v4, v7

    :try_start_2
    aget-byte v9, v3, v9

    if-ne v9, v8, :cond_1

    .line 922
    const/4 v6, 0x1

    .line 923
    goto :goto_3

    .line 920
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 927
    .end local v7    # "i":I
    :cond_2
    :goto_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    const/16 v10, 0x2d

    if-ge v7, v5, :cond_6

    .line 928
    add-int v11, v4, v7

    aget-byte v11, v3, v11
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 930
    .local v11, "b":B
    const/16 v12, 0x2f

    const/16 v9, 0x20

    if-eq v11, v9, :cond_3

    if-eq v11, v10, :cond_3

    if-ne v11, v12, :cond_4

    .line 931
    :cond_3
    const/4 v6, 0x0

    .line 934
    :cond_4
    const/16 v12, 0x30

    if-eq v11, v12, :cond_5

    if-eq v11, v9, :cond_5

    if-eq v11, v8, :cond_5

    if-eq v11, v10, :cond_5

    const/16 v9, 0x2f

    if-eq v11, v9, :cond_5

    const/16 v9, 0x2e

    if-eq v11, v9, :cond_5

    .line 935
    const/4 v0, 0x0

    .line 937
    move/from16 v26, v6

    goto :goto_5

    .line 927
    .end local v11    # "b":B
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    move/from16 v26, v6

    .line 941
    .end local v6    # "onlyTimePresent":Z
    .end local v7    # "i":I
    .local v26, "onlyTimePresent":Z
    :goto_5
    if-nez v26, :cond_a

    if-eqz v0, :cond_a

    .line 943
    :try_start_3
    const-string v6, "convertToNull"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 945
    const/4 v6, 0x0

    return-object v6

    .line 946
    :cond_7
    const-string v6, "exception"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 951
    iget-boolean v6, v15, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v6, :cond_8

    .line 952
    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, p6

    :try_start_4
    invoke-static/range {v18 .. v25}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v6

    .line 955
    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p9

    move/from16 v13, v16

    move-object/from16 v27, v14

    move/from16 v14, v18

    move-object v5, v15

    move/from16 v15, p10

    :try_start_5
    invoke-virtual/range {v6 .. v15}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v6

    .line 1180
    .end local v0    # "allZeroTimestamp":Z
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v26    # "onlyTimePresent":Z
    :catch_1
    move-exception v0

    move/from16 v14, p4

    move-object/from16 v15, v27

    goto/16 :goto_14

    .line 947
    .restart local v0    # "allZeroTimestamp":Z
    .restart local v17    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v26    # "onlyTimePresent":Z
    :cond_9
    move-object/from16 v27, v14

    move-object v5, v15

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v15, v27

    :try_start_7
    invoke-static {v6, v15, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .end local p1    # "columnIndex":I
    .end local p2    # "timestampAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p10    # "useGmtMillis":Z
    .end local p11    # "useJDBCCompliantTimezoneShift":Z
    throw v6

    .line 1180
    .end local v0    # "allZeroTimestamp":Z
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v26    # "onlyTimePresent":Z
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timestampAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p10    # "useGmtMillis":Z
    .restart local p11    # "useJDBCCompliantTimezoneShift":Z
    :catch_2
    move-exception v0

    move-object/from16 v15, v27

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v5, v15

    goto/16 :goto_12

    .line 941
    .restart local v0    # "allZeroTimestamp":Z
    .restart local v17    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v26    # "onlyTimePresent":Z
    :cond_a
    move-object v5, v15

    move-object v15, v14

    .line 957
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_c

    .line 959
    iget-boolean v6, v5, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    const/4 v7, 0x4

    if-nez v6, :cond_b

    .line 960
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, p6

    invoke-static/range {v18 .. v25}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v6

    return-object v6

    .line 963
    :cond_b
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, p9

    move/from16 v25, p10

    invoke-virtual/range {v16 .. v25}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v9

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v6, p8

    move-object/from16 v7, v17

    move-object/from16 v8, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v6 .. v12}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    return-object v6

    .line 969
    :cond_c
    const/4 v6, 0x0

    .line 970
    .local v6, "year":I
    const/4 v7, 0x0

    .line 971
    .local v7, "month":I
    const/4 v9, 0x0

    .line 972
    .local v9, "day":I
    const/4 v11, 0x0

    .line 973
    .local v11, "hour":I
    const/4 v12, 0x0

    .line 974
    .local v12, "minutes":I
    const/4 v13, 0x0

    .line 975
    .local v13, "seconds":I
    const/4 v14, 0x0

    .line 978
    .local v14, "nanos":I
    const/16 v18, -0x1

    .line 979
    .local v18, "decimalIndex":I
    const/16 v19, 0x0

    move/from16 v8, v19

    .local v8, "i":I
    :goto_6
    move/from16 v5, p4

    if-ge v8, v5, :cond_e

    .line 980
    add-int v19, v4, v8

    :try_start_8
    aget-byte v10, v3, v19
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move/from16 v19, v0

    const/16 v0, 0x2e

    .end local v0    # "allZeroTimestamp":Z
    .local v19, "allZeroTimestamp":Z
    if-ne v10, v0, :cond_d

    .line 981
    move/from16 v18, v8

    .line 982
    move/from16 v0, v18

    goto :goto_7

    .line 979
    :cond_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p9

    move/from16 v0, v19

    const/16 v10, 0x2d

    goto :goto_6

    .line 1180
    .end local v6    # "year":I
    .end local v7    # "month":I
    .end local v8    # "i":I
    .end local v9    # "day":I
    .end local v11    # "hour":I
    .end local v12    # "minutes":I
    .end local v13    # "seconds":I
    .end local v14    # "nanos":I
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v18    # "decimalIndex":I
    .end local v19    # "allZeroTimestamp":Z
    .end local v26    # "onlyTimePresent":Z
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 979
    .restart local v0    # "allZeroTimestamp":Z
    .restart local v6    # "year":I
    .restart local v7    # "month":I
    .restart local v8    # "i":I
    .restart local v9    # "day":I
    .restart local v11    # "hour":I
    .restart local v12    # "minutes":I
    .restart local v13    # "seconds":I
    .restart local v14    # "nanos":I
    .restart local v17    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v18    # "decimalIndex":I
    .restart local v26    # "onlyTimePresent":Z
    :cond_e
    move/from16 v19, v0

    .end local v0    # "allZeroTimestamp":Z
    .restart local v19    # "allZeroTimestamp":Z
    move/from16 v0, v18

    .line 986
    .end local v8    # "i":I
    .end local v18    # "decimalIndex":I
    .local v0, "decimalIndex":I
    :goto_7
    add-int v8, v4, v5

    add-int/lit8 v8, v8, -0x1

    const/4 v10, -0x1

    if-ne v0, v8, :cond_f

    .line 988
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v6

    move/from16 v22, v9

    move/from16 v23, v14

    move v14, v5

    .end local p4    # "length":I
    .local v5, "length":I
    goto :goto_9

    .line 990
    .end local v5    # "length":I
    .restart local p4    # "length":I
    :cond_f
    if-eq v0, v10, :cond_12

    .line 991
    add-int/lit8 v8, v0, 0x2

    if-gt v8, v5, :cond_11

    .line 992
    add-int v8, v4, v0

    add-int/lit8 v8, v8, 0x1

    add-int v10, v4, v5

    :try_start_9
    invoke-static {v3, v8, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 994
    .end local v14    # "nanos":I
    .local v8, "nanos":I
    add-int/lit8 v10, v0, 0x1

    sub-int v10, v5, v10

    .line 996
    .local v10, "numDigits":I
    const/16 v14, 0x9

    if-ge v10, v14, :cond_10

    .line 997
    move/from16 v18, v6

    .end local v6    # "year":I
    .local v18, "year":I
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v14, v10, 0x9

    move/from16 v22, v9

    move/from16 v23, v10

    .end local v9    # "day":I
    .end local v10    # "numDigits":I
    .local v22, "day":I
    .local v23, "numDigits":I
    int-to-double v9, v14

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    .line 998
    .local v5, "factor":I
    mul-int v8, v8, v5

    move v14, v8

    goto :goto_8

    .line 996
    .end local v5    # "factor":I
    .end local v18    # "year":I
    .end local v22    # "day":I
    .end local v23    # "numDigits":I
    .restart local v6    # "year":I
    .restart local v9    # "day":I
    .restart local v10    # "numDigits":I
    :cond_10
    move/from16 v18, v6

    move/from16 v22, v9

    move/from16 v23, v10

    .end local v6    # "year":I
    .end local v9    # "day":I
    .end local v10    # "numDigits":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    .restart local v23    # "numDigits":I
    move v14, v8

    .line 1000
    .end local v8    # "nanos":I
    .end local v23    # "numDigits":I
    .restart local v14    # "nanos":I
    :goto_8
    nop

    .line 1005
    move v5, v0

    move/from16 v23, v14

    move v14, v5

    .end local p4    # "length":I
    .local v5, "length":I
    goto :goto_9

    .line 1001
    .end local v5    # "length":I
    .end local v18    # "year":I
    .end local v22    # "day":I
    .restart local v6    # "year":I
    .restart local v9    # "day":I
    .restart local p4    # "length":I
    :cond_11
    move/from16 v18, v6

    move/from16 v22, v9

    .end local v6    # "year":I
    .end local v9    # "day":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "columnIndex":I
    .end local p2    # "timestampAsBytes":[B
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p10    # "useGmtMillis":Z
    .end local p11    # "useJDBCCompliantTimezoneShift":Z
    throw v5
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 990
    .end local v18    # "year":I
    .end local v22    # "day":I
    .restart local v6    # "year":I
    .restart local v9    # "day":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timestampAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p10    # "useGmtMillis":Z
    .restart local p11    # "useJDBCCompliantTimezoneShift":Z
    :cond_12
    move/from16 v18, v6

    move/from16 v22, v9

    .end local v6    # "year":I
    .end local v9    # "day":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    move/from16 v23, v14

    move/from16 v14, p4

    .line 1008
    .end local p4    # "length":I
    .local v14, "length":I
    .local v23, "nanos":I
    :goto_9
    const/16 v5, 0x45

    packed-switch v14, :pswitch_data_0

    .line 1167
    :pswitch_0
    move/from16 v25, v14

    .end local v14    # "length":I
    .local v25, "length":I
    :try_start_a
    new-instance v5, Ljava/sql/SQLException;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_11

    .line 1018
    .end local v25    # "length":I
    .restart local v14    # "length":I
    :pswitch_1
    add-int/lit8 v5, v4, 0x0

    add-int/lit8 v6, v4, 0x4

    :try_start_b
    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1019
    .end local v18    # "year":I
    .local v5, "year":I
    add-int/lit8 v6, v4, 0x5

    add-int/lit8 v8, v4, 0x7

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1020
    .end local v7    # "month":I
    .local v6, "month":I
    add-int/lit8 v7, v4, 0x8

    add-int/lit8 v8, v4, 0xa

    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1021
    .end local v22    # "day":I
    .local v7, "day":I
    add-int/lit8 v8, v4, 0xb

    add-int/lit8 v9, v4, 0xd

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v11, v8

    .line 1022
    add-int/lit8 v8, v4, 0xe

    add-int/lit8 v9, v4, 0x10

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v12, v8

    .line 1023
    add-int/lit8 v8, v4, 0x11

    add-int/lit8 v9, v4, 0x13

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v13, v8

    .line 1025
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1029
    .end local v5    # "year":I
    .end local v6    # "month":I
    .local v7, "month":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_2
    add-int/lit8 v5, v4, 0x0

    add-int/lit8 v6, v4, 0x4

    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1030
    .end local v18    # "year":I
    .restart local v5    # "year":I
    add-int/lit8 v6, v4, 0x4

    add-int/lit8 v8, v4, 0x6

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1031
    .end local v7    # "month":I
    .restart local v6    # "month":I
    add-int/lit8 v7, v4, 0x6

    add-int/lit8 v8, v4, 0x8

    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1032
    .end local v22    # "day":I
    .local v7, "day":I
    add-int/lit8 v8, v4, 0x8

    add-int/lit8 v9, v4, 0xa

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v11, v8

    .line 1033
    add-int/lit8 v8, v4, 0xa

    add-int/lit8 v9, v4, 0xc

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v12, v8

    .line 1034
    add-int/lit8 v8, v4, 0xc

    add-int/lit8 v9, v4, 0xe

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v13, v8

    .line 1036
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1040
    .end local v5    # "year":I
    .end local v6    # "month":I
    .local v7, "month":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_3
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1042
    .end local v18    # "year":I
    .local v6, "year":I
    if-gt v6, v5, :cond_13

    .line 1043
    add-int/lit8 v6, v6, 0x64

    .line 1046
    :cond_13
    add-int/lit16 v5, v6, 0x76c

    .line 1048
    .end local v6    # "year":I
    .restart local v5    # "year":I
    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v8, v4, 0x4

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1049
    .end local v7    # "month":I
    .local v6, "month":I
    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v4, 0x6

    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1050
    .end local v22    # "day":I
    .local v7, "day":I
    add-int/lit8 v8, v4, 0x6

    add-int/lit8 v9, v4, 0x8

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v11, v8

    .line 1051
    add-int/lit8 v8, v4, 0x8

    add-int/lit8 v9, v4, 0xa

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v12, v8

    .line 1052
    add-int/lit8 v8, v4, 0xa

    add-int/lit8 v9, v4, 0xc

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v13, v8

    .line 1054
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1058
    .end local v5    # "year":I
    .end local v6    # "month":I
    .local v7, "month":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_4
    const/4 v6, 0x0

    .line 1060
    .local v6, "hasDash":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    if-ge v8, v14, :cond_15

    .line 1061
    add-int v9, v4, v8

    aget-byte v9, v3, v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_14

    .line 1062
    const/4 v6, 0x1

    .line 1063
    goto :goto_b

    .line 1060
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1067
    .end local v8    # "i":I
    :cond_15
    :goto_b
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_18

    if-eqz v6, :cond_16

    goto :goto_c

    .line 1074
    :cond_16
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v9, v4, 0x2

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1076
    .end local v18    # "year":I
    .local v8, "year":I
    if-gt v8, v5, :cond_17

    .line 1077
    add-int/lit8 v8, v8, 0x64

    .line 1080
    :cond_17
    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v9, v4, 0x4

    invoke-static {v3, v5, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1081
    .end local v7    # "month":I
    .local v5, "month":I
    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v9, v4, 0x6

    invoke-static {v3, v7, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1082
    .end local v22    # "day":I
    .local v7, "day":I
    add-int/lit8 v9, v4, 0x6

    add-int/lit8 v10, v4, 0x8

    invoke-static {v3, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    move v11, v9

    .line 1083
    add-int/lit8 v9, v4, 0x8

    add-int/lit8 v10, v4, 0xa

    invoke-static {v3, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    move v12, v9

    .line 1085
    add-int/lit16 v8, v8, 0x76c

    .line 1088
    move/from16 v18, v5

    move/from16 v20, v7

    move/from16 v16, v8

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1068
    .end local v5    # "month":I
    .end local v8    # "year":I
    .local v7, "month":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :cond_18
    :goto_c
    add-int/lit8 v5, v4, 0x0

    add-int/lit8 v8, v4, 0x4

    invoke-static {v3, v5, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1069
    .end local v18    # "year":I
    .local v5, "year":I
    add-int/lit8 v8, v4, 0x5

    add-int/lit8 v9, v4, 0x7

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v7, v8

    .line 1070
    add-int/lit8 v8, v4, 0x8

    add-int/lit8 v9, v4, 0xa

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1071
    .end local v22    # "day":I
    .local v8, "day":I
    const/4 v11, 0x0

    .line 1072
    const/4 v12, 0x0

    move/from16 v16, v5

    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1092
    .end local v5    # "year":I
    .end local v6    # "hasDash":Z
    .end local v8    # "day":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_5
    const/4 v5, 0x0

    .line 1094
    .local v5, "hasColon":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, v14, :cond_1a

    .line 1095
    add-int v8, v4, v6

    aget-byte v8, v3, v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_19

    .line 1096
    const/4 v5, 0x1

    .line 1097
    goto :goto_e

    .line 1094
    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 1101
    .end local v6    # "i":I
    :cond_1a
    :goto_e
    if-eqz v5, :cond_1b

    .line 1102
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    move v11, v6

    .line 1103
    add-int/lit8 v6, v4, 0x3

    add-int/lit8 v8, v4, 0x5

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    move v12, v6

    .line 1104
    add-int/lit8 v6, v4, 0x6

    add-int/lit8 v8, v4, 0x8

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    move v13, v6

    .line 1106
    const/16 v6, 0x7b2

    .line 1107
    .end local v18    # "year":I
    .local v6, "year":I
    const/4 v7, 0x1

    .line 1108
    const/4 v8, 0x1

    .line 1110
    .end local v22    # "day":I
    .restart local v8    # "day":I
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1113
    .end local v6    # "year":I
    .end local v8    # "day":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :cond_1b
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x4

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1114
    .end local v18    # "year":I
    .restart local v6    # "year":I
    add-int/lit8 v8, v4, 0x4

    add-int/lit8 v9, v4, 0x6

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v7, v8

    .line 1115
    add-int/lit8 v8, v4, 0x6

    add-int/lit8 v9, v4, 0x8

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1117
    .end local v22    # "day":I
    .restart local v8    # "day":I
    add-int/lit16 v6, v6, -0x76c

    .line 1118
    const/4 v9, -0x1

    add-int/2addr v7, v9

    .line 1120
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto/16 :goto_10

    .line 1124
    .end local v5    # "hasColon":Z
    .end local v6    # "year":I
    .end local v8    # "day":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_6
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1126
    .end local v18    # "year":I
    .restart local v6    # "year":I
    if-gt v6, v5, :cond_1c

    .line 1127
    add-int/lit8 v6, v6, 0x64

    .line 1130
    :cond_1c
    add-int/lit16 v5, v6, 0x76c

    .line 1132
    .end local v6    # "year":I
    .local v5, "year":I
    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v8, v4, 0x4

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1133
    .end local v7    # "month":I
    .local v6, "month":I
    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v4, 0x6

    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1135
    .end local v22    # "day":I
    .local v7, "day":I
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto :goto_10

    .line 1139
    .end local v5    # "year":I
    .end local v6    # "month":I
    .local v7, "month":I
    .restart local v18    # "year":I
    .restart local v22    # "day":I
    :pswitch_7
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1141
    .end local v18    # "year":I
    .local v6, "year":I
    if-gt v6, v5, :cond_1d

    .line 1142
    add-int/lit8 v6, v6, 0x64

    move v5, v6

    goto :goto_f

    .line 1141
    :cond_1d
    move v5, v6

    .line 1145
    .end local v6    # "year":I
    .restart local v5    # "year":I
    :goto_f
    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v8, v4, 0x4

    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    .line 1147
    .end local v7    # "month":I
    .local v6, "month":I
    const/4 v7, 0x1

    .line 1149
    .end local v22    # "day":I
    .local v7, "day":I
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    goto :goto_10

    .line 1180
    .end local v0    # "decimalIndex":I
    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v11    # "hour":I
    .end local v12    # "minutes":I
    .end local v13    # "seconds":I
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v19    # "allZeroTimestamp":Z
    .end local v23    # "nanos":I
    .end local v26    # "onlyTimePresent":Z
    :catch_5
    move-exception v0

    goto/16 :goto_14

    .line 1153
    .restart local v0    # "decimalIndex":I
    .local v7, "month":I
    .restart local v11    # "hour":I
    .restart local v12    # "minutes":I
    .restart local v13    # "seconds":I
    .restart local v17    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v18    # "year":I
    .restart local v19    # "allZeroTimestamp":Z
    .restart local v22    # "day":I
    .restart local v23    # "nanos":I
    .restart local v26    # "onlyTimePresent":Z
    :pswitch_8
    add-int/lit8 v6, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    :try_start_c
    invoke-static {v3, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1155
    .end local v18    # "year":I
    .local v6, "year":I
    if-gt v6, v5, :cond_1e

    .line 1156
    add-int/lit8 v6, v6, 0x64

    .line 1159
    :cond_1e
    add-int/lit16 v5, v6, 0x76c

    .line 1160
    .end local v6    # "year":I
    .restart local v5    # "year":I
    const/4 v6, 0x1

    .line 1161
    .end local v7    # "month":I
    .local v6, "month":I
    const/4 v7, 0x1

    .line 1163
    .end local v22    # "day":I
    .local v7, "day":I
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v24, v13

    .line 1172
    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v11    # "hour":I
    .end local v12    # "minutes":I
    .end local v13    # "seconds":I
    .local v16, "year":I
    .local v18, "month":I
    .local v20, "day":I
    .local v21, "hour":I
    .local v22, "minutes":I
    .local v24, "seconds":I
    :goto_10
    move-object/from16 v13, p9

    iget-boolean v5, v13, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    if-nez v5, :cond_1f

    .line 1173
    move-object/from16 v27, p6

    move/from16 v28, v16

    move/from16 v29, v18

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v32, v22

    move/from16 v33, v24

    move/from16 v34, v23

    :try_start_d
    invoke-static/range {v27 .. v34}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5

    return-object v5

    .line 1176
    :cond_1f
    move-object/from16 v5, p9

    move-object/from16 v6, v17

    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v24

    move/from16 v13, v23

    move/from16 v25, v14

    .end local v14    # "length":I
    .restart local v25    # "length":I
    move/from16 v14, p10

    :try_start_e
    invoke-virtual/range {v5 .. v14}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v8

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v9

    move-object/from16 v5, p8

    move-object/from16 v6, v17

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v5

    return-object v5

    .line 1180
    .end local v0    # "decimalIndex":I
    .end local v16    # "year":I
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v18    # "month":I
    .end local v19    # "allZeroTimestamp":Z
    .end local v20    # "day":I
    .end local v21    # "hour":I
    .end local v22    # "minutes":I
    .end local v23    # "nanos":I
    .end local v24    # "seconds":I
    .end local v25    # "length":I
    .end local v26    # "onlyTimePresent":Z
    .restart local v14    # "length":I
    :catch_6
    move-exception v0

    move/from16 v25, v14

    .end local v14    # "length":I
    .restart local v25    # "length":I
    goto :goto_14

    .line 1167
    .restart local v0    # "decimalIndex":I
    .local v7, "month":I
    .restart local v11    # "hour":I
    .restart local v12    # "minutes":I
    .restart local v13    # "seconds":I
    .restart local v17    # "sessionCalendar":Ljava/util/Calendar;
    .local v18, "year":I
    .restart local v19    # "allZeroTimestamp":Z
    .local v22, "day":I
    .restart local v23    # "nanos":I
    .restart local v26    # "onlyTimePresent":Z
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad format for Timestamp \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' in column "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v15}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v25    # "length":I
    .end local p1    # "columnIndex":I
    .end local p2    # "timestampAsBytes":[B
    .end local p3    # "offset":I
    .end local p5    # "targetCalendar":Ljava/util/Calendar;
    .end local p6    # "tz":Ljava/util/TimeZone;
    .end local p7    # "rollForward":Z
    .end local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p10    # "useGmtMillis":Z
    .end local p11    # "useJDBCCompliantTimezoneShift":Z
    throw v5
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    .line 1180
    .end local v0    # "decimalIndex":I
    .end local v7    # "month":I
    .end local v11    # "hour":I
    .end local v12    # "minutes":I
    .end local v13    # "seconds":I
    .end local v17    # "sessionCalendar":Ljava/util/Calendar;
    .end local v18    # "year":I
    .end local v19    # "allZeroTimestamp":Z
    .end local v22    # "day":I
    .end local v23    # "nanos":I
    .end local v26    # "onlyTimePresent":Z
    .restart local v25    # "length":I
    .restart local p1    # "columnIndex":I
    .restart local p2    # "timestampAsBytes":[B
    .restart local p3    # "offset":I
    .restart local p5    # "targetCalendar":Ljava/util/Calendar;
    .restart local p6    # "tz":Ljava/util/TimeZone;
    .restart local p7    # "rollForward":Z
    .restart local p8    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p9    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p10    # "useGmtMillis":Z
    .restart local p11    # "useJDBCCompliantTimezoneShift":Z
    :catch_7
    move-exception v0

    move/from16 v14, v25

    goto :goto_14

    .end local v25    # "length":I
    .restart local p4    # "length":I
    :catch_8
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    :goto_12
    move-object v15, v14

    :goto_13
    move/from16 v14, p4

    .line 1181
    .end local p4    # "length":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v14    # "length":I
    :goto_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot convert value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ISO8859_1"

    move-object/from16 v7, p8

    invoke-virtual {v1, v2, v6, v7}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' from column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to TIMESTAMP."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v5, v15, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .line 1184
    .local v5, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v5, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1186
    throw v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract isFloatingPointNumber(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isNull(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract length(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setColumnValue(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 0
    .param p1, "f"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1251
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    .line 1253
    return-object p0
.end method
