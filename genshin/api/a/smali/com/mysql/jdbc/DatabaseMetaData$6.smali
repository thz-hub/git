.class Lcom/mysql/jdbc/DatabaseMetaData$6;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
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

.field final synthetic val$sortedRows:Ljava/util/SortedMap;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$unique:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3344
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    iput-boolean p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

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

    .line 3344
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$6;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 21
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3346
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Seq_in_index"

    const-string v4, "Key_name"

    const/4 v5, 0x0

    .line 3349
    .local v5, "results":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "SHOW INDEX FROM "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 3350
    .local v6, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v8

    invoke-static {v0, v7, v8}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    const-string v0, " FROM "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3352
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v7

    invoke-static {v2, v0, v7}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3355
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 3366
    goto :goto_0

    .line 3356
    :catch_0
    move-exception v0

    .line 3357
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_2
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    .line 3360
    .local v7, "errorCode":I
    const-string v8, "42S02"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3362
    const/16 v8, 0x47a

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 3363
    :cond_0
    nop

    .end local v5    # "results":Ljava/sql/ResultSet;
    .end local p1    # "catalogStr":Ljava/lang/String;
    throw v0

    .line 3368
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v7    # "errorCode":I
    .restart local v5    # "results":Ljava/sql/ResultSet;
    .restart local p1    # "catalogStr":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3369
    const/16 v0, 0xe

    new-array v0, v0, [[B

    .line 3370
    .local v0, "row":[[B
    const/4 v7, 0x0

    if-nez v2, :cond_2

    new-array v8, v7, [B

    goto :goto_1

    :cond_2
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v8, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    :goto_1
    aput-object v8, v0, v7

    .line 3371
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 3372
    const/4 v10, 0x2

    const-string v11, "Table"

    invoke-interface {v5, v11}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v0, v10

    .line 3374
    const-string v10, "Non_unique"

    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 3376
    .local v10, "indexIsUnique":Z
    :goto_2
    const/4 v11, 0x3

    if-nez v10, :cond_4

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v13, "true"

    goto :goto_3

    :cond_4
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v13, "false"

    :goto_3
    invoke-virtual {v12, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v0, v11

    .line 3377
    const/4 v11, 0x4

    new-array v12, v7, [B

    aput-object v12, v0, v11

    .line 3378
    const/4 v11, 0x5

    invoke-interface {v5, v4}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v0, v11

    .line 3379
    const/4 v11, 0x3

    .line 3380
    .local v11, "indexType":S
    const/4 v12, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3381
    const/4 v12, 0x7

    invoke-interface {v5, v3}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3382
    const/16 v12, 0x8

    const-string v13, "Column_name"

    invoke-interface {v5, v13}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3383
    const/16 v12, 0x9

    const-string v13, "Collation"

    invoke-interface {v5, v13}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3385
    const-string v12, "Cardinality"

    invoke-interface {v5, v12}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 3388
    .local v12, "cardinality":J
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v14

    if-nez v14, :cond_5

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v12, v14

    if-lez v16, :cond_5

    .line 3389
    const-wide/32 v12, 0x7fffffff

    move-wide/from16 v19, v12

    goto :goto_4

    .line 3392
    :cond_5
    move-wide/from16 v19, v12

    .end local v12    # "cardinality":J
    .local v19, "cardinality":J
    :goto_4
    const/16 v12, 0xa

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3393
    const/16 v12, 0xb

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v14, "0"

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v0, v12

    .line 3394
    const/16 v12, 0xc

    aput-object v8, v0, v12

    .line 3396
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    if-nez v10, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    invoke-interface {v5, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5, v3}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v18

    move-object v13, v8

    move/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;ZSLjava/lang/String;S)V

    move-object v7, v8

    .line 3399
    .local v7, "indexInfoKey":Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;
    iget-boolean v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    if-eqz v8, :cond_7

    .line 3400
    if-eqz v10, :cond_8

    .line 3401
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v9, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v9, v0, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v8, v7, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 3405
    :cond_7
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v9, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v9, v0, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v8, v7, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3407
    .end local v0    # "row":[[B
    .end local v7    # "indexInfoKey":Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;
    .end local v10    # "indexIsUnique":Z
    .end local v11    # "indexType":S
    .end local v19    # "cardinality":J
    :cond_8
    :goto_6
    goto/16 :goto_0

    .line 3408
    .end local v6    # "queryBuf":Ljava/lang/StringBuilder;
    :cond_9
    nop

    .line 3418
    if-eqz v5, :cond_a

    .line 3411
    :try_start_3
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3413
    goto :goto_7

    .line 3412
    :catch_1
    move-exception v0

    .line 3415
    :goto_7
    const/4 v5, 0x0

    :cond_a
    nop

    .line 3417
    nop

    .line 3418
    return-void

    .line 3409
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 3415
    if-eqz v5, :cond_b

    .line 3411
    :try_start_4
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3413
    goto :goto_8

    .line 3412
    :catch_2
    move-exception v0

    .line 3415
    :goto_8
    const/4 v5, 0x0

    .line 3409
    :cond_b
    throw v3
.end method
