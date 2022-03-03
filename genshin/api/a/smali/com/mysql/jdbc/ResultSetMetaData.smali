.class public Lcom/mysql/jdbc/ResultSetMetaData;
.super Ljava/lang/Object;
.source "ResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fields:[Lcom/mysql/jdbc/Field;

.field treatYearAsDate:Z

.field useOldAliasBehavior:Z


# direct methods
.method public constructor <init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "useOldAliasBehavior"    # Z
    .param p3, "treatYearAsDate"    # Z
    .param p4, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 80
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 81
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    .line 82
    iput-boolean p3, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 83
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 84
    return-void
.end method

.method private static clampedGetLength(Lcom/mysql/jdbc/Field;)I
    .locals 5
    .param p0, "f"    # Lcom/mysql/jdbc/Field;

    .line 34
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v0

    .line 36
    .local v0, "fieldLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 37
    const-wide/32 v0, 0x7fffffff

    .line 40
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method static getClassNameForJavaType(IZIZZZ)Ljava/lang/String;
    .locals 4
    .param p0, "javaType"    # I
    .param p1, "isUnsigned"    # Z
    .param p2, "mysqlTypeIfKnown"    # I
    .param p3, "isBinaryOrBlob"    # Z
    .param p4, "isOpaqueBinary"    # Z
    .param p5, "treatYearAsDate"    # Z

    .line 714
    const-string v0, "java.lang.String"

    const-string v1, "java.lang.Long"

    const-string v2, "[B"

    const-string v3, "java.lang.Integer"

    sparse-switch p0, :sswitch_data_0

    .line 793
    const-string v0, "java.lang.Object"

    return-object v0

    .line 790
    :sswitch_0
    const-string v0, "java.sql.Timestamp"

    return-object v0

    .line 787
    :sswitch_1
    const-string v0, "java.sql.Time"

    return-object v0

    .line 784
    :sswitch_2
    if-nez p5, :cond_1

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "java.lang.Short"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "java.sql.Date"

    :goto_1
    return-object v0

    .line 756
    :sswitch_3
    const-string v0, "java.lang.Float"

    return-object v0

    .line 760
    :sswitch_4
    const-string v0, "java.lang.Double"

    return-object v0

    .line 729
    :sswitch_5
    nop

    .line 730
    return-object v3

    .line 737
    :sswitch_6
    if-eqz p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 741
    :cond_2
    return-object v1

    .line 738
    :cond_3
    :goto_2
    return-object v3

    .line 753
    :sswitch_7
    const-string v0, "java.math.BigDecimal"

    return-object v0

    .line 765
    :sswitch_8
    if-nez p4, :cond_4

    .line 766
    return-object v0

    .line 769
    :cond_4
    return-object v2

    .line 775
    :sswitch_9
    const/16 v1, 0xff

    if-ne p2, v1, :cond_5

    .line 776
    return-object v2

    .line 777
    :cond_5
    if-eqz p3, :cond_6

    .line 778
    return-object v2

    .line 780
    :cond_6
    return-object v0

    .line 745
    :sswitch_a
    if-nez p1, :cond_7

    .line 746
    return-object v1

    .line 749
    :cond_7
    const-string v0, "java.math.BigInteger"

    return-object v0

    .line 721
    :sswitch_b
    nop

    .line 722
    return-object v3

    .line 717
    :sswitch_c
    const-string v0, "java.lang.Boolean"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_c
        -0x6 -> :sswitch_b
        -0x5 -> :sswitch_a
        -0x4 -> :sswitch_9
        -0x3 -> :sswitch_9
        -0x2 -> :sswitch_9
        -0x1 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xc -> :sswitch_8
        0x10 -> :sswitch_c
        0x5b -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private static final isDecimalType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 64
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 61
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 100
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "database":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public getColumnCharacterEncoding(I)Ljava/lang/String;
    .locals 6
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnCharacterSet(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "mysqlName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, "javaName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 130
    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 128
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    throw v3

    .line 133
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getColumnCharacterSet(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 7
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 174
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v5

    iget-boolean v6, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 203
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    .line 205
    .local v1, "lengthInBytes":I
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v2

    div-int v2, v1, v2

    return v2
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getColumnLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getNameNoAliases()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    :cond_1
    return-object v0
.end method

.method public getColumnType(I)I
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    return v0
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 5
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 283
    .local v0, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    .line 284
    .local v1, "mysqlType":I
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    .line 286
    .local v2, "jdbcType":I
    const-string v3, "VARCHAR"

    sparse-switch v1, :sswitch_data_0

    .line 378
    const-string v3, "UNKNOWN"

    return-object v3

    .line 372
    :sswitch_0
    const-string v3, "GEOMETRY"

    return-object v3

    .line 356
    :sswitch_1
    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 357
    const-string v3, "BINARY"

    return-object v3

    .line 360
    :cond_0
    const-string v3, "CHAR"

    return-object v3

    .line 349
    :sswitch_2
    const/4 v4, -0x3

    if-ne v2, v4, :cond_1

    .line 350
    const-string v3, "VARBINARY"

    return-object v3

    .line 353
    :cond_1
    return-object v3

    .line 339
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    const-string v3, "BLOB"

    return-object v3

    .line 343
    :cond_2
    const-string v3, "TEXT"

    return-object v3

    .line 336
    :sswitch_4
    const-string v3, "LONGBLOB"

    return-object v3

    .line 333
    :sswitch_5
    const-string v3, "MEDIUMBLOB"

    return-object v3

    .line 330
    :sswitch_6
    const-string v3, "TINYBLOB"

    return-object v3

    .line 369
    :sswitch_7
    const-string v3, "SET"

    return-object v3

    .line 363
    :sswitch_8
    const-string v3, "ENUM"

    return-object v3

    .line 375
    :sswitch_9
    const-string v3, "JSON"

    return-object v3

    .line 288
    :sswitch_a
    const-string v3, "BIT"

    return-object v3

    .line 346
    :sswitch_b
    return-object v3

    .line 366
    :sswitch_c
    const-string v3, "YEAR"

    return-object v3

    .line 327
    :sswitch_d
    const-string v3, "DATETIME"

    return-object v3

    .line 324
    :sswitch_e
    const-string v3, "TIME"

    return-object v3

    .line 321
    :sswitch_f
    const-string v3, "DATE"

    return-object v3

    .line 318
    :sswitch_10
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MEDIUMINT UNSIGNED"

    goto :goto_0

    :cond_3
    const-string v3, "MEDIUMINT"

    :goto_0
    return-object v3

    .line 315
    :sswitch_11
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "BIGINT UNSIGNED"

    goto :goto_1

    :cond_4
    const-string v3, "BIGINT"

    :goto_1
    return-object v3

    .line 312
    :sswitch_12
    const-string v3, "TIMESTAMP"

    return-object v3

    .line 309
    :sswitch_13
    const-string v3, "NULL"

    return-object v3

    .line 306
    :sswitch_14
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "DOUBLE UNSIGNED"

    goto :goto_2

    :cond_5
    const-string v3, "DOUBLE"

    :goto_2
    return-object v3

    .line 303
    :sswitch_15
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "FLOAT UNSIGNED"

    goto :goto_3

    :cond_6
    const-string v3, "FLOAT"

    :goto_3
    return-object v3

    .line 300
    :sswitch_16
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INT UNSIGNED"

    goto :goto_4

    :cond_7
    const-string v3, "INT"

    :goto_4
    return-object v3

    .line 297
    :sswitch_17
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SMALLINT UNSIGNED"

    goto :goto_5

    :cond_8
    const-string v3, "SMALLINT"

    :goto_5
    return-object v3

    .line 294
    :sswitch_18
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "TINYINT UNSIGNED"

    goto :goto_6

    :cond_9
    const-string v3, "TINYINT"

    :goto_6
    return-object v3

    .line 291
    :sswitch_19
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "DECIMAL UNSIGNED"

    goto :goto_7

    :cond_a
    const-string v3, "DECIMAL"

    :goto_7
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x3 -> :sswitch_16
        0x4 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_9
        0xf6 -> :sswitch_19
        0xf7 -> :sswitch_8
        0xf8 -> :sswitch_7
        0xf9 -> :sswitch_6
        0xfa -> :sswitch_5
        0xfb -> :sswitch_4
        0xfc -> :sswitch_3
        0xfd -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method protected getField(I)Lcom/mysql/jdbc/Field;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    .line 398
    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 395
    :cond_0
    const-string v0, "ResultSetMetaData.46"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "S1002"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getPrecision(I)I
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 419
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v1

    if-lez v1, :cond_0

    .line 421
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 424
    :cond_0
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v2

    div-int/2addr v1, v2

    return v1

    .line 432
    :pswitch_0
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getScale(I)I
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 454
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v1

    return v1

    .line 458
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 475
    const-string v0, ""

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 490
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getTableNameNoAliases()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "res":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public isAutoIncrement(I)Z
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 508
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v1

    return v1
.end method

.method public isCaseSensitive(I)Z
    .locals 6
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 525
    .local v0, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    .line 527
    .local v1, "sqlType":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x0

    .line 554
    .local v2, "collationName":Ljava/lang/String;
    return v3

    .line 545
    .end local v2    # "collationName":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    return v3

    .line 549
    :cond_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getCollation()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "collationName":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "_ci"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 539
    .end local v4    # "collationName":Ljava/lang/String;
    :sswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public isCurrency(I)Z
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public isDefinitelyWritable(I)Z
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isWritable(I)Z

    move-result v0

    return v0
.end method

.method public isNullable(I)I
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isNotNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly(I)Z
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 619
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSearchable(I)Z
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public isSigned(I)Z
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 654
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    .line 656
    .local v1, "sqlType":I
    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 674
    return v2

    .line 671
    :sswitch_0
    return v2

    .line 666
    :sswitch_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 802
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWritable(I)Z
    .locals 1
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 690
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isReadOnly(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .local v0, "toStringBuf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v1, " - Field level information: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 705
    const-string v2, "\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 811
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unwrap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
