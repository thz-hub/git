.class public Lcom/mysql/jdbc/Field;
.super Ljava/lang/Object;
.source "Field.java"


# static fields
.field private static final AUTO_INCREMENT_FLAG:I = 0x200

.field private static final NO_CHARSET_INFO:I = -0x1


# instance fields
.field private buffer:[B

.field private colDecimals:I

.field private colFlag:S

.field private collationIndex:I

.field private collationName:Ljava/lang/String;

.field private connection:Lcom/mysql/jdbc/MySQLConnection;

.field private databaseName:Ljava/lang/String;

.field private databaseNameLength:I

.field private databaseNameStart:I

.field protected defaultValueLength:I

.field protected defaultValueStart:I

.field private encoding:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private fullOriginalName:Ljava/lang/String;

.field private isImplicitTempTable:Z

.field private isSingleBit:Z

.field private length:J

.field private maxBytesPerChar:I

.field private mysqlType:I

.field private name:Ljava/lang/String;

.field private nameLength:I

.field private nameStart:I

.field private originalColumnName:Ljava/lang/String;

.field private originalColumnNameLength:I

.field private originalColumnNameStart:I

.field private originalTableName:Ljava/lang/String;

.field private originalTableNameLength:I

.field private originalTableNameStart:I

.field private precisionAdjustFactor:I

.field private sqlType:I

.field private tableName:Ljava/lang/String;

.field private tableNameLength:I

.field private tableNameStart:I

.field private useOldNameMetadata:Z

.field private final valueNeedsQuoting:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V
    .locals 19
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "buffer"    # [B
    .param p3, "databaseNameStart"    # I
    .param p4, "databaseNameLength"    # I
    .param p5, "tableNameStart"    # I
    .param p6, "tableNameLength"    # I
    .param p7, "originalTableNameStart"    # I
    .param p8, "originalTableNameLength"    # I
    .param p9, "nameStart"    # I
    .param p10, "nameLength"    # I
    .param p11, "originalColumnNameStart"    # I
    .param p12, "originalColumnNameLength"    # I
    .param p13, "length"    # J
    .param p15, "mysqlType"    # I
    .param p16, "colFlag"    # S
    .param p17, "colDecimals"    # I
    .param p18, "defaultValueStart"    # I
    .param p19, "defaultValueLength"    # I
    .param p20, "charsetIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput v1, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    const/4 v3, -0x1

    iput v3, v0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    iput v3, v0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    iput v3, v0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    iput v3, v0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    iput-boolean v1, v0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    iput v3, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    iput v3, v0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    iput v3, v0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    iput-object v2, v0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    iput v3, v0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    iput v3, v0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    iput v1, v0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    iput v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    iput-boolean v1, v0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 120
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 121
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/mysql/jdbc/Field;->buffer:[B

    .line 122
    move/from16 v5, p9

    iput v5, v0, Lcom/mysql/jdbc/Field;->nameStart:I

    .line 123
    move/from16 v6, p10

    iput v6, v0, Lcom/mysql/jdbc/Field;->nameLength:I

    .line 124
    move/from16 v7, p5

    iput v7, v0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    .line 125
    move/from16 v8, p6

    iput v8, v0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    .line 126
    move-wide/from16 v9, p13

    iput-wide v9, v0, Lcom/mysql/jdbc/Field;->length:J

    .line 127
    move/from16 v11, p16

    iput-short v11, v0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 128
    move/from16 v12, p17

    iput v12, v0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 129
    move/from16 v13, p15

    iput v13, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 132
    move/from16 v14, p3

    iput v14, v0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 133
    move/from16 v15, p4

    iput v15, v0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 135
    move/from16 v3, p7

    iput v3, v0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 136
    move/from16 v1, p8

    iput v1, v0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 138
    move/from16 v1, p11

    iput v1, v0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 139
    move/from16 v1, p12

    iput v1, v0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 141
    move/from16 v1, p18

    iput v1, v0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 142
    move/from16 v1, p19

    iput v1, v0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 145
    move/from16 v1, p20

    iput v1, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 148
    invoke-static/range {p15 .. p15}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    iput v1, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->checkForImplicitTemporaryTable()V

    .line 152
    iget v1, v0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    .local v1, "isFromFunction":Z
    :goto_0
    iget v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_6

    .line 155
    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getBlobsAreStrings()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getFunctionsNeverReturnBlobs()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 158
    :cond_1
    iget v2, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    const/16 v2, 0xfd

    iput v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 168
    const/4 v2, -0x1

    iput v2, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_3

    .line 159
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseBlobToStoreUTF8OutsideBMP()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->shouldSetupForUtf8StringInBlob()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->setupForUtf8StringInBlob()V

    goto :goto_3

    .line 162
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->setBlobTypeBasedOnLength()V

    .line 163
    iget v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    iput v2, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_3

    .line 156
    :cond_5
    :goto_2
    const/16 v2, 0xc

    iput v2, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 157
    const/16 v2, 0xf

    iput v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 172
    :cond_6
    :goto_3
    iget v2, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    const/4 v3, -0x6

    const/16 v4, 0x10

    if-ne v2, v3, :cond_8

    iget-wide v2, v0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v17, 0x1

    cmp-long v5, v2, v17

    if-nez v5, :cond_8

    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 175
    invoke-interface/range {p1 .. p1}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 176
    iput v4, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_4

    .line 178
    :cond_7
    const/4 v2, -0x7

    iput v2, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 184
    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isNativeNumericType()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isNativeDateTimeType()Z

    move-result v2

    if-nez v2, :cond_13

    .line 185
    iget-object v2, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v3, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 189
    const-string v3, "UnicodeBig"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 190
    const-string v2, "UTF-16"

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 194
    :cond_9
    iget v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v3, 0xf5

    if-ne v2, v3, :cond_a

    .line 195
    const-string v2, "UTF-8"

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 200
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v2

    .line 202
    .local v2, "isBinary":Z
    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    const/4 v4, -0x3

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v5, 0xfd

    if-ne v3, v5, :cond_c

    if-eqz v2, :cond_c

    iget v3, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_c

    .line 204
    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getFunctionsNeverReturnBlobs()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 205
    const/16 v3, 0xc

    iput v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 206
    const/16 v3, 0xf

    iput v3, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_5

    .line 207
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 208
    iput v4, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 212
    :cond_c
    :goto_5
    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_d

    if-eqz v2, :cond_d

    iget v3, v0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_d

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getBlobsAreStrings()Z

    move-result v3

    if-nez v3, :cond_d

    .line 220
    const/4 v3, -0x2

    iput v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 224
    :cond_d
    iget v3, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 225
    iget-wide v3, v0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v5, 0x0

    cmp-long v16, v3, v5

    if-eqz v16, :cond_f

    const-wide/16 v5, 0x1

    cmp-long v16, v3, v5

    if-nez v16, :cond_e

    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v4, 0x15

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v4, 0xa

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v0, Lcom/mysql/jdbc/Field;->isSingleBit:Z

    .line 228
    if-nez v3, :cond_10

    .line 229
    iget-short v3, v0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    iput-short v3, v0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 230
    const/16 v4, 0x10

    or-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 231
    const/4 v2, 0x1

    .line 238
    :cond_10
    iget v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_11

    if-nez v2, :cond_11

    .line 239
    const/4 v3, -0x1

    iput v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_8

    .line 240
    :cond_11
    const/4 v4, -0x3

    if-ne v3, v4, :cond_12

    if-nez v2, :cond_12

    .line 241
    const/16 v3, 0xc

    iput v3, v0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 243
    .end local v2    # "isBinary":Z
    :cond_12
    :goto_8
    goto :goto_9

    .line 244
    :cond_13
    const-string v2, "US-ASCII"

    iput-object v2, v0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 250
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    if-nez v2, :cond_14

    .line 251
    iget v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_a

    .line 259
    :sswitch_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    goto :goto_a

    .line 254
    :sswitch_1
    const/4 v2, -0x1

    iput v2, v0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 256
    nop

    .line 261
    :goto_a
    goto :goto_b

    .line 264
    :cond_14
    iget v2, v0, Lcom/mysql/jdbc/Field;->mysqlType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_b

    .line 267
    :pswitch_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 272
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v2

    iput-boolean v2, v0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 273
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0xf6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIISI)V
    .locals 21
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "buffer"    # [B
    .param p3, "nameStart"    # I
    .param p4, "nameLength"    # I
    .param p5, "tableNameStart"    # I
    .param p6, "tableNameLength"    # I
    .param p7, "length"    # I
    .param p8, "mysqlType"    # I
    .param p9, "colFlag"    # S
    .param p10, "colDecimals"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    .line 333
    move/from16 v12, p7

    int-to-long v13, v12

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, -0x1

    const/16 v18, -0x1

    move/from16 v12, v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v0 .. v20}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V

    .line 335
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "jdbcType"    # I
    .param p4, "length"    # I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    iput v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    iput v0, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 341
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 343
    int-to-long v1, p4

    iput-wide v1, p0, Lcom/mysql/jdbc/Field;->length:J

    .line 344
    iput p3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 345
    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 346
    iput v0, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 347
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 348
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "charsetIndex"    # I
    .param p4, "jdbcType"    # I
    .param p5, "length"    # I

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    iput v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    iput v0, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 367
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 369
    int-to-long v1, p5

    iput-wide v1, p0, Lcom/mysql/jdbc/Field;->length:J

    .line 370
    iput p4, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 371
    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 372
    iput v0, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 373
    iput p3, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 374
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 376
    iget v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 380
    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 383
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkForImplicitTemporaryTable()V
    .locals 4

    .line 386
    iget v0, p0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    aget-byte v2, v0, v1

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 389
    return-void
.end method

.method private determineNeedsQuoting()Z
    .locals 2

    .line 900
    const/4 v0, 0x0

    .line 902
    .local v0, "retVal":Z
    iget v1, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    packed-switch v1, :pswitch_data_0

    .line 916
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 913
    :pswitch_1
    const/4 v0, 0x0

    .line 914
    nop

    .line 918
    :goto_0
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

.method private getStringFromBytes(II)Ljava/lang/String;
    .locals 7
    .param p1, "stringStart"    # I
    .param p2, "stringLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 611
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ne p2, v0, :cond_0

    goto/16 :goto_3

    .line 615
    :cond_0
    if-nez p2, :cond_1

    .line 616
    const-string v0, ""

    return-object v0

    .line 619
    :cond_1
    const/4 v0, 0x0

    .line 621
    .local v0, "stringVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_7

    .line 622
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 623
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "javaEncoding":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 626
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 629
    :cond_2
    if-eqz v1, :cond_5

    .line 630
    const/4 v2, 0x0

    .line 632
    .local v2, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v3, :cond_3

    .line 633
    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2

    .line 636
    :cond_3
    if-eqz v2, :cond_4

    .line 637
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-virtual {v2, v3, p1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v3, p1, p2, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 644
    nop

    .line 646
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :goto_0
    goto :goto_1

    .line 642
    .restart local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v3

    .line 643
    .local v3, "ue":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field.12"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Field.13"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 648
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .end local v3    # "ue":Ljava/io/UnsupportedEncodingException;
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v2, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    .line 650
    .end local v1    # "javaEncoding":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 652
    :cond_6
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v1, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 656
    :cond_7
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v1, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_2
    return-object v0

    .line 612
    .end local v0    # "stringVal":Ljava/lang/String;
    :cond_8
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private isImplicitTemporaryTable()Z
    .locals 1

    .line 698
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    return v0
.end method

.method private isNativeDateTimeType()Z
    .locals 2

    .line 790
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNativeNumericType()Z
    .locals 3

    .line 785
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private setBlobTypeBasedOnLength()V
    .locals 5

    .line 773
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 774
    const/16 v0, 0xf9

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0

    .line 775
    :cond_0
    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 776
    const/16 v0, 0xfc

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0

    .line 777
    :cond_1
    const-wide/32 v2, 0xffffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 778
    const/16 v0, 0xfa

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0

    .line 779
    :cond_2
    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 780
    const/16 v0, 0xfb

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 782
    :cond_3
    :goto_0
    return-void
.end method

.method private setupForUtf8StringInBlob()V
    .locals 5

    .line 317
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    const/16 v0, 0xfd

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_1

    .line 318
    :cond_1
    :goto_0
    const/16 v0, 0xf

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 319
    const/16 v0, 0xc

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 325
    :goto_1
    const/16 v0, 0x21

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 326
    return-void
.end method

.method private shouldSetupForUtf8StringInBlob()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    const-string v0, "S1009"

    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "includePattern":Ljava/lang/String;
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "excludePattern":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_2

    .line 284
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    .line 285
    return v3

    .line 296
    :cond_0
    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, "pse":Ljava/util/regex/PatternSyntaxException;
    :try_start_2
    const-string v4, "Illegal regex specified for \"utf8OutsideBmpIncludedColumnNamePattern\""

    iget-object v5, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 291
    .local v4, "sqlEx":Ljava/sql/SQLException;
    iget-object v5, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    :cond_1
    nop

    .end local v1    # "includePattern":Ljava/lang/String;
    .end local v2    # "excludePattern":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 299
    .end local v3    # "pse":Ljava/util/regex/PatternSyntaxException;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "includePattern":Ljava/lang/String;
    .restart local v2    # "excludePattern":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_3
    goto :goto_1

    .line 301
    :catch_1
    move-exception v3

    .line 302
    .restart local v3    # "pse":Ljava/util/regex/PatternSyntaxException;
    iget-object v4, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "Illegal regex specified for \"utf8OutsideBmpExcludedColumnNamePattern\""

    invoke-static {v5, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 305
    .local v0, "sqlEx":Ljava/sql/SQLException;
    iget-object v4, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 306
    invoke-virtual {v0, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 309
    :cond_4
    throw v0

    .line 313
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v3    # "pse":Ljava/util/regex/PatternSyntaxException;
    :cond_5
    :goto_1
    return v3
.end method


# virtual methods
.method public declared-synchronized getCollation()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_9

    .line 418
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseDynamicCharsetInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 420
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 422
    .local v0, "dbmd":Ljava/sql/DatabaseMetaData;
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "quotedIdStr":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const-string v2, ""

    move-object v1, v2

    .line 428
    .end local p0    # "this":Lcom/mysql/jdbc/Field;
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "csCatalogName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "csTableName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "csColumnName":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v5, "queryBuf":Ljava/lang/StringBuilder;
    const-string v6, "SHOW FULL COLUMNS FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    const/4 v6, 0x0

    .line 445
    .local v6, "collationStmt":Ljava/sql/Statement;
    const/4 v7, 0x0

    .line 448
    .local v7, "collationRs":Ljava/sql/ResultSet;
    :try_start_1
    iget-object v8, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v8

    move-object v6, v8

    .line 450
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    move-object v7, v8

    .line 452
    :cond_1
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 453
    const-string v8, "Field"

    invoke-interface {v7, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 454
    const-string v8, "Collation"

    invoke-interface {v7, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :cond_2
    nop

    .line 484
    if-eqz v7, :cond_3

    .line 461
    :try_start_2
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    .line 462
    const/4 v7, 0x0

    .line 465
    :cond_3
    if-eqz v6, :cond_4

    .line 466
    invoke-interface {v6}, Ljava/sql/Statement;->close()V

    .line 467
    const/4 v6, 0x0

    :cond_4
    nop

    .line 469
    goto :goto_0

    .line 460
    :catchall_0
    move-exception v8

    .line 467
    if-eqz v7, :cond_5

    .line 461
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    .line 462
    const/4 v7, 0x0

    .line 465
    :cond_5
    if-eqz v6, :cond_6

    .line 466
    invoke-interface {v6}, Ljava/sql/Statement;->close()V

    .line 467
    const/4 v6, 0x0

    :cond_6
    nop

    .line 460
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 471
    .end local v0    # "dbmd":Ljava/sql/DatabaseMetaData;
    .end local v1    # "quotedIdStr":Ljava/lang/String;
    .end local v2    # "csCatalogName":Ljava/lang/String;
    .end local v3    # "csTableName":Ljava/lang/String;
    .end local v4    # "csColumnName":Ljava/lang/String;
    .end local v5    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v6    # "collationStmt":Ljava/sql/Statement;
    .end local v7    # "collationRs":Ljava/sql/ResultSet;
    :cond_7
    :goto_0
    goto :goto_1

    .line 473
    :cond_8
    :try_start_3
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    goto :goto_1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 476
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 477
    throw v1

    .line 484
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCollationIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    return v0
.end method

.method public getColumnLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    if-eq v2, v1, :cond_0

    .line 493
    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method getDecimals()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    .local v0, "fullNameBuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "fullNameBuf":Ljava/lang/StringBuilder;
    iput-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullOriginalName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 527
    .local v0, "fullOriginalNameBuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "fullOriginalNameBuf":Ljava/lang/StringBuilder;
    iput-object v0, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 540
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    return-wide v0
.end method

.method public declared-synchronized getMaxBytesPerCharacter()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I

    .line 547
    .end local p0    # "this":Lcom/mysql/jdbc/Field;
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMysqlType()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 556
    iget v0, p0, Lcom/mysql/jdbc/Field;->nameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->nameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameNoAliases()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 563
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    if-eq v2, v1, :cond_0

    .line 576
    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTableName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-eq v2, v1, :cond_0

    .line 584
    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecisionAdjustFactor()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    return v0
.end method

.method public getSQLType()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 668
    iget v0, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableNameNoAliases()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getvalueNeedsQuoting()Z
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    return v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .line 683
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinary()Z
    .locals 1

    .line 687
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlob()Z
    .locals 1

    .line 691
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharsetApplicableType()Z
    .locals 2

    .line 795
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xf7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultipleKey()Z
    .locals 1

    .line 702
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNotNull()Z
    .locals 2

    .line 706
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isOpaqueBinary()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 715
    iget v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3f

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v3, 0xfe

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v3, 0xfd

    if-ne v0, v3, :cond_2

    .line 718
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    const/16 v4, 0x19

    invoke-interface {v0, v3, v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    return v2

    .line 724
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->isImplicitTemporaryTable()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v3, "binary"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPrimaryKey()Z
    .locals 1

    .line 732
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReadOnly()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "orgColumnName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "orgTableName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 749
    .end local v0    # "orgColumnName":Ljava/lang/String;
    .end local v1    # "orgTableName":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method protected isSingleBit()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->isSingleBit:Z

    return v0
.end method

.method public isUniqueKey()Z
    .locals 1

    .line 753
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsigned()Z
    .locals 1

    .line 757
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZeroFill()Z
    .locals 1

    .line 765
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 801
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 803
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    if-nez v0, :cond_1

    .line 804
    :cond_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 806
    :cond_1
    return-void
.end method

.method public setEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)V
    .locals 4
    .param p1, "javaEncodingName"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 403
    :try_start_0
    invoke-static {p1, p2}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    nop

    .line 409
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 406
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 407
    throw v1
.end method

.method setMysqlType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 809
    iput p1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 810
    invoke-static {p1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 811
    return-void
.end method

.method public setUnsigned()V
    .locals 1

    .line 761
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 762
    return-void
.end method

.method protected setUseOldNameMetadata(Z)V
    .locals 0
    .param p1, "useOldNameMetadata"    # Z

    .line 814
    iput-boolean p1, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 815
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 820
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v0, "asString":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, "catalog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v1, ",tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v1, ",originalTableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string v1, ",columnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, ",originalColumnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ",mysqlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const-string v1, " AUTO_INCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    const-string v1, " PRIMARY_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isUniqueKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    const-string v1, " UNIQUE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 853
    const-string v1, " BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 857
    const-string v1, " BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isMultipleKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 861
    const-string v1, " MULTI_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 865
    const-string v1, " UNSIGNED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isZeroFill()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 869
    const-string v1, " ZEROFILL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_7
    const-string v1, ", charsetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    const-string v1, ", charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 886
    .end local v0    # "asString":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    .line 887
    .local v0, "t":Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
