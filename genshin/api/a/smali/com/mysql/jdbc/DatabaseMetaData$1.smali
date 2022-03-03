.class Lcom/mysql/jdbc/DatabaseMetaData$1;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
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

    .line 1457
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$rows:Ljava/util/ArrayList;

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

    .line 1457
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$1;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 16
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1458
    move-object/from16 v1, p0

    const-string v0, "enum"

    const/4 v2, 0x0

    .line 1461
    .local v2, "results":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SHOW COLUMNS FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v3, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$table:Ljava/lang/String;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v6, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p1

    :try_start_1
    invoke-static {v6, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    move-object v2, v4

    .line 1468
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1469
    const-string v4, "Key"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1471
    .local v4, "keyType":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1472
    const-string v5, "PRI"

    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1473
    const/16 v5, 0x8

    new-array v5, v5, [[B

    .line 1474
    .local v5, "rowVal":[[B
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    .line 1475
    const-string v8, "Field"

    invoke-interface {v2, v8}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v5, v10

    .line 1477
    const-string v8, "Type"

    invoke-interface {v2, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1478
    .local v8, "type":Ljava/lang/String;
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v11

    .line 1479
    .local v11, "size":I
    const/4 v12, 0x0

    .line 1484
    .local v12, "decimals":I
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v14, ")"

    const/4 v15, -0x1

    const-string v9, ","

    const-string v10, "("

    if-eq v13, v15, :cond_1

    .line 1485
    :try_start_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1486
    .local v10, "temp":Ljava/lang/String;
    new-instance v13, Ljava/util/StringTokenizer;

    invoke-direct {v13, v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 1487
    .local v9, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v13, 0x0

    .line 1489
    .local v13, "maxLength":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1490
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    goto :goto_1

    .line 1493
    :cond_0
    move v11, v13

    .line 1494
    const/4 v12, 0x0

    .line 1495
    move-object v8, v0

    .end local v9    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v10    # "temp":Ljava/lang/String;
    .end local v13    # "maxLength":I
    goto :goto_3

    .line 1496
    :cond_1
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v15, :cond_3

    .line 1497
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v15, :cond_2

    .line 1498
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v11, v13

    .line 1499
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x1

    add-int/2addr v9, v13

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v12, v9

    .end local v12    # "decimals":I
    .local v9, "decimals":I
    goto :goto_2

    .line 1501
    .end local v9    # "decimals":I
    .restart local v12    # "decimals":I
    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x1

    add-int/2addr v9, v13

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .end local v11    # "size":I
    .local v9, "size":I
    move v11, v9

    .line 1504
    .end local v9    # "size":I
    .restart local v11    # "size":I
    :goto_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    goto :goto_4

    .line 1496
    :cond_3
    :goto_3
    nop

    .line 1507
    :goto_4
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-static {v8}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1508
    const/4 v7, 0x3

    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v9, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1509
    const/4 v7, 0x4

    add-int v9, v11, v12

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1510
    const/4 v7, 0x5

    add-int v9, v11, v12

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1511
    const/4 v7, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1512
    const/4 v7, 0x7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 1514
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$rows:Ljava/util/ArrayList;

    new-instance v9, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v10}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v10

    invoke-direct {v9, v5, v10}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1517
    .end local v4    # "keyType":Ljava/lang/String;
    .end local v5    # "rowVal":[[B
    .end local v8    # "type":Ljava/lang/String;
    .end local v11    # "size":I
    .end local v12    # "decimals":I
    :cond_4
    goto/16 :goto_0

    .line 1518
    .end local v3    # "queryBuf":Ljava/lang/StringBuilder;
    :cond_5
    nop

    .line 1532
    if-eqz v2, :cond_6

    .line 1525
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1527
    goto :goto_5

    .line 1526
    :catch_0
    move-exception v0

    .line 1529
    :goto_5
    const/4 v2, 0x0

    goto :goto_9

    .line 1518
    :catch_1
    move-exception v0

    goto :goto_7

    .line 1523
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    :goto_6
    move-object v3, v0

    goto :goto_a

    .line 1518
    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    .line 1519
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :goto_7
    :try_start_4
    const-string v3, "42S02"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_7

    .line 1522
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    nop

    .line 1529
    if-eqz v2, :cond_6

    .line 1525
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1527
    goto :goto_8

    .line 1526
    :catch_3
    move-exception v0

    .line 1529
    :goto_8
    const/4 v0, 0x0

    move-object v2, v0

    :cond_6
    :goto_9
    nop

    .line 1531
    nop

    .line 1532
    return-void

    .line 1520
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_7
    nop

    .end local v2    # "results":Ljava/sql/ResultSet;
    .end local p1    # "catalogStr":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1523
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v2    # "results":Ljava/sql/ResultSet;
    .restart local p1    # "catalogStr":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 1529
    :goto_a
    if-eqz v2, :cond_8

    .line 1525
    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1527
    goto :goto_b

    .line 1526
    :catch_4
    move-exception v0

    .line 1529
    :goto_b
    const/4 v2, 0x0

    .line 1523
    :cond_8
    throw v3
.end method
