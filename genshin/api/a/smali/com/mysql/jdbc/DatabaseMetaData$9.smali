.class Lcom/mysql/jdbc/DatabaseMetaData$9;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$tableNamePat:Ljava/lang/String;

.field final synthetic val$types:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4636
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$stmt:Ljava/sql/Statement;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$tableNamePat:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

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

    .line 4636
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$9;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 28
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4637
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v0, "information_schema"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    const-string v0, "mysql"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "performance_schema"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v11, v0

    .line 4640
    .local v11, "operatingOnSystemDB":Z
    const/4 v2, 0x0

    .line 4645
    .local v2, "results":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$stmt:Ljava/sql/Statement;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v12, 0x2

    const/4 v13, 0x5

    invoke-interface {v4, v13, v9, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SHOW TABLES FROM "

    goto :goto_2

    :cond_2
    const-string v4, "SHOW FULL TABLES FROM "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    invoke-static {v8, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$tableNamePat:Ljava/lang/String;

    const-string v5, "\'"

    invoke-static {v4, v5, v10}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v0

    .line 4655
    .end local v2    # "results":Ljava/sql/ResultSet;
    .local v14, "results":Ljava/sql/ResultSet;
    nop

    .line 4657
    const/4 v0, 0x0

    .line 4658
    .local v0, "shouldReportTables":Z
    const/4 v2, 0x0

    .line 4659
    .local v2, "shouldReportViews":Z
    const/4 v3, 0x0

    .line 4660
    .local v3, "shouldReportSystemTables":Z
    const/4 v4, 0x0

    .line 4661
    .local v4, "shouldReportSystemViews":Z
    const/4 v5, 0x0

    .line 4663
    .local v5, "shouldReportLocalTemporaries":Z
    :try_start_1
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    if-eqz v6, :cond_a

    array-length v6, v6

    if-nez v6, :cond_3

    goto :goto_5

    .line 4670
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 4671
    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4672
    const/4 v0, 0x1

    goto :goto_4

    .line 4674
    :cond_4
    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4675
    const/4 v2, 0x1

    goto :goto_4

    .line 4677
    :cond_5
    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4678
    const/4 v3, 0x1

    goto :goto_4

    .line 4680
    :cond_6
    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4681
    const/4 v4, 0x1

    goto :goto_4

    .line 4683
    :cond_7
    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4684
    const/4 v5, 0x1

    .line 4670
    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    move v15, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_6

    .line 4664
    .end local v6    # "i":I
    :cond_a
    :goto_5
    const/4 v0, 0x1

    .line 4665
    const/4 v2, 0x1

    .line 4666
    const/4 v3, 0x1

    .line 4667
    const/4 v4, 0x1

    .line 4668
    const/4 v5, 0x1

    move v15, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 4689
    .end local v0    # "shouldReportTables":Z
    .end local v2    # "shouldReportViews":Z
    .end local v3    # "shouldReportSystemTables":Z
    .end local v4    # "shouldReportSystemViews":Z
    .end local v5    # "shouldReportLocalTemporaries":Z
    .local v15, "shouldReportTables":Z
    .local v16, "shouldReportViews":Z
    .local v17, "shouldReportSystemTables":Z
    .local v18, "shouldReportSystemViews":Z
    .local v19, "shouldReportLocalTemporaries":Z
    :goto_6
    const/4 v2, 0x1

    .line 4690
    .local v2, "typeColumnIndex":I
    const/4 v3, 0x0

    .line 4692
    .local v3, "hasTableTypes":Z
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v13, v9, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v20, 0x0

    if-eqz v0, :cond_b

    .line 4695
    :try_start_2
    const-string v0, "table_type"

    invoke-interface {v14, v0}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v0

    .line 4696
    const/4 v3, 0x1

    .line 4708
    move/from16 v21, v3

    move-object/from16 v22, v20

    const/16 v23, 0x0

    goto :goto_7

    .line 4697
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 4703
    .local v4, "sqlEx":Ljava/sql/SQLException;
    :try_start_3
    const-string v0, "Type"

    invoke-interface {v14, v0}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v0

    .line 4704
    const/4 v3, 0x1

    .line 4707
    move v0, v2

    move/from16 v21, v3

    move-object/from16 v22, v20

    const/16 v23, 0x0

    goto :goto_7

    .line 4705
    :catch_1
    move-exception v0

    .line 4706
    .local v0, "sqlEx2":Ljava/sql/SQLException;
    const/4 v3, 0x0

    move v0, v2

    move/from16 v21, v3

    move-object/from16 v22, v20

    const/16 v23, 0x0

    goto :goto_7

    .line 4692
    .end local v0    # "sqlEx2":Ljava/sql/SQLException;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :cond_b
    move v0, v2

    move/from16 v21, v3

    move-object/from16 v22, v20

    const/16 v23, 0x0

    .line 4711
    .end local v2    # "typeColumnIndex":I
    .end local v3    # "hasTableTypes":Z
    .local v0, "typeColumnIndex":I
    .local v21, "hasTableTypes":Z
    :goto_7
    :try_start_4
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4712
    const/16 v2, 0xa

    new-array v2, v2, [[B

    move-object v7, v2

    .line 4713
    .local v7, "row":[[B
    if-nez v8, :cond_c

    move-object/from16 v2, v20

    goto :goto_8

    :cond_c
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v2, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_8
    aput-object v2, v7, v9

    .line 4714
    aput-object v20, v7, v10

    .line 4715
    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    aput-object v2, v7, v12

    .line 4716
    const/4 v2, 0x4

    new-array v3, v9, [B

    aput-object v3, v7, v2

    .line 4717
    aput-object v20, v7, v13

    .line 4718
    const/4 v2, 0x6

    aput-object v20, v7, v2

    .line 4719
    const/4 v2, 0x7

    aput-object v20, v7, v2

    .line 4720
    const/16 v2, 0x8

    aput-object v20, v7, v2

    .line 4721
    const/16 v2, 0x9

    aput-object v20, v7, v2

    .line 4723
    const/4 v2, 0x3

    if-eqz v21, :cond_13

    .line 4724
    invoke-interface {v14, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    .line 4726
    .local v24, "tableType":Ljava/lang/String;
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$11;->$SwitchMap$com$mysql$jdbc$DatabaseMetaData$TableType:[I

    invoke-static/range {v24 .. v24}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getTableTypeCompliantWith(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move/from16 v27, v0

    move-object v13, v7

    .end local v0    # "typeColumnIndex":I
    .end local v7    # "row":[[B
    .local v13, "row":[[B
    .local v27, "typeColumnIndex":I
    move-object/from16 v0, v22

    .local v0, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    move/from16 v9, v23

    .line 4780
    .local v9, "reportTable":Z
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    goto/16 :goto_d

    .line 4772
    .end local v9    # "reportTable":Z
    .end local v13    # "row":[[B
    .end local v27    # "typeColumnIndex":I
    .local v0, "typeColumnIndex":I
    .restart local v7    # "row":[[B
    .local v22, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .local v23, "reportTable":Z
    :pswitch_0
    if-eqz v19, :cond_d

    .line 4773
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v7, v2

    .line 4774
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v5, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x0

    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object v2, v5

    move-object v9, v5

    move-object/from16 v5, p1

    move-object v12, v6

    move-object/from16 v6, v25

    move-object v13, v7

    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v12, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 4772
    .end local v13    # "row":[[B
    .restart local v7    # "row":[[B
    :cond_d
    move-object v13, v7

    .line 4785
    .end local v7    # "row":[[B
    .end local v22    # "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .end local v23    # "reportTable":Z
    .end local v24    # "tableType":Ljava/lang/String;
    .restart local v13    # "row":[[B
    :goto_9
    move/from16 v27, v0

    goto/16 :goto_e

    .line 4726
    .end local v13    # "row":[[B
    .restart local v7    # "row":[[B
    .restart local v24    # "tableType":Ljava/lang/String;
    :pswitch_1
    move-object v13, v7

    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    move-object/from16 v9, v22

    .local v9, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    move/from16 v12, v23

    .line 4764
    .local v12, "reportTable":Z
    if-eqz v18, :cond_e

    .line 4765
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4766
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v6, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x0

    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object v2, v6

    move-object/from16 v5, p1

    move-object v10, v6

    move-object/from16 v6, v22

    move/from16 v27, v0

    move-object v0, v7

    .end local v0    # "typeColumnIndex":I
    .restart local v27    # "typeColumnIndex":I
    move-object/from16 v7, v23

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v0, v10, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 4764
    .end local v27    # "typeColumnIndex":I
    .restart local v0    # "typeColumnIndex":I
    :cond_e
    move/from16 v27, v0

    .line 4785
    .end local v0    # "typeColumnIndex":I
    .end local v9    # "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .end local v12    # "reportTable":Z
    .end local v24    # "tableType":Ljava/lang/String;
    .restart local v27    # "typeColumnIndex":I
    :goto_a
    move-object/from16 v22, v9

    move/from16 v23, v12

    goto/16 :goto_e

    .line 4726
    .end local v13    # "row":[[B
    .end local v27    # "typeColumnIndex":I
    .restart local v0    # "typeColumnIndex":I
    .restart local v7    # "row":[[B
    .restart local v24    # "tableType":Ljava/lang/String;
    :pswitch_2
    move/from16 v27, v0

    move-object v13, v7

    .end local v0    # "typeColumnIndex":I
    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    .restart local v27    # "typeColumnIndex":I
    move-object/from16 v0, v22

    .local v0, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    move/from16 v9, v23

    .line 4756
    .local v9, "reportTable":Z
    if-eqz v17, :cond_f

    .line 4757
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4758
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v12, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v12

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v10, v12, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 4726
    .end local v9    # "reportTable":Z
    .end local v13    # "row":[[B
    .end local v27    # "typeColumnIndex":I
    .local v0, "typeColumnIndex":I
    .restart local v7    # "row":[[B
    :pswitch_3
    move/from16 v27, v0

    move-object v13, v7

    .end local v0    # "typeColumnIndex":I
    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    .restart local v27    # "typeColumnIndex":I
    move-object/from16 v0, v22

    .local v0, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    move/from16 v9, v23

    .line 4748
    .restart local v9    # "reportTable":Z
    if-eqz v16, :cond_f

    .line 4749
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4750
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v12, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v12

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v10, v12, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    .end local v0    # "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .end local v9    # "reportTable":Z
    .end local v24    # "tableType":Ljava/lang/String;
    :cond_f
    :goto_b
    move-object/from16 v22, v0

    move/from16 v23, v9

    goto/16 :goto_e

    .line 4728
    .end local v13    # "row":[[B
    .end local v27    # "typeColumnIndex":I
    .local v0, "typeColumnIndex":I
    .restart local v7    # "row":[[B
    .restart local v24    # "tableType":Ljava/lang/String;
    :pswitch_4
    move/from16 v27, v0

    move-object v13, v7

    .end local v0    # "typeColumnIndex":I
    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    .restart local v27    # "typeColumnIndex":I
    const/4 v0, 0x0

    .line 4729
    .local v0, "reportTable":Z
    const/4 v9, 0x0

    .line 4731
    .local v9, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    if-eqz v11, :cond_10

    if-eqz v17, :cond_10

    .line 4732
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4733
    new-instance v10, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v10

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 4734
    const/4 v0, 0x1

    goto :goto_c

    .line 4736
    :cond_10
    if-nez v11, :cond_11

    if-eqz v15, :cond_11

    .line 4737
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4738
    new-instance v10, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v10

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 4739
    const/4 v0, 0x1

    .line 4742
    :cond_11
    :goto_c
    if-eqz v0, :cond_12

    .line 4743
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v13, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v2, v9, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    .end local v0    # "reportTable":Z
    .end local v9    # "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .end local v24    # "tableType":Ljava/lang/String;
    :cond_12
    move/from16 v23, v0

    move-object/from16 v22, v9

    goto :goto_e

    .line 4780
    .local v0, "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .local v9, "reportTable":Z
    .restart local v24    # "tableType":Ljava/lang/String;
    :goto_d
    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v3

    aput-object v3, v13, v2

    .line 4781
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v12, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v12

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v10, v12, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v0

    move/from16 v23, v9

    .line 4785
    .end local v0    # "tablesKey":Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
    .end local v9    # "reportTable":Z
    .end local v24    # "tableType":Ljava/lang/String;
    :goto_e
    const/4 v10, 0x1

    goto :goto_f

    .line 4786
    .end local v13    # "row":[[B
    .end local v27    # "typeColumnIndex":I
    .local v0, "typeColumnIndex":I
    .restart local v7    # "row":[[B
    :cond_13
    move/from16 v27, v0

    move-object v13, v7

    .end local v0    # "typeColumnIndex":I
    .end local v7    # "row":[[B
    .restart local v13    # "row":[[B
    .restart local v27    # "typeColumnIndex":I
    if-eqz v15, :cond_14

    .line 4788
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v0

    aput-object v0, v13, v2

    .line 4789
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v0, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    .line 4786
    :cond_14
    const/4 v10, 0x1

    .line 4793
    .end local v13    # "row":[[B
    :goto_f
    move/from16 v0, v27

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x5

    goto/16 :goto_7

    .line 4711
    .end local v27    # "typeColumnIndex":I
    .restart local v0    # "typeColumnIndex":I
    :cond_15
    move/from16 v27, v0

    .line 4795
    .end local v0    # "typeColumnIndex":I
    .end local v15    # "shouldReportTables":Z
    .end local v16    # "shouldReportViews":Z
    .end local v17    # "shouldReportSystemTables":Z
    .end local v18    # "shouldReportSystemViews":Z
    .end local v19    # "shouldReportLocalTemporaries":Z
    .end local v21    # "hasTableTypes":Z
    nop

    .line 4802
    if-eqz v14, :cond_16

    .line 4798
    :try_start_5
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4800
    goto :goto_10

    .line 4799
    :catch_2
    move-exception v0

    .line 4802
    :goto_10
    const/4 v14, 0x0

    .line 4804
    :cond_16
    nop

    .line 4805
    return-void

    .line 4796
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v14

    goto :goto_12

    .end local v14    # "results":Ljava/sql/ResultSet;
    .local v2, "results":Ljava/sql/ResultSet;
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_12

    .line 4649
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 4650
    .local v3, "sqlEx":Ljava/sql/SQLException;
    :try_start_6
    const-string v0, "08S01"

    invoke-virtual {v3}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_18

    .line 4654
    nop

    .line 4805
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    if-eqz v2, :cond_17

    .line 4798
    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 4800
    goto :goto_11

    .line 4799
    :catch_4
    move-exception v0

    .line 4802
    :goto_11
    const/4 v2, 0x0

    :cond_17
    move-object v0, v3

    .line 4654
    .local v0, "sqlEx":Ljava/sql/SQLException;
    return-void

    .line 4651
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "sqlEx":Ljava/sql/SQLException;
    :cond_18
    nop

    .end local v2    # "results":Ljava/sql/ResultSet;
    .end local v11    # "operatingOnSystemDB":Z
    .end local p1    # "catalogStr":Ljava/lang/String;
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4802
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    .restart local v2    # "results":Ljava/sql/ResultSet;
    .restart local v11    # "operatingOnSystemDB":Z
    .restart local p1    # "catalogStr":Ljava/lang/String;
    :goto_12
    if-eqz v2, :cond_19

    .line 4798
    :try_start_9
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 4800
    goto :goto_13

    .line 4799
    :catch_5
    move-exception v0

    .line 4802
    :goto_13
    const/4 v2, 0x0

    .line 4796
    :cond_19
    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
