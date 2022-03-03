.class public final Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseInfo"
.end annotation


# instance fields
.field private batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field canRewriteAsMultiValueInsert:Z

.field charEncoding:Ljava/lang/String;

.field firstStmtChar:C

.field foundLoadData:Z

.field hasPlaceholders:Z

.field isOnDuplicateKeyUpdate:Z

.field lastUsed:J

.field locationOfOnDuplicateKeyUpdate:I

.field numberOfQueries:I

.field parametersInDuplicateKeyClause:Z

.field statementLength:I

.field statementStartPos:I

.field staticSql:[[B

.field valuesClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "dbmd"    # Ljava/sql/DatabaseMetaData;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V
    .locals 28
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "dbmd"    # Ljava/sql/DatabaseMetaData;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p6, "buildRewriteInfo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-char v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 145
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 147
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 149
    iput v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 151
    iput v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 153
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 155
    const/4 v2, 0x0

    check-cast v2, [[B

    iput-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 157
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->hasPlaceholders:Z

    .line 159
    const/4 v12, 0x1

    iput v12, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    .line 161
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 163
    const/4 v2, -0x1

    iput v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 167
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 182
    if-eqz v10, :cond_26

    .line 187
    :try_start_0
    iput-object v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 190
    invoke-interface/range {p3 .. p3}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 192
    .local v13, "quotedIdentifierString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 194
    .local v3, "quotedIdentifierChar":C
    if-eqz v13, :cond_0

    const-string v4, " "

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 195
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    move v14, v3

    goto :goto_0

    .line 198
    :cond_0
    move v14, v3

    .end local v3    # "quotedIdentifierChar":C
    .local v14, "quotedIdentifierChar":C
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 201
    .local v15, "endpointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v3, 0x0

    .line 202
    .local v3, "inQuotes":Z
    const/4 v4, 0x0

    .line 203
    .local v4, "quoteChar":C
    const/4 v5, 0x0

    .line 204
    .local v5, "inQuotedId":Z
    const/4 v6, 0x0

    .line 207
    .local v6, "lastParmEnd":I
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v7

    move/from16 v16, v7

    .line 212
    .local v16, "noBackslashEscapes":Z
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 214
    move/from16 v17, v3

    move v9, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v3    # "inQuotes":Z
    .end local v4    # "quoteChar":C
    .end local v5    # "inQuotedId":Z
    .end local v6    # "lastParmEnd":I
    .local v7, "i":I
    .local v9, "quoteChar":C
    .local v17, "inQuotes":Z
    .local v18, "inQuotedId":Z
    .local v19, "lastParmEnd":I
    :goto_1
    iget v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    const/4 v4, 0x2

    if-ge v7, v3, :cond_1b

    .line 215
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 217
    .local v3, "c":C
    iget-char v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    if-nez v5, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    iput-char v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 222
    const/16 v6, 0x49

    if-ne v5, v6, :cond_2

    .line 223
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v5

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v8

    invoke-static {v10, v5, v6, v8}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v5

    iput v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 225
    if-eq v5, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 229
    :cond_2
    if-nez v16, :cond_3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3

    iget v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    sub-int/2addr v5, v12

    if-ge v7, v5, :cond_3

    .line 230
    add-int/lit8 v7, v7, 0x1

    .line 231
    goto/16 :goto_d

    .line 235
    :cond_3
    if-nez v17, :cond_5

    if-eqz v14, :cond_5

    if-ne v3, v14, :cond_5

    .line 236
    if-nez v18, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    move/from16 v18, v5

    goto/16 :goto_a

    .line 237
    :cond_5
    if-nez v18, :cond_14

    .line 240
    const/16 v5, 0x22

    const/16 v6, 0x27

    if-eqz v17, :cond_c

    .line 241
    if-eq v3, v6, :cond_6

    if-ne v3, v5, :cond_9

    :cond_6
    if-ne v3, v9, :cond_9

    .line 242
    iget v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    sub-int/2addr v5, v12

    if-ge v7, v5, :cond_7

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7

    .line 243
    add-int/lit8 v7, v7, 0x1

    .line 244
    goto/16 :goto_d

    .line 247
    :cond_7
    if-nez v17, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    move/from16 v17, v5

    .line 248
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 249
    :cond_9
    if-eq v3, v6, :cond_a

    if-ne v3, v5, :cond_14

    :cond_a
    if-ne v3, v9, :cond_14

    .line 250
    if-nez v17, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    move/from16 v17, v5

    .line 251
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 254
    :cond_c
    const/16 v8, 0x23

    if-eq v3, v8, :cond_12

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_d

    add-int/lit8 v2, v7, 0x1

    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v2, v0, :cond_d

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_d

    goto :goto_8

    .line 267
    :cond_d
    const/16 v0, 0x2f

    if-ne v3, v0, :cond_10

    add-int/lit8 v2, v7, 0x1

    iget v8, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v2, v8, :cond_10

    .line 269
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 271
    .local v2, "cNext":C
    const/16 v5, 0x2a

    if-ne v2, v5, :cond_f

    .line 272
    add-int/lit8 v7, v7, 0x2

    .line 274
    move v6, v7

    .local v6, "j":I
    :goto_6
    iget v8, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v6, v8, :cond_f

    .line 275
    add-int/lit8 v7, v7, 0x1

    .line 276
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v2, v8

    .line 278
    if-ne v2, v5, :cond_e

    add-int/lit8 v8, v6, 0x1

    iget v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v8, v5, :cond_e

    .line 279
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_e

    .line 280
    add-int/lit8 v7, v7, 0x1

    .line 282
    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v7, v0, :cond_f

    .line 283
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    .end local v3    # "c":C
    .local v0, "c":C
    goto :goto_7

    .line 274
    .end local v0    # "c":C
    .restart local v3    # "c":C
    :cond_e
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x2a

    goto :goto_6

    .line 291
    .end local v2    # "cNext":C
    .end local v6    # "j":I
    :cond_f
    :goto_7
    goto :goto_a

    :cond_10
    if-eq v3, v6, :cond_11

    if-ne v3, v5, :cond_f

    .line 292
    :cond_11
    const/16 v17, 0x1

    .line 293
    move v9, v3

    goto :goto_a

    .line 256
    :cond_12
    :goto_8
    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    sub-int/2addr v0, v12

    .line 258
    .local v0, "endOfStmt":I
    :goto_9
    if-ge v7, v0, :cond_1a

    .line 259
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .line 261
    const/16 v2, 0xd

    if-eq v3, v2, :cond_1a

    const/16 v2, 0xa

    if-ne v3, v2, :cond_13

    .line 262
    goto :goto_d

    .line 258
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 298
    .end local v0    # "endOfStmt":I
    :cond_14
    :goto_a
    if-nez v17, :cond_1a

    if-nez v18, :cond_1a

    .line 299
    const/16 v0, 0x3f

    if-ne v3, v0, :cond_16

    .line 300
    new-array v0, v4, [I

    const/4 v2, 0x0

    aput v19, v0, v2

    aput v7, v0, v12

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v0, v7, 0x1

    .line 303
    .end local v19    # "lastParmEnd":I
    .local v0, "lastParmEnd":I
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v2, :cond_15

    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    if-le v7, v2, :cond_15

    .line 304
    iput-boolean v12, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 214
    .end local v3    # "c":C
    :cond_15
    move/from16 v19, v0

    goto :goto_d

    .line 306
    .end local v0    # "lastParmEnd":I
    .restart local v3    # "c":C
    .restart local v19    # "lastParmEnd":I
    :cond_16
    const/16 v0, 0x3b

    if-ne v3, v0, :cond_1a

    .line 307
    add-int/lit8 v0, v7, 0x1

    .line 308
    .local v0, "j":I
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v0, v2, :cond_1a

    .line 309
    :goto_b
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v0, v2, :cond_18

    .line 310
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_17

    .line 311
    goto :goto_c

    .line 309
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 314
    :cond_18
    :goto_c
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v0, v2, :cond_19

    .line 315
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    add-int/2addr v2, v12

    iput v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    .line 317
    :cond_19
    add-int/lit8 v7, v0, -0x1

    .line 214
    .end local v0    # "j":I
    .end local v3    # "c":C
    :cond_1a
    :goto_d
    add-int/2addr v7, v12

    const/4 v0, 0x0

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 323
    :cond_1b
    iget-char v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_1d

    .line 324
    const-string v0, "LOAD DATA"

    invoke-static {v10, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 325
    iput-boolean v12, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    const/4 v0, 0x0

    goto :goto_e

    .line 327
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    goto :goto_e

    .line 330
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 333
    :goto_e
    new-array v2, v4, [I

    aput v19, v2, v0

    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    aput v0, v2, v12

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 335
    array-length v0, v0

    if-le v0, v12, :cond_1e

    const/4 v2, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->hasPlaceholders:Z

    .line 337
    const/4 v0, 0x0

    .end local v7    # "i":I
    .local v0, "i":I
    :goto_10
    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 338
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object/from16 v20, v2

    .line 339
    .local v20, "ep":[I
    aget v2, v20, v12

    move/from16 v22, v2

    .line 340
    .local v22, "end":I
    const/16 v21, 0x0

    aget v2, v20, v21

    move v8, v2

    .line 341
    .local v8, "begin":I
    sub-int v7, v22, v8

    .line 343
    .local v7, "len":I
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    if-eqz v2, :cond_1f

    .line 344
    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-static {v10, v8, v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object v3

    aput-object v3, v2, v0

    move/from16 v23, v9

    goto/16 :goto_12

    .line 345
    :cond_1f
    if-nez v11, :cond_21

    .line 346
    new-array v2, v7, [B

    .line 348
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    if-ge v3, v7, :cond_20

    .line 349
    add-int v4, v8, v3

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 352
    .end local v3    # "j":I
    :cond_20
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aput-object v2, v3, v0

    .line 353
    .end local v2    # "buf":[B
    move/from16 v23, v9

    goto :goto_12

    .line 354
    :cond_21
    if-eqz p5, :cond_22

    .line 355
    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v23

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v24

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v25, v6

    move v6, v8

    move/from16 v26, v7

    .end local v7    # "len":I
    .local v26, "len":I
    move/from16 v27, v8

    .end local v8    # "begin":I
    .local v27, "begin":I
    move/from16 v8, v23

    move/from16 v23, v9

    .end local v9    # "quoteChar":C
    .local v23, "quoteChar":C
    move-object/from16 v9, v24

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    aput-object v2, v25, v0

    goto :goto_12

    .line 358
    .end local v23    # "quoteChar":C
    .end local v26    # "len":I
    .end local v27    # "begin":I
    .restart local v7    # "len":I
    .restart local v8    # "begin":I
    .restart local v9    # "quoteChar":C
    :cond_22
    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v23, v9

    .end local v7    # "len":I
    .end local v8    # "begin":I
    .end local v9    # "quoteChar":C
    .restart local v23    # "quoteChar":C
    .restart local v26    # "len":I
    .restart local v27    # "begin":I
    iget-object v9, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v24

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v5, v27

    move/from16 v6, v26

    move-object/from16 v8, p2

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    aput-object v2, v25, v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v20    # "ep":[I
    .end local v22    # "end":I
    .end local v26    # "len":I
    .end local v27    # "begin":I
    :goto_12
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v23

    goto/16 :goto_10

    .end local v23    # "quoteChar":C
    .restart local v9    # "quoteChar":C
    :cond_23
    move/from16 v23, v9

    const/16 v21, 0x0

    .line 368
    .end local v0    # "i":I
    .end local v9    # "quoteChar":C
    .end local v13    # "quotedIdentifierString":Ljava/lang/String;
    .end local v14    # "quotedIdentifierChar":C
    .end local v15    # "endpointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .end local v16    # "noBackslashEscapes":Z
    .end local v17    # "inQuotes":Z
    .end local v18    # "inQuotedId":Z
    .end local v19    # "lastParmEnd":I
    nop

    .line 370
    if-eqz p6, :cond_25

    .line 371
    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    if-ne v0, v12, :cond_24

    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    invoke-static {v10, v0, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 374
    if-eqz v0, :cond_25

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 375
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    .line 378
    :cond_25
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_14

    .line 183
    :cond_26
    :try_start_1
    const-string v0, "PreparedStatement.61"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p3    # "dbmd":Ljava/sql/DatabaseMetaData;
    .end local p4    # "encoding":Ljava/lang/String;
    .end local p5    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .end local p6    # "buildRewriteInfo":Z
    throw v0
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    .local v0, "oobEx":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p3    # "dbmd":Ljava/sql/DatabaseMetaData;
    .restart local p4    # "encoding":Ljava/lang/String;
    .restart local p5    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .restart local p6    # "buildRewriteInfo":Z
    :goto_14
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 365
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 367
    throw v2
.end method

.method private constructor <init>([[BCZZIII)V
    .locals 3
    .param p1, "staticSql"    # [[B
    .param p2, "firstStmtChar"    # C
    .param p3, "foundLoadData"    # Z
    .param p4, "isOnDuplicateKeyUpdate"    # Z
    .param p5, "locationOfOnDuplicateKeyUpdate"    # I
    .param p6, "statementLength"    # I
    .param p7, "statementStartPos"    # I

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 145
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 147
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 149
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 151
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 153
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 155
    const/4 v1, 0x0

    check-cast v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 157
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->hasPlaceholders:Z

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    .line 161
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 163
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 167
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 598
    iput-char p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 599
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 600
    iput-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 601
    iput p5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 602
    iput p6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 603
    iput p7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 604
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 605
    return-void
.end method

.method private buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V
    .locals 16
    .param p1, "numBatch"    # I
    .param p2, "visitor"    # Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->hasPlaceholders:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    .line 516
    if-ne v1, v5, :cond_0

    .line 519
    iget-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 521
    return-void

    .line 526
    :cond_0
    iget-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v3, v3, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aget-object v3, v3, v4

    .line 527
    .local v3, "headStaticSql":[B
    invoke-interface {v2, v3}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v5

    invoke-interface {v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 529
    add-int/lit8 v5, v1, -0x1

    .line 530
    .local v5, "numValueRepeats":I
    iget-object v6, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v6, :cond_1

    .line 531
    add-int/lit8 v5, v5, -0x1

    .line 534
    :cond_1
    iget-object v6, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v6, v6, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aget-object v6, v6, v4

    .line 535
    .local v6, "valuesStaticSql":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 536
    invoke-interface {v2, v6}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->mergeWithLast([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v8

    invoke-interface {v8}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 535
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 539
    .end local v7    # "i":I
    :cond_2
    iget-object v7, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v7, :cond_3

    .line 540
    iget-object v7, v7, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aget-object v4, v7, v4

    .line 541
    .local v4, "batchOdkuStaticSql":[B
    invoke-interface {v2, v4}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->mergeWithLast([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v7

    invoke-interface {v7}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 544
    .end local v4    # "batchOdkuStaticSql":[B
    :cond_3
    return-void

    .line 550
    .end local v3    # "headStaticSql":[B
    .end local v5    # "numValueRepeats":I
    .end local v6    # "valuesStaticSql":[B
    :cond_4
    iget-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v3, v3, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 551
    .local v3, "headStaticSql":[[B
    array-length v6, v3

    .line 552
    .local v6, "headStaticSqlLength":I
    add-int/lit8 v7, v6, -0x1

    aget-object v7, v3, v7

    .line 554
    .local v7, "endOfHead":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v8, v9, :cond_5

    .line 555
    aget-object v9, v3, v8

    invoke-interface {v2, v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v9

    invoke-interface {v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 554
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 559
    .end local v8    # "i":I
    :cond_5
    add-int/lit8 v8, v1, -0x1

    .line 560
    .local v8, "numValueRepeats":I
    iget-object v9, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v9, :cond_6

    .line 561
    add-int/lit8 v8, v8, -0x1

    .line 564
    :cond_6
    iget-object v9, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v9, v9, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 565
    .local v9, "valuesStaticSql":[[B
    array-length v10, v9

    .line 566
    .local v10, "valuesStaticSqlLength":I
    aget-object v11, v9, v4

    .line 567
    .local v11, "beginOfValues":[B
    add-int/lit8 v12, v10, -0x1

    aget-object v12, v9, v12

    .line 569
    .local v12, "endOfValues":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_8

    .line 570
    invoke-interface {v2, v12, v11}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v14

    invoke-interface {v14}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 571
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_3
    add-int/lit8 v15, v10, -0x1

    if-ge v14, v15, :cond_7

    .line 572
    aget-object v15, v9, v14

    invoke-interface {v2, v15}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v15

    invoke-interface {v15}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 571
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 569
    .end local v14    # "j":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 577
    .end local v13    # "i":I
    :cond_8
    iget-object v13, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v13, :cond_c

    .line 578
    iget-object v13, v13, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 579
    .local v13, "batchOdkuStaticSql":[[B
    array-length v14, v13

    .line 580
    .local v14, "batchOdkuStaticSqlLength":I
    aget-object v4, v13, v4

    .line 581
    .local v4, "beginOfOdku":[B
    add-int/lit8 v15, v14, -0x1

    aget-object v15, v13, v15

    .line 583
    .local v15, "endOfOdku":[B
    if-le v1, v5, :cond_b

    .line 584
    if-lez v8, :cond_9

    move-object v5, v12

    goto :goto_4

    :cond_9
    move-object v5, v7

    :goto_4
    invoke-interface {v2, v5, v4}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v5

    invoke-interface {v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 585
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_5
    if-ge v5, v14, :cond_a

    .line 586
    aget-object v0, v13, v5

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 585
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .end local v5    # "i":I
    :cond_a
    goto :goto_6

    .line 589
    :cond_b
    invoke-interface {v2, v15}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 591
    .end local v4    # "beginOfOdku":[B
    .end local v13    # "batchOdkuStaticSql":[[B
    .end local v14    # "batchOdkuStaticSqlLength":I
    .end local v15    # "endOfOdku":[B
    :goto_6
    goto :goto_7

    .line 592
    :cond_c
    invoke-interface {v2, v7}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 594
    :goto_7
    return-void
.end method

.method private buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 20
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "metadata"    # Ljava/sql/DatabaseMetaData;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    .line 389
    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 391
    .local v2, "odkuClause":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 393
    .local v4, "headSql":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v5, :cond_1

    .line 394
    const/4 v5, 0x0

    iget v6, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 396
    :cond_1
    move-object/from16 v4, p1

    .line 399
    :goto_1
    new-instance v12, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    const/4 v11, 0x0

    move-object v5, v12

    move-object v6, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v12, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 400
    new-instance v5, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x0

    move-object v13, v5

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v13 .. v19}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v5, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 401
    iput-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 403
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 404
    new-instance v3, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    move-object v8, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v14}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 406
    :cond_2
    return-void
.end method

.method private extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "quoteCharStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 409
    const/4 v0, -0x1

    .line 410
    .local v0, "indexOfValues":I
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    move v7, v1

    .line 413
    .local v7, "valuesSearchStart":I
    :goto_0
    const/16 v8, 0x28

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v3, "VALUE"

    move v1, v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    goto :goto_1

    .line 418
    :cond_0
    const-string v1, "VALUE"

    invoke-static {v7, p1, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 421
    :goto_1
    if-lez v0, :cond_3

    .line 423
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 424
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    .line 425
    add-int/lit8 v2, v0, 0x6

    .line 426
    .end local v7    # "valuesSearchStart":I
    .local v2, "valuesSearchStart":I
    const/4 v0, -0x1

    move v7, v2

    goto :goto_2

    .line 429
    .end local v2    # "valuesSearchStart":I
    .restart local v7    # "valuesSearchStart":I
    :cond_1
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 430
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v8, :cond_2

    .line 431
    add-int/lit8 v2, v0, 0x6

    .line 432
    .end local v7    # "valuesSearchStart":I
    .restart local v2    # "valuesSearchStart":I
    const/4 v0, -0x1

    move v7, v2

    .line 435
    .end local v1    # "c":C
    .end local v2    # "valuesSearchStart":I
    .restart local v7    # "valuesSearchStart":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 440
    :cond_3
    const/4 v1, 0x0

    if-ne v0, v9, :cond_4

    .line 441
    return-object v1

    .line 445
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x5

    if-le v2, v3, :cond_5

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_5

    const/4 v2, 0x6

    goto :goto_3

    :cond_5
    const/4 v2, 0x5

    .line 446
    .local v2, "valLength":I
    :goto_3
    add-int v3, v0, v2

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 448
    .local v3, "indexOfFirstParen":I
    if-ne v3, v9, :cond_6

    .line 449
    return-object v1

    .line 452
    :cond_6
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 454
    .local v1, "endOfValuesClause":I
    :goto_4
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method declared-synchronized getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 10
    .param p1, "numBatch"    # I

    monitor-enter p0

    .line 461
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;

    invoke-direct {v0}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;-><init>()V

    .line 462
    .local v0, "apv":Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V

    .line 464
    new-instance v9, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->getStaticSqlStrings()[[B

    move-result-object v2

    iget-char v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iget-boolean v5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>([[BCZZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v9

    .line 467
    .local v1, "batchParseInfo":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    monitor-exit p0

    return-object v1

    .line 460
    .end local v0    # "apv":Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;
    .end local v1    # "batchParseInfo":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .end local p0    # "this":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .end local p1    # "numBatch":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSqlForBatch(I)Ljava/lang/String;
    .locals 2
    .param p1, "numBatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v0

    .line 478
    .local v0, "batchInfo":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "batchInfo"    # Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "size":I
    iget-object v1, p1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 487
    .local v1, "sqlStrings":[[B
    array-length v2, v1

    .line 489
    .local v2, "sqlStringsLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 490
    aget-object v4, v1, v3

    array-length v4, v4

    add-int/2addr v0, v4

    .line 491
    add-int/lit8 v0, v0, 0x1

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 496
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_1

    .line 497
    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 501
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
