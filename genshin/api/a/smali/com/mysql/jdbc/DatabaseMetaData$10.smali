.class Lcom/mysql/jdbc/DatabaseMetaData$10;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6361
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6361
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$10;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 17
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6363
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 6364
    .local v3, "results":Ljava/sql/ResultSet;
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v6

    .line 6367
    .local v6, "with_where":Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, " Extra LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6368
    .local v0, "whereBuf":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6372
    .local v7, "rsFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v9, 0x17

    const/4 v10, 0x1

    invoke-interface {v8, v4, v10, v9}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_6

    .line 6374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    .line 6375
    const/4 v8, 0x1

    .line 6377
    .local v8, "firstTime":Z
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SHOW CREATE TABLE "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6379
    .local v11, "query":Ljava/lang/String;
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-interface {v12, v11}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v12

    move-object v3, v12

    .line 6380
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 6381
    invoke-interface {v3, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6382
    .local v12, "createTableString":Ljava/lang/String;
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, "\n"

    invoke-direct {v13, v12, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6384
    .local v13, "lineTokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6385
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 6386
    .local v14, "line":Ljava/lang/String;
    const-string v15, "on update CURRENT_TIMESTAMP"

    invoke-static {v14, v15}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/4 v4, -0x1

    if-le v15, v4, :cond_4

    .line 6387
    const/4 v15, 0x1

    .line 6388
    .local v15, "usingBackTicks":Z
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v9, v9, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6390
    .local v9, "beginPos":I
    const-string v10, "\""

    if-ne v9, v4, :cond_0

    .line 6391
    :try_start_1
    invoke-virtual {v14, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v9, v16

    .line 6392
    const/4 v15, 0x0

    .line 6395
    :cond_0
    if-eq v9, v4, :cond_4

    .line 6396
    const/16 v16, -0x1

    .line 6398
    .local v16, "endPos":I
    if-eqz v15, :cond_1

    .line 6399
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v14, v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .end local v16    # "endPos":I
    .local v5, "endPos":I
    goto :goto_2

    .line 6401
    .end local v5    # "endPos":I
    .restart local v16    # "endPos":I
    :cond_1
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v14, v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 6404
    .end local v16    # "endPos":I
    .restart local v5    # "endPos":I
    :goto_2
    if-eq v5, v4, :cond_4

    .line 6405
    if-eqz v6, :cond_3

    .line 6406
    if-nez v8, :cond_2

    .line 6407
    const-string v4, " or"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6409
    :cond_2
    const/4 v8, 0x0

    .line 6411
    :goto_3
    const-string v4, " Field=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6412
    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v14, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6413
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6415
    :cond_3
    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v14, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6420
    .end local v5    # "endPos":I
    .end local v9    # "beginPos":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "usingBackTicks":Z
    :cond_4
    :goto_4
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_1

    .line 6421
    .end local v12    # "createTableString":Ljava/lang/String;
    .end local v13    # "lineTokenizer":Ljava/util/StringTokenizer;
    :cond_5
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 6424
    .end local v8    # "firstTime":Z
    .end local v11    # "query":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 6425
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SHOW COLUMNS FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6426
    .local v4, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v9, v9, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6427
    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6428
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v8

    invoke-static {v2, v5, v8}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6429
    if-eqz v6, :cond_8

    .line 6430
    const-string v5, " WHERE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6434
    :cond_8
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v3, v5

    .line 6436
    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_d

    .line 6437
    const-string v5, "Field"

    if-nez v6, :cond_a

    :try_start_2
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6438
    :cond_a
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v10, "Type"

    invoke-interface {v3, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Null"

    invoke-interface {v3, v11}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 6439
    .local v8, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    const/16 v9, 0x8

    new-array v9, v9, [[B

    .line 6441
    .local v9, "rowVal":[[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 6443
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v9, v12

    .line 6445
    iget-short v5, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v5}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v9, v12

    .line 6447
    const/4 v5, 0x3

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v9, v5

    .line 6449
    const/4 v5, 0x4

    iget-object v13, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v13, :cond_b

    move-object v13, v10

    goto :goto_6

    :cond_b
    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    :goto_6
    aput-object v13, v9, v5

    .line 6451
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v13, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v13, 0x5

    aput-object v5, v9, v13

    .line 6453
    const/4 v5, 0x6

    iget-object v14, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v14, :cond_c

    :goto_7
    goto :goto_8

    :cond_c
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_7

    :goto_8
    aput-object v10, v9, v5

    .line 6455
    const/4 v5, 0x7

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v9, v5

    .line 6457
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v15}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v9, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6458
    nop

    .end local v8    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .end local v9    # "rowVal":[[B
    goto/16 :goto_5

    .line 6461
    .end local v0    # "whereBuf":Ljava/lang/StringBuilder;
    .end local v4    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v7    # "rsFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    nop

    .line 6476
    if-eqz v3, :cond_e

    .line 6468
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6470
    goto :goto_9

    .line 6469
    :catch_0
    move-exception v0

    .line 6472
    :goto_9
    const/4 v3, 0x0

    goto :goto_b

    .line 6466
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_c

    .line 6461
    :catch_1
    move-exception v0

    .line 6462
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_4
    const-string v4, "42S02"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_f

    .line 6465
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    nop

    .line 6472
    if-eqz v3, :cond_e

    .line 6468
    :try_start_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 6470
    goto :goto_a

    .line 6469
    :catch_2
    move-exception v0

    .line 6472
    :goto_a
    const/4 v0, 0x0

    move-object v3, v0

    :cond_e
    :goto_b
    nop

    .line 6474
    nop

    .line 6476
    return-void

    .line 6463
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_f
    nop

    .end local v3    # "results":Ljava/sql/ResultSet;
    .end local v6    # "with_where":Z
    .end local p1    # "catalogStr":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6472
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    .restart local v6    # "with_where":Z
    .restart local p1    # "catalogStr":Ljava/lang/String;
    :goto_c
    if-eqz v3, :cond_10

    .line 6468
    :try_start_7
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 6470
    goto :goto_d

    .line 6469
    :catch_3
    move-exception v0

    .line 6472
    :goto_d
    const/4 v3, 0x0

    .line 6466
    :cond_10
    throw v4
.end method
