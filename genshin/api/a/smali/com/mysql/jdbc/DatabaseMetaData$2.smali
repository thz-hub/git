.class Lcom/mysql/jdbc/DatabaseMetaData$2;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$colPattern:Ljava/lang/String;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$schemaPattern:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tableNamePattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2340
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

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

    .line 2340
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$2;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 26
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2342
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Extra"

    const-string v4, " FROM "

    const-string v5, "COLUMNS FROM "

    const-string v6, "SHOW "

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 2344
    .local v7, "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    const-string v8, "TABLE_NAME"

    const-string v9, "%"

    const/4 v10, 0x0

    if-nez v0, :cond_3

    .line 2346
    const/4 v11, 0x0

    .line 2349
    .local v11, "tables":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    new-array v13, v10, [Ljava/lang/String;

    invoke-virtual {v0, v2, v12, v9, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v11, v0

    .line 2351
    :goto_0
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-interface {v11, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2353
    .local v0, "tableNameFromList":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    nop

    .end local v0    # "tableNameFromList":Ljava/lang/String;
    goto :goto_0

    .line 2355
    :cond_0
    nop

    .line 2559
    if-eqz v11, :cond_1

    .line 2358
    :try_start_1
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2361
    goto :goto_1

    .line 2359
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2360
    .local v0, "sqlEx":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2363
    .end local v0    # "sqlEx":Ljava/lang/Exception;
    :goto_1
    const/4 v11, 0x0

    :cond_1
    nop

    .line 2365
    nop

    .line 2366
    .end local v11    # "tables":Ljava/sql/ResultSet;
    goto :goto_5

    .line 2356
    .restart local v11    # "tables":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 2363
    if-eqz v11, :cond_2

    .line 2358
    :try_start_2
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2361
    goto :goto_2

    .line 2359
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2360
    .restart local v0    # "sqlEx":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2363
    .end local v0    # "sqlEx":Ljava/lang/Exception;
    :goto_2
    const/4 v11, 0x0

    .line 2356
    :cond_2
    throw v3

    .line 2367
    .end local v11    # "tables":Ljava/sql/ResultSet;
    :cond_3
    const/4 v11, 0x0

    .line 2370
    .restart local v11    # "tables":Ljava/sql/ResultSet;
    :try_start_3
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    new-array v14, v10, [Ljava/lang/String;

    invoke-virtual {v12, v2, v13, v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v11, v0

    .line 2372
    :goto_3
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_4

    .line 2373
    :try_start_4
    invoke-interface {v11, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "tableNameFromList":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2375
    nop

    .end local v0    # "tableNameFromList":Ljava/lang/String;
    goto :goto_3

    .line 2377
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v7

    goto/16 :goto_1a

    .line 2376
    :cond_4
    nop

    .line 2363
    if-eqz v11, :cond_5

    .line 2379
    :try_start_5
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2382
    goto :goto_4

    .line 2380
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2381
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2384
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_4
    const/4 v11, 0x0

    :cond_5
    nop

    .line 2386
    nop

    .line 2389
    .end local v11    # "tables":Ljava/sql/ResultSet;
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 2391
    .local v11, "tableName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2394
    .local v12, "results":Ljava/sql/ResultSet;
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 2396
    .local v13, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v14, 0x4

    const/4 v15, 0x1

    invoke-interface {v0, v14, v15, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const-string v10, "FULL "

    if-eqz v0, :cond_6

    .line 2397
    :try_start_7
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 2549
    .end local v13    # "queryBuf":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v7

    move-object/from16 v21, v8

    goto/16 :goto_18

    .line 2400
    .restart local v13    # "queryBuf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_7
    :try_start_8
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v14, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v14

    invoke-static {v11, v0, v14}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v14, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v14

    invoke-static {v2, v0, v14}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    const-string v0, " LIKE "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    const-string v14, "\'"

    invoke-static {v0, v14, v15}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    const/4 v0, 0x0

    .line 2411
    .local v0, "fixUpOrdinalsRequired":Z
    const/4 v14, 0x0

    .line 2413
    .local v14, "ordinalFixUpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v18, v7

    .end local v7    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Field"

    if-nez v15, :cond_8

    .line 2414
    const/4 v0, 0x1

    .line 2416
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2418
    .local v15, "fullColumnQueryBuf":Ljava/lang/StringBuilder;
    move/from16 v19, v0

    .end local v0    # "fixUpOrdinalsRequired":Z
    .local v19, "fixUpOrdinalsRequired":Z
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    .end local v8    # "i$":Ljava/util/Iterator;
    .local v21, "i$":Ljava/util/Iterator;
    :try_start_a
    invoke-interface {v0, v6, v9, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2419
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    :cond_7
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v6, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v6

    invoke-static {v11, v0, v6}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v6, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v6

    invoke-static {v2, v0, v6}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v12, v0

    .line 2431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 2433
    const/4 v0, 0x1

    .line 2435
    .local v0, "fullOrdinalPos":I
    :goto_8
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2436
    invoke-interface {v12, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2438
    .local v6, "fullOrdColName":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "fullOrdinalPos":I
    .local v8, "fullOrdinalPos":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    move v0, v8

    .end local v6    # "fullOrdColName":Ljava/lang/String;
    goto :goto_8

    .line 2549
    .end local v13    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v14    # "ordinalFixUpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "fullColumnQueryBuf":Ljava/lang/StringBuilder;
    .end local v19    # "fixUpOrdinalsRequired":Z
    .end local v21    # "i$":Ljava/util/Iterator;
    .local v8, "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v8

    move-object v2, v0

    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v21    # "i$":Ljava/util/Iterator;
    goto/16 :goto_18

    .line 2413
    .end local v21    # "i$":Ljava/util/Iterator;
    .local v0, "fixUpOrdinalsRequired":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "queryBuf":Ljava/lang/StringBuilder;
    .restart local v14    # "ordinalFixUpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v21    # "i$":Ljava/util/Iterator;
    move/from16 v19, v0

    .line 2442
    .end local v0    # "fixUpOrdinalsRequired":Z
    .restart local v19    # "fixUpOrdinalsRequired":Z
    :cond_9
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v12, v0

    .line 2444
    const/4 v0, 0x1

    move v6, v0

    .line 2446
    .local v6, "ordPos":I
    :goto_9
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2447
    const/16 v0, 0x18

    new-array v0, v0, [[B

    move-object v8, v0

    .line 2448
    .local v8, "rowVal":[[B
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .line 2449
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 2452
    const/4 v0, 0x2

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v10, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v8, v0

    .line 2453
    const/4 v0, 0x3

    invoke-interface {v12, v7}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v8, v0

    .line 2455
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v15, "Type"

    invoke-interface {v12, v15}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "Null"

    invoke-interface {v12, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v10, v15, v9}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 2457
    .local v9, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    iget-short v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v10, 0x4

    aput-object v0, v8, v10

    .line 2460
    const/4 v0, 0x5

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v8, v0

    .line 2462
    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const-string v10, "TEXT"

    if-nez v0, :cond_a

    .line 2463
    const/16 v23, 0x6

    const/16 v24, 0x0

    :try_start_b
    aput-object v24, v8, v23

    goto/16 :goto_d

    .line 2465
    :cond_a
    const-string v0, "Collation"

    invoke-interface {v12, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2466
    .local v0, "collation":Ljava/lang/String;
    const/16 v25, 0x1

    .line 2467
    .local v25, "mbminlen":I
    if-eqz v0, :cond_e

    iget-object v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "TINYTEXT"

    iget-object v2, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "MEDIUMTEXT"

    iget-object v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2469
    :cond_b
    const-string v2, "ucs2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v15, -0x1

    if-gt v2, v15, :cond_d

    const-string v2, "utf16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v15, :cond_c

    goto :goto_a

    .line 2471
    :cond_c
    const-string v2, "utf32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v15, :cond_e

    .line 2472
    const/16 v25, 0x4

    move/from16 v2, v25

    goto :goto_b

    .line 2470
    :cond_d
    :goto_a
    const/16 v25, 0x2

    move/from16 v2, v25

    goto :goto_b

    .line 2475
    :cond_e
    move/from16 v2, v25

    .end local v25    # "mbminlen":I
    .local v2, "mbminlen":I
    :goto_b
    const/4 v15, 0x1

    if-ne v2, v15, :cond_f

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    move-object/from16 v25, v0

    .end local v0    # "collation":Ljava/lang/String;
    .local v25, "collation":Ljava/lang/String;
    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c

    .end local v25    # "collation":Ljava/lang/String;
    .restart local v0    # "collation":Ljava/lang/String;
    :cond_f
    move-object/from16 v25, v0

    .end local v0    # "collation":Ljava/lang/String;
    .restart local v25    # "collation":Ljava/lang/String;
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    div-int/2addr v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    :goto_c
    const/4 v15, 0x6

    aput-object v0, v8, v15

    .line 2478
    .end local v2    # "mbminlen":I
    .end local v25    # "collation":Ljava/lang/String;
    :goto_d
    const/4 v0, 0x7

    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v0

    .line 2479
    const/16 v0, 0x8

    iget-object v2, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_e

    :cond_10
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_e
    aput-object v2, v8, v0

    .line 2480
    const/16 v0, 0x9

    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v0

    .line 2481
    const/16 v0, 0xa

    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v15, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2490
    :try_start_c
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v25, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v15, 0x4

    :try_start_d
    invoke-interface {v0, v15, v4, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2491
    const-string v0, "Comment"

    invoke-interface {v12, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v8, v2

    goto :goto_f

    .line 2493
    :cond_11
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v8, v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2497
    :goto_f
    goto :goto_11

    .line 2495
    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v25, v4

    const/4 v15, 0x4

    .line 2496
    .local v0, "E":Ljava/lang/Exception;
    :goto_10
    const/4 v2, 0x0

    :try_start_e
    new-array v4, v2, [B

    const/16 v2, 0xb

    aput-object v4, v8, v2

    .line 2500
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_11
    const/16 v0, 0xc

    const-string v2, "Default"

    invoke-interface {v12, v2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v0

    .line 2502
    const/16 v0, 0xd

    const/4 v2, 0x1

    new-array v4, v2, [B

    const/16 v17, 0x30

    const/16 v16, 0x0

    aput-byte v17, v4, v16

    aput-object v4, v8, v0

    .line 2503
    const/16 v0, 0xe

    new-array v4, v2, [B

    aput-byte v17, v4, v16

    aput-object v4, v8, v0

    .line 2505
    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v4, "CHAR"

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0xf

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v15, "BLOB"

    invoke-static {v0, v15}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v10, "BINARY"

    invoke-static {v0, v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_12

    goto :goto_12

    .line 2511
    :cond_12
    const/4 v2, 0x0

    aput-object v2, v8, v4

    goto :goto_13

    .line 2509
    :cond_13
    :goto_12
    const/4 v2, 0x6

    aget-object v0, v8, v2

    aput-object v0, v8, v4

    .line 2515
    :goto_13
    const/16 v0, 0x10

    if-nez v19, :cond_14

    .line 2516
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ordPos":I
    .local v2, "ordPos":I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v8, v0

    move v6, v2

    goto :goto_14

    .line 2518
    .end local v2    # "ordPos":I
    .restart local v6    # "ordPos":I
    :cond_14
    invoke-interface {v12, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    .local v2, "origColName":Ljava/lang/String;
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2521
    .local v4, "realOrdinal":Ljava/lang/Integer;
    if-eqz v4, :cond_18

    .line 2522
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aput-object v10, v8, v0

    .line 2529
    .end local v2    # "origColName":Ljava/lang/String;
    .end local v4    # "realOrdinal":Ljava/lang/Integer;
    :goto_14
    const/16 v0, 0x11

    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v0

    .line 2532
    const/16 v0, 0x12

    const/4 v2, 0x0

    aput-object v2, v8, v0

    .line 2533
    const/16 v0, 0x13

    aput-object v2, v8, v0

    .line 2534
    const/16 v0, 0x14

    aput-object v2, v8, v0

    .line 2535
    const/16 v0, 0x15

    aput-object v2, v8, v0

    .line 2537
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v8, v2

    .line 2539
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "extra":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 2542
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v10, "auto_increment"

    invoke-static {v0, v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const-string v15, "YES"

    const-string v23, "NO"

    const/4 v2, -0x1

    if-eq v10, v2, :cond_15

    move-object v2, v15

    goto :goto_15

    :cond_15
    move-object/from16 v2, v23

    :goto_15
    :try_start_f
    invoke-virtual {v4, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, 0x16

    aput-object v2, v8, v4

    .line 2543
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v10, "generated"

    invoke-static {v0, v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v2, -0x1

    if-eq v10, v2, :cond_16

    goto :goto_16

    :cond_16
    move-object/from16 v15, v23

    :goto_16
    invoke-virtual {v4, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, 0x17

    aput-object v2, v8, v4

    .line 2546
    :cond_17
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v10}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v10

    invoke-direct {v4, v8, v10}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    move-object/from16 v2, p1

    move-object/from16 v4, v25

    .end local v0    # "extra":Ljava/lang/String;
    .end local v8    # "rowVal":[[B
    .end local v9    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    goto/16 :goto_9

    .line 2524
    .restart local v2    # "origColName":Ljava/lang/String;
    .restart local v4    # "realOrdinal":Ljava/lang/Integer;
    .restart local v8    # "rowVal":[[B
    .restart local v9    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    :cond_18
    const-string v0, "Can not find column in full column list to determine true ordinal position."

    const-string v3, "S1000"

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v11    # "tableName":Ljava/lang/String;
    .end local v12    # "results":Ljava/sql/ResultSet;
    .end local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local p1    # "catalogStr":Ljava/lang/String;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2446
    .end local v2    # "origColName":Ljava/lang/String;
    .end local v4    # "realOrdinal":Ljava/lang/Integer;
    .end local v8    # "rowVal":[[B
    .end local v9    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .restart local v11    # "tableName":Ljava/lang/String;
    .restart local v12    # "results":Ljava/sql/ResultSet;
    .restart local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local p1    # "catalogStr":Ljava/lang/String;
    :cond_19
    move-object/from16 v25, v4

    const/16 v16, 0x0

    .line 2548
    .end local v6    # "ordPos":I
    .end local v13    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v14    # "ordinalFixUpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "fixUpOrdinalsRequired":Z
    nop

    .line 2384
    if-eqz v12, :cond_1a

    .line 2551
    :try_start_10
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 2553
    goto :goto_17

    .line 2552
    :catch_5
    move-exception v0

    .line 2555
    :goto_17
    const/4 v12, 0x0

    :cond_1a
    nop

    .line 2557
    nop

    .line 2558
    .end local v11    # "tableName":Ljava/lang/String;
    .end local v12    # "results":Ljava/sql/ResultSet;
    move-object/from16 v2, p1

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v4, v25

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 2549
    .restart local v11    # "tableName":Ljava/lang/String;
    .restart local v12    # "results":Ljava/sql/ResultSet;
    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_18

    .end local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v7    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "i$":Ljava/util/Iterator;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v21, v8

    move-object v2, v0

    .line 2555
    .end local v7    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_18
    if-eqz v12, :cond_1b

    .line 2551
    :try_start_11
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 2553
    goto :goto_19

    .line 2552
    :catch_6
    move-exception v0

    .line 2555
    :goto_19
    const/4 v12, 0x0

    .line 2549
    :cond_1b
    throw v2

    .line 2559
    .end local v11    # "tableName":Ljava/lang/String;
    .end local v12    # "results":Ljava/sql/ResultSet;
    .end local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v7    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    return-void

    .line 2377
    .local v11, "tables":Ljava/sql/ResultSet;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v7

    move-object v2, v0

    .line 2384
    .end local v7    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "tableNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1a
    if-eqz v11, :cond_1d

    .line 2379
    :try_start_12
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_7

    .line 2382
    goto :goto_1b

    .line 2380
    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2381
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2384
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_1b
    const/4 v11, 0x0

    .line 2377
    :cond_1d
    throw v2
.end method
