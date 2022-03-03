.class Lcom/mysql/jdbc/DatabaseMetaData$3;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$foreignCatalog:Ljava/lang/String;

.field final synthetic val$foreignSchema:Ljava/lang/String;

.field final synthetic val$foreignTable:Ljava/lang/String;

.field final synthetic val$primaryCatalog:Ljava/lang/String;

.field final synthetic val$primarySchema:Ljava/lang/String;

.field final synthetic val$primaryTable:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tuples:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2684
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    iput-object p8, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    iput-object p9, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    iput-object p10, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

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

    .line 2684
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$3;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 22
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2686
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 2693
    .local v3, "fkresults":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v4, 0x17

    const/16 v5, 0x32

    const/4 v6, 0x3

    invoke-interface {v0, v6, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2694
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v2, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "fkresults":Ljava/sql/ResultSet;
    .local v0, "fkresults":Ljava/sql/ResultSet;
    goto :goto_0

    .line 2696
    .end local v0    # "fkresults":Ljava/sql/ResultSet;
    .restart local v3    # "fkresults":Ljava/sql/ResultSet;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SHOW TABLE STATUS FROM "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v0, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v7

    invoke-static {v2, v5, v7}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v3, v5

    .line 2703
    .end local v0    # "queryBuf":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2704
    .local v0, "foreignTableWithCase":Ljava/lang/String;
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2712
    .local v5, "primaryTableWithCase":Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2713
    const-string v7, "Type"

    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2715
    .local v7, "tableType":Ljava/lang/String;
    if-eqz v7, :cond_d

    const-string v8, "innodb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SUPPORTS_FK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    goto/16 :goto_a

    .line 2716
    :cond_2
    :goto_2
    const-string v8, "Comment"

    invoke-interface {v3, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2718
    .local v8, "comment":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 2719
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, ";"

    const/4 v11, 0x0

    invoke-direct {v9, v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2721
    .local v9, "commentTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2722
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2727
    :cond_3
    :goto_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2728
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 2729
    .local v10, "keys":Ljava/lang/String;
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v12

    .line 2731
    .local v12, "parsedInfo":Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    const/4 v13, 0x0

    .line 2733
    .local v13, "keySeq":I
    iget-object v14, v12, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2734
    .local v14, "referencingColumns":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v15, v12, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2736
    .local v15, "referencedColumns":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2737
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v6, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2741
    .local v4, "referencingColumn":Ljava/lang/String;
    const/16 v6, 0xe

    new-array v6, v6, [[B

    .line 2742
    .local v6, "tuple":[[B
    const/16 v18, 0x4

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    if-nez v11, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_5
    aput-object v2, v6, v18

    .line 2743
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    if-nez v11, :cond_5

    const/4 v2, 0x0

    goto :goto_6

    :cond_5
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_6
    const/4 v11, 0x5

    aput-object v2, v6, v11

    .line 2744
    const-string v2, "Name"

    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2746
    .local v2, "dummy":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    .line 2747
    move-object/from16 v20, v0

    goto :goto_9

    .line 2750
    :cond_6
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v11, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    const/16 v18, 0x6

    aput-object v11, v6, v18

    .line 2752
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v11, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    const/16 v18, 0x7

    aput-object v11, v6, v18

    .line 2753
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    if-nez v11, :cond_7

    move-object/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v20, v0

    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .local v20, "foreignTableWithCase":Ljava/lang/String;
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    :goto_7
    const/4 v11, 0x0

    aput-object v0, v6, v11

    .line 2754
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v11, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    :goto_8
    const/4 v11, 0x1

    aput-object v0, v6, v11

    .line 2757
    iget-object v0, v12, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 2758
    nop

    .line 2736
    .end local v2    # "dummy":Ljava/lang/String;
    .end local v4    # "referencingColumn":Ljava/lang/String;
    .end local v6    # "tuple":[[B
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v0    # "foreignTableWithCase":Ljava/lang/String;
    :goto_9
    move-object/from16 v2, p1

    move-object/from16 v0, v20

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v11, 0x0

    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v20    # "foreignTableWithCase":Ljava/lang/String;
    goto/16 :goto_4

    .line 2761
    .restart local v2    # "dummy":Ljava/lang/String;
    .restart local v4    # "referencingColumn":Ljava/lang/String;
    .restart local v6    # "tuple":[[B
    :cond_9
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v12, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v6, v11

    .line 2762
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v21, v2

    .end local v2    # "dummy":Ljava/lang/String;
    .local v21, "dummy":Ljava/lang/String;
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v6, v2

    .line 2763
    const/16 v0, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    aput-object v11, v6, v0

    .line 2765
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v0

    .line 2767
    .local v0, "actions":[I
    const/16 v11, 0x9

    const/16 v16, 0x1

    aget v16, v0, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    aput-object v16, v6, v11

    .line 2768
    const/16 v11, 0xa

    const/16 v16, 0x0

    aget v19, v0, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    aput-object v19, v6, v11

    .line 2769
    const/16 v11, 0xb

    const/16 v17, 0x0

    aput-object v17, v6, v11

    .line 2770
    const/16 v11, 0xc

    aput-object v17, v6, v11

    .line 2771
    const/16 v11, 0xd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    aput-object v18, v6, v11

    .line 2772
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v19, v0

    .end local v0    # "actions":[I
    .local v19, "actions":[I
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    nop

    .end local v4    # "referencingColumn":Ljava/lang/String;
    .end local v6    # "tuple":[[B
    .end local v19    # "actions":[I
    add-int/lit8 v13, v13, 0x1

    .line 2774
    move-object/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v0, v20

    const/4 v6, 0x3

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2736
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .end local v21    # "dummy":Ljava/lang/String;
    .local v0, "foreignTableWithCase":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    const/16 v16, 0x0

    .line 2775
    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .end local v10    # "keys":Ljava/lang/String;
    .end local v12    # "parsedInfo":Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    .end local v13    # "keySeq":I
    .end local v14    # "referencingColumns":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "referencedColumns":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "foreignTableWithCase":Ljava/lang/String;
    move-object/from16 v2, p1

    const/4 v6, 0x3

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2727
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v0    # "foreignTableWithCase":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v20    # "foreignTableWithCase":Ljava/lang/String;
    goto :goto_a

    .line 2718
    .end local v9    # "commentTokens":Ljava/util/StringTokenizer;
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v0    # "foreignTableWithCase":Ljava/lang/String;
    :cond_c
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v20    # "foreignTableWithCase":Ljava/lang/String;
    goto :goto_a

    .line 2715
    .end local v8    # "comment":Ljava/lang/String;
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v0    # "foreignTableWithCase":Ljava/lang/String;
    :cond_d
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    .line 2778
    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .end local v7    # "tableType":Ljava/lang/String;
    .restart local v20    # "foreignTableWithCase":Ljava/lang/String;
    :goto_a
    move-object/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v0, v20

    const/4 v6, 0x3

    goto/16 :goto_1

    .line 2712
    .end local v20    # "foreignTableWithCase":Ljava/lang/String;
    .restart local v0    # "foreignTableWithCase":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v0

    .line 2780
    .end local v0    # "foreignTableWithCase":Ljava/lang/String;
    .end local v5    # "primaryTableWithCase":Ljava/lang/String;
    nop

    .line 2791
    if-eqz v3, :cond_f

    .line 2783
    :try_start_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2786
    goto :goto_b

    .line 2784
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2785
    .local v0, "sqlEx":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2788
    .end local v0    # "sqlEx":Ljava/lang/Exception;
    :goto_b
    const/4 v3, 0x0

    :cond_f
    nop

    .line 2790
    nop

    .line 2791
    return-void

    .line 2781
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2788
    if-eqz v3, :cond_10

    .line 2783
    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2786
    goto :goto_c

    .line 2784
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2785
    .restart local v0    # "sqlEx":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2788
    .end local v0    # "sqlEx":Ljava/lang/Exception;
    :goto_c
    const/4 v3, 0x0

    .line 2781
    :cond_10
    throw v2
.end method
