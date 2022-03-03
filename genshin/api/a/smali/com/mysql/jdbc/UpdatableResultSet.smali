.class public Lcom/mysql/jdbc/UpdatableResultSet;
.super Lcom/mysql/jdbc/ResultSetImpl;
.source "UpdatableResultSet.java"


# static fields
.field static final STREAM_DATA_MARKER:[B


# instance fields
.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field private charEncoding:Ljava/lang/String;

.field private databasesUsedToTablesUsed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private defaultColumnValue:[[B

.field private deleteSQL:Ljava/lang/String;

.field private deleter:Lcom/mysql/jdbc/PreparedStatement;

.field private initializedCharConverter:Z

.field private insertSQL:Ljava/lang/String;

.field protected inserter:Lcom/mysql/jdbc/PreparedStatement;

.field private isUpdatable:Z

.field private notUpdatableReason:Ljava/lang/String;

.field private populateInserterWithDefaultValues:Z

.field private primaryKeyIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedAndQuotedTableName:Ljava/lang/String;

.field private quotedIdChar:Ljava/lang/String;

.field private refreshSQL:Ljava/lang/String;

.field private refresher:Lcom/mysql/jdbc/PreparedStatement;

.field private savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

.field private updateSQL:Ljava/lang/String;

.field protected updater:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "** STREAM DATA **"

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 2
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p3, "tuples"    # Lcom/mysql/jdbc/RowData;
    .param p4, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p5, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 54
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 59
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 61
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 67
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 74
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 88
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    .line 92
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 111
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPopulateInsertRowWithDefaultValues()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    .line 113
    return-void
.end method

.method private extractDefaultValues()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 522
    .local v0, "dbmd":Ljava/sql/DatabaseMetaData;
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    .line 524
    const/4 v1, 0x0

    .line 526
    .local v1, "columnsResultSet":Ljava/sql/ResultSet;
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 528
    .local v3, "dbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 529
    .local v5, "tableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 530
    .local v6, "tableName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 533
    .local v7, "columnNamesToIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "%"

    invoke-interface {v0, v8, v9, v6, v10}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    move-object v1, v8

    .line 535
    :goto_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 536
    const-string v8, "COLUMN_NAME"

    invoke-interface {v1, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "columnName":Ljava/lang/String;
    const-string v9, "COLUMN_DEF"

    invoke-interface {v1, v9}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 539
    .local v9, "defaultValue":[B
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 540
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 542
    .local v10, "localColumnIndex":I
    iget-object v11, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aput-object v9, v11, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .end local v8    # "columnName":Ljava/lang/String;
    .end local v9    # "defaultValue":[B
    .end local v10    # "localColumnIndex":I
    :cond_0
    goto :goto_2

    .line 545
    :cond_1
    nop

    .line 554
    if-eqz v1, :cond_2

    .line 547
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 549
    const/4 v1, 0x0

    :cond_2
    nop

    .line 551
    nop

    .line 552
    .end local v5    # "tableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "tableName":Ljava/lang/String;
    .end local v7    # "columnNamesToIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 546
    .restart local v5    # "tableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v6    # "tableName":Ljava/lang/String;
    .restart local v7    # "columnNamesToIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    .line 549
    if-eqz v1, :cond_3

    .line 547
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 549
    const/4 v1, 0x0

    .line 546
    :cond_3
    throw v8

    .line 552
    .end local v3    # "dbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "tableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "tableName":Ljava/lang/String;
    .end local v7    # "columnNamesToIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_0

    .line 554
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    if-nez v0, :cond_0

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 785
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    return-object v0
.end method

.method private getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 761
    .local v0, "tablesUsedToColumnsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_1

    .line 762
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_0

    .line 765
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v1

    .line 768
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 773
    .local v1, "nameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_2

    .line 774
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 775
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_2
    return-object v1
.end method

.method private getQuotedIdChar()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    .line 814
    .local v0, "useQuotedIdentifiers":Z
    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v1

    .line 816
    .local v1, "dbmd":Ljava/sql/DatabaseMetaData;
    invoke-interface {v1}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 817
    .end local v1    # "dbmd":Ljava/sql/DatabaseMetaData;
    goto :goto_0

    .line 818
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 822
    .end local v0    # "useQuotedIdentifiers":Z
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    return-object v0
.end method

.method private refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 6
    .param p1, "updateInsertStmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p2, "rowToRefresh"    # Lcom/mysql/jdbc/ResultSetRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    .line 1261
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1266
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1268
    .local v0, "numKeys":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1269
    const/4 v2, 0x0

    .line 1270
    .local v2, "dataFrom":[B
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1272
    .local v3, "index":I
    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v4, :cond_2

    .line 1273
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    goto :goto_1

    .line 1275
    :cond_2
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v2

    .line 1278
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    array-length v4, v2

    if-nez v4, :cond_3

    goto :goto_0

    .line 1281
    :cond_3
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object v2

    goto :goto_1

    .line 1279
    :cond_4
    :goto_0
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    .line 1285
    :goto_1
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1289
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v4, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    goto :goto_2

    .line 1291
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v4, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 1294
    .end local v2    # "dataFrom":[B
    .end local v3    # "index":I
    :goto_2
    goto :goto_6

    .line 1295
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_a

    .line 1296
    const/4 v2, 0x0

    .line 1297
    .restart local v2    # "dataFrom":[B
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1299
    .restart local v3    # "index":I
    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v4, :cond_7

    .line 1300
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    goto :goto_5

    .line 1302
    :cond_7
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v2

    .line 1305
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_9

    array-length v4, v2

    if-nez v4, :cond_8

    goto :goto_4

    .line 1308
    :cond_8
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object v2

    goto :goto_5

    .line 1306
    :cond_9
    :goto_4
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    .line 1312
    :goto_5
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    .line 1295
    .end local v2    # "dataFrom":[B
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1316
    .end local v1    # "i":I
    :cond_a
    :goto_6
    const/4 v1, 0x0

    .line 1319
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 1321
    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    .line 1323
    .local v2, "numCols":I
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1324
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_d

    .line 1325
    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    .line 1327
    .local v4, "val":[B
    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_8

    .line 1330
    :cond_b
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_9

    .line 1328
    :cond_c
    :goto_8
    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    .end local v4    # "val":[B
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1336
    .end local v2    # "numCols":I
    .end local v3    # "i":I
    :cond_d
    nop

    .line 1345
    if-eqz v1, :cond_e

    .line 1339
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1342
    goto :goto_a

    .line 1340
    :catch_0
    move-exception v2

    .line 1342
    :cond_e
    :goto_a
    nop

    .line 1344
    nop

    .line 1345
    return-void

    .line 1334
    .restart local v2    # "numCols":I
    :cond_f
    :try_start_2
    const-string v3, "UpdatableResultSet.12"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local v0    # "numKeys":I
    .end local v1    # "rs":Ljava/sql/ResultSet;
    .end local p1    # "updateInsertStmt":Lcom/mysql/jdbc/PreparedStatement;
    .end local p2    # "rowToRefresh":Lcom/mysql/jdbc/ResultSetRow;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1337
    .end local v2    # "numCols":I
    .restart local v0    # "numKeys":I
    .restart local v1    # "rs":Ljava/sql/ResultSet;
    .restart local p1    # "updateInsertStmt":Lcom/mysql/jdbc/PreparedStatement;
    .restart local p2    # "rowToRefresh":Lcom/mysql/jdbc/ResultSetRow;
    :catchall_0
    move-exception v2

    .line 1342
    if-eqz v1, :cond_10

    .line 1339
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    .line 1340
    :catch_1
    move-exception v3

    goto :goto_c

    .line 1342
    :cond_10
    :goto_b
    nop

    :goto_c
    nop

    .line 1337
    throw v2
.end method

.method private resetInserter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;ILcom/mysql/jdbc/Field;)V
    .locals 18
    .param p1, "ps"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p2, "psIdx"    # I
    .param p3, "row"    # Lcom/mysql/jdbc/ResultSetRow;
    .param p4, "rsIdx"    # I
    .param p5, "field"    # Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 464
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {p3 .. p4}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v14

    .line 465
    .local v14, "val":[B
    const/4 v0, 0x0

    if-nez v14, :cond_0

    .line 466
    invoke-virtual {v10, v11, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    .line 514
    .local v0, "useJdbcCompliantTimezoneShift":Z
    .local v1, "useGmtMillis":Z
    .local v2, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v10, v11, v14}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_0

    .line 469
    .end local v0    # "useJdbcCompliantTimezoneShift":Z
    .end local v1    # "useGmtMillis":Z
    .end local v2    # "f":Lcom/mysql/jdbc/Field;
    :sswitch_0
    move-object v15, v2

    .line 493
    .local v15, "f":Lcom/mysql/jdbc/Field;
    const/16 v16, 0x0

    .line 494
    .local v16, "useGmtMillis":Z
    const/16 v17, 0x0

    .line 495
    .local v17, "useJdbcCompliantTimezoneShift":Z
    iget-object v2, v9, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object v0, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v6, p0

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;ZIZ)V

    .line 497
    goto :goto_0

    .line 469
    .end local v15    # "f":Lcom/mysql/jdbc/Field;
    .end local v16    # "useGmtMillis":Z
    .end local v17    # "useJdbcCompliantTimezoneShift":Z
    :sswitch_1
    move v7, v0

    .local v7, "useGmtMillis":Z
    move v8, v0

    .local v8, "useJdbcCompliantTimezoneShift":Z
    move-object v15, v2

    .line 500
    .restart local v15    # "f":Lcom/mysql/jdbc/Field;
    iget-object v2, v9, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object v0, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 501
    goto :goto_0

    .line 469
    .end local v7    # "useGmtMillis":Z
    .end local v8    # "useJdbcCompliantTimezoneShift":Z
    .end local v15    # "f":Lcom/mysql/jdbc/Field;
    :sswitch_2
    move-object v0, v2

    .line 490
    .local v0, "f":Lcom/mysql/jdbc/Field;
    iget-object v1, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, v9, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {v12, v13, v1, v9, v2}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    iget-object v2, v9, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {v10, v11, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 491
    goto :goto_0

    .line 469
    .end local v0    # "f":Lcom/mysql/jdbc/Field;
    :sswitch_3
    move v1, v0

    .line 506
    .local v0, "useJdbcCompliantTimezoneShift":Z
    .restart local v1    # "useGmtMillis":Z
    .restart local v2    # "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v10, v11, v14}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 507
    goto :goto_0

    .line 471
    .end local v0    # "useJdbcCompliantTimezoneShift":Z
    .end local v1    # "useGmtMillis":Z
    .end local v2    # "f":Lcom/mysql/jdbc/Field;
    :sswitch_4
    invoke-virtual {v10, v11, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 472
    goto :goto_0

    .line 486
    :sswitch_5
    iget-object v0, v9, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v13

    .line 487
    .local v0, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v12, v13, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 488
    goto :goto_0

    .line 479
    .end local v0    # "f":Lcom/mysql/jdbc/Field;
    :sswitch_6
    invoke-virtual/range {p3 .. p4}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v11, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 480
    goto :goto_0

    .line 476
    :sswitch_7
    invoke-virtual/range {p3 .. p4}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v11, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 477
    nop

    .line 518
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xc -> :sswitch_5
        0x10 -> :sswitch_3
        0x5b -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private stripBinaryPrefix([B)[B
    .locals 2
    .param p1, "dataFrom"    # [B

    .line 1458
    const-string v0, "_binary\'"

    const-string v1, "\'"

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public absolute(I)Z
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result v0

    return v0
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    .line 166
    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 181
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    .line 182
    return-void
.end method

.method public cancelRowUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 199
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 201
    :cond_0
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkRowPos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_0

    .line 213
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 215
    :cond_0
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkUpdatability()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v1, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 233
    .local v1, "singleTableName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, "catalogName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 239
    .local v3, "primaryKeyCount":I
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 240
    :cond_1
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    .line 242
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "NotUpdatableReason.3"

    if-lez v4, :cond_19

    .line 249
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 250
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 252
    if-nez v1, :cond_3

    .line 253
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 254
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    move-object v2, v4

    .line 257
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 258
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 259
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 261
    return-void

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 271
    :cond_5
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v6, v6

    if-ge v4, v6, :cond_d

    .line 272
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "otherTableName":Ljava/lang/String;
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "otherCatalogName":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 276
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 277
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    move-object v7, v8

    .line 280
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 281
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 282
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 284
    return-void

    .line 287
    :cond_7
    if-eqz v1, :cond_c

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    .line 295
    :cond_8
    if-eqz v2, :cond_b

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    .line 302
    :cond_9
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 303
    add-int/lit8 v3, v3, 0x1

    .line 271
    .end local v6    # "otherTableName":Ljava/lang/String;
    .end local v7    # "otherCatalogName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .restart local v6    # "otherTableName":Ljava/lang/String;
    .restart local v7    # "otherCatalogName":Ljava/lang/String;
    :cond_b
    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 297
    const-string v5, "NotUpdatableReason.1"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 299
    return-void

    .line 288
    :cond_c
    :goto_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 289
    const-string v5, "NotUpdatableReason.0"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 291
    return-void

    .line 307
    .end local v4    # "i":I
    .end local v6    # "otherTableName":Ljava/lang/String;
    .end local v7    # "otherCatalogName":Ljava/lang/String;
    :cond_d
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_8

    .line 320
    :cond_e
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getStrictUpdates()Z

    move-result v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "NotUpdatableReason.4"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_16

    .line 321
    :try_start_2
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    .line 323
    .local v4, "dbmd":Ljava/sql/DatabaseMetaData;
    const/4 v8, 0x0

    .line 324
    .local v8, "rs":Ljava/sql/ResultSet;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    .local v9, "primaryKeyNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_3
    invoke-interface {v4, v2, v6, v1}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v10

    move-object v8, v10

    .line 329
    :goto_3
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 330
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, "keyName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 332
    invoke-virtual {v9, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    nop

    .end local v10    # "keyName":Ljava/lang/String;
    goto :goto_3

    .line 334
    :cond_f
    nop

    .line 410
    if-eqz v8, :cond_10

    .line 337
    :try_start_4
    invoke-interface {v8}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 340
    goto :goto_4

    .line 338
    :catch_0
    move-exception v10

    .line 339
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v10}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 342
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_4
    const/4 v8, 0x0

    :cond_10
    nop

    .line 344
    nop

    .line 346
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 348
    .local v10, "existingPrimaryKeysCount":I
    if-nez v10, :cond_11

    .line 349
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 350
    const-string v5, "NotUpdatableReason.5"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 352
    return-void

    .line 358
    :cond_11
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    iget-object v12, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v12, v12

    if-ge v11, v12, :cond_13

    .line 359
    iget-object v12, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 360
    iget-object v12, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 362
    .local v12, "columnNameUC":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_12

    .line 364
    iget-object v13, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v13

    .line 366
    .local v13, "originalName":Ljava/lang/String;
    if-eqz v13, :cond_12

    .line 367
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_12

    .line 369
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 370
    const-string v5, "NotUpdatableReason.6"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v13, v6, v0

    invoke-static {v5, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 372
    return-void

    .line 358
    .end local v12    # "columnNameUC":Ljava/lang/String;
    .end local v13    # "originalName":Ljava/lang/String;
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 379
    .end local v11    # "i":I
    :cond_13
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    iput-boolean v11, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 381
    if-nez v11, :cond_16

    .line 382
    if-le v10, v7, :cond_14

    .line 383
    const-string v5, "NotUpdatableReason.7"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto :goto_6

    .line 385
    :cond_14
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 388
    :goto_6
    return-void

    .line 335
    .end local v10    # "existingPrimaryKeysCount":I
    :catchall_0
    move-exception v5

    .line 342
    if-eqz v8, :cond_15

    .line 337
    :try_start_6
    invoke-interface {v8}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 340
    goto :goto_7

    .line 338
    :catch_1
    move-exception v6

    .line 339
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v6}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 342
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_7
    const/4 v8, 0x0

    .line 335
    :cond_15
    throw v5

    .line 395
    .end local v4    # "dbmd":Ljava/sql/DatabaseMetaData;
    .end local v8    # "rs":Ljava/sql/ResultSet;
    .end local v9    # "primaryKeyNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    if-nez v3, :cond_17

    .line 396
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 397
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 399
    return-void

    .line 402
    :cond_17
    iput-boolean v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 403
    iput-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 405
    return-void

    .line 308
    :cond_18
    :goto_8
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 309
    const-string v4, "NotUpdatableReason.2"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 311
    return-void

    .line 314
    :cond_19
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 315
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 317
    return-void

    .line 243
    :cond_1a
    const-string v4, "UpdatableResultSet.43"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2

    .line 406
    .end local v1    # "singleTableName":Ljava/lang/String;
    .end local v2    # "catalogName":Ljava/lang/String;
    .end local v3    # "primaryKeyCount":I
    :catch_2
    move-exception v1

    .line 407
    .local v1, "sqlEx":Ljava/sql/SQLException;
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 408
    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 410
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    return-void
.end method

.method public deleteRow()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_7

    .line 429
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_6

    .line 431
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 449
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 450
    .local v1, "numKeys":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 451
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 452
    .local v3, "index":I
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v9, v4, v3

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;ILcom/mysql/jdbc/Field;)V

    .line 450
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 456
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/RowData;->removeRow(I)V

    .line 459
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->previous()Z

    .line 460
    nop

    .end local v1    # "numKeys":I
    monitor-exit v0

    .line 461
    return-void

    .line 436
    :cond_3
    const-string v1, "UpdatableResultSet.4"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 434
    :cond_4
    const-string v1, "UpdatableResultSet.3"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 432
    :cond_5
    const-string v1, "UpdatableResultSet.2"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 430
    :cond_6
    const-string v1, "UpdatableResultSet.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 426
    :cond_7
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 571
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v0

    return v0
.end method

.method protected generateStatements()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 582
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getQuotedIdChar()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "quotedId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 593
    .local v3, "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v3, v4

    .line 595
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    goto :goto_0

    .line 597
    :cond_0
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v3, v4

    .line 598
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 601
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v4, "fieldValues":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v5, "keyValues":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v6, "columnNames":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v7, "insertPlaceHolders":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v8, "allTablesBuf":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v9, "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 611
    .local v10, "firstTime":Z
    const/4 v11, 0x1

    .line 613
    .local v11, "keysFirstTime":Z
    iget-object v12, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v13, 0x3

    const/16 v14, 0x17

    invoke-interface {v12, v13, v14, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "<=>"

    goto :goto_1

    :cond_1
    const-string v2, "="

    .line 615
    .local v2, "equalsStr":Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    iget-object v13, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v13, v13

    if-ge v12, v13, :cond_10

    .line 616
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v13, "tableNameBuffer":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 620
    .local v14, "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    .end local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v16, "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v14, 0x2e

    if-eqz v15, :cond_5

    .line 622
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    .line 624
    .local v15, "databaseName":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 625
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    :cond_2
    iget-object v14, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v14, v14, v12

    invoke-virtual {v14}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v14

    .line 633
    .local v14, "tableOnlyName":Ljava/lang/String;
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    move-object/from16 v19, v7

    .end local v7    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .local v19, "insertPlaceHolders":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 639
    .local v7, "fqTableName":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 640
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    .line 641
    move-object/from16 v20, v6

    const/16 v6, 0x2c

    .end local v6    # "columnNames":Ljava/lang/StringBuilder;
    .local v20, "columnNames":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 640
    .end local v20    # "columnNames":Ljava/lang/StringBuilder;
    .restart local v6    # "columnNames":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v20, v6

    .line 644
    .end local v6    # "columnNames":Ljava/lang/StringBuilder;
    .restart local v20    # "columnNames":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-interface {v3, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 639
    .end local v20    # "columnNames":Ljava/lang/StringBuilder;
    .restart local v6    # "columnNames":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v20, v6

    .line 648
    .end local v6    # "columnNames":Ljava/lang/StringBuilder;
    .restart local v20    # "columnNames":Ljava/lang/StringBuilder;
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-direct {v0, v15, v14}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 651
    .end local v7    # "fqTableName":Ljava/lang/String;
    .end local v15    # "databaseName":Ljava/lang/String;
    .end local v16    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v14, "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_5

    .line 652
    .end local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .end local v20    # "columnNames":Ljava/lang/StringBuilder;
    .restart local v6    # "columnNames":Ljava/lang/StringBuilder;
    .local v7, "insertPlaceHolders":Ljava/lang/StringBuilder;
    .restart local v16    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v20, v6

    move-object/from16 v19, v7

    .end local v6    # "columnNames":Ljava/lang/StringBuilder;
    .end local v7    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .restart local v19    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .restart local v20    # "columnNames":Ljava/lang/StringBuilder;
    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 654
    .local v6, "tableOnlyName":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 655
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "fqTableName":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 662
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 663
    const/16 v14, 0x2c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    :cond_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-interface {v3, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v14, v0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-direct {v0, v14, v6}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .end local v16    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_5

    .line 654
    .end local v7    # "fqTableName":Ljava/lang/String;
    .end local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v14, v16

    .line 676
    .end local v6    # "tableOnlyName":Ljava/lang/String;
    .end local v16    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_5
    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    .line 677
    .local v6, "originalColumnName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 679
    .local v7, "columnName":Ljava/lang/String;
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 680
    move-object v7, v6

    goto :goto_6

    .line 682
    :cond_9
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 685
    :goto_6
    if-eqz v14, :cond_a

    if-eqz v7, :cond_a

    .line 686
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_a
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v15

    .line 690
    .local v15, "originalTableName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 692
    .local v16, "tableName":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 693
    move-object v3, v15

    .end local v16    # "tableName":Ljava/lang/String;
    .local v3, "tableName":Ljava/lang/String;
    goto :goto_7

    .line 695
    .end local v3    # "tableName":Ljava/lang/String;
    .restart local v16    # "tableName":Ljava/lang/String;
    :cond_b
    iget-object v3, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 698
    .end local v16    # "tableName":Ljava/lang/String;
    .restart local v3    # "tableName":Ljava/lang/String;
    :goto_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v16

    .line 699
    .local v21, "fqcnBuf":Ljava/lang/StringBuilder;
    move-object/from16 v16, v6

    .end local v6    # "originalColumnName":Ljava/lang/String;
    .local v16, "originalColumnName":Ljava/lang/String;
    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "databaseName":Ljava/lang/String;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_c

    .line 702
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    .end local v21    # "fqcnBuf":Ljava/lang/StringBuilder;
    .local v9, "fqcnBuf":Ljava/lang/StringBuilder;
    .local v22, "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    move-object/from16 v21, v6

    const/16 v6, 0x2e

    .end local v6    # "databaseName":Ljava/lang/String;
    .local v21, "databaseName":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 701
    .end local v22    # "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "databaseName":Ljava/lang/String;
    .local v9, "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v21, "fqcnBuf":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v6

    .line 708
    .end local v6    # "databaseName":Ljava/lang/String;
    .local v9, "fqcnBuf":Ljava/lang/StringBuilder;
    .local v21, "databaseName":Ljava/lang/String;
    .restart local v22    # "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_8
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const/16 v6, 0x2e

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "qualifiedColumnName":Ljava/lang/String;
    move-object/from16 v18, v1

    .end local v1    # "quotedId":Ljava/lang/String;
    .local v18, "quotedId":Ljava/lang/String;
    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v1

    move-object/from16 v23, v3

    .end local v3    # "tableName":Ljava/lang/String;
    .local v23, "tableName":Ljava/lang/String;
    const-string v3, "?"

    if-eqz v1, :cond_e

    .line 719
    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    move-object/from16 v24, v7

    .end local v7    # "columnName":Ljava/lang/String;
    .local v24, "columnName":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    if-nez v11, :cond_d

    .line 722
    const-string v1, " AND "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 724
    :cond_d
    const/4 v11, 0x0

    .line 727
    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 718
    .end local v24    # "columnName":Ljava/lang/String;
    .restart local v7    # "columnName":Ljava/lang/String;
    :cond_e
    move-object/from16 v24, v7

    .line 732
    .end local v7    # "columnName":Ljava/lang/String;
    .restart local v24    # "columnName":Ljava/lang/String;
    :goto_a
    if-eqz v10, :cond_f

    .line 733
    const/4 v1, 0x0

    .line 734
    .end local v10    # "firstTime":Z
    .local v1, "firstTime":Z
    const-string v7, "SET "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v1

    move-object/from16 v7, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    goto :goto_b

    .line 736
    .end local v1    # "firstTime":Z
    .restart local v10    # "firstTime":Z
    :cond_f
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    move-object/from16 v7, v20

    .end local v20    # "columnNames":Ljava/lang/StringBuilder;
    .local v7, "columnNames":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    move-object/from16 v20, v2

    move-object/from16 v2, v19

    .end local v19    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .local v2, "insertPlaceHolders":Ljava/lang/StringBuilder;
    .local v20, "equalsStr":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, "=?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .end local v6    # "qualifiedColumnName":Ljava/lang/String;
    .end local v9    # "fqcnBuf":Ljava/lang/StringBuilder;
    .end local v13    # "tableNameBuffer":Ljava/lang/StringBuilder;
    .end local v14    # "updColumnNameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "originalTableName":Ljava/lang/String;
    .end local v16    # "originalColumnName":Ljava/lang/String;
    .end local v21    # "databaseName":Ljava/lang/String;
    .end local v23    # "tableName":Ljava/lang/String;
    .end local v24    # "columnName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object v6, v7

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v9, v22

    move-object v7, v2

    move-object/from16 v2, v20

    goto/16 :goto_2

    .end local v17    # "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "quotedId":Ljava/lang/String;
    .end local v20    # "equalsStr":Ljava/lang/String;
    .end local v22    # "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v1, "quotedId":Ljava/lang/String;
    .local v2, "equalsStr":Ljava/lang/String;
    .local v3, "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "columnNames":Ljava/lang/StringBuilder;
    .local v7, "insertPlaceHolders":Ljava/lang/StringBuilder;
    .local v9, "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object v2, v7

    move-object v7, v6

    .line 749
    .end local v1    # "quotedId":Ljava/lang/String;
    .end local v3    # "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "columnNames":Ljava/lang/StringBuilder;
    .end local v12    # "i":I
    .local v2, "insertPlaceHolders":Ljava/lang/StringBuilder;
    .local v7, "columnNames":Ljava/lang/StringBuilder;
    .restart local v17    # "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "quotedId":Ljava/lang/String;
    .restart local v20    # "equalsStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") VALUES ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FROM "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    .line 755
    return-void

    .line 583
    .end local v2    # "insertPlaceHolders":Ljava/lang/StringBuilder;
    .end local v4    # "fieldValues":Ljava/lang/StringBuilder;
    .end local v5    # "keyValues":Ljava/lang/StringBuilder;
    .end local v7    # "columnNames":Ljava/lang/StringBuilder;
    .end local v8    # "allTablesBuf":Ljava/lang/StringBuilder;
    .end local v9    # "columnIndicesToTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "firstTime":Z
    .end local v11    # "keysFirstTime":Z
    .end local v17    # "tableNamesSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "quotedId":Ljava/lang/String;
    .end local v20    # "equalsStr":Ljava/lang/String;
    :cond_11
    iput-boolean v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 584
    iput-boolean v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 586
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 806
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ef

    :goto_0
    monitor-exit v0

    return v1

    .line 807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertRow()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 836
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 837
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v1, :cond_3

    .line 841
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 843
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->getLastInsertID()J

    move-result-wide v1

    .line 844
    .local v1, "autoIncrementId":J
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    .line 845
    .local v3, "numFields":I
    new-array v4, v3, [[B

    .line 847
    .local v4, "newRow":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 848
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 849
    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_1

    .line 851
    :cond_0
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 857
    :goto_1
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_1

    .line 858
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 859
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v5, 0x1

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 847
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 863
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 865
    .local v5, "resultSetRow":Lcom/mysql/jdbc/ResultSetRow;
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 867
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v6, v5}, Lcom/mysql/jdbc/RowData;->addRow(Lcom/mysql/jdbc/ResultSetRow;)V

    .line 868
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 869
    .end local v1    # "autoIncrementId":J
    .end local v3    # "numFields":I
    .end local v4    # "newRow":[[B
    .end local v5    # "resultSetRow":Lcom/mysql/jdbc/ResultSetRow;
    monitor-exit v0

    .line 870
    return-void

    .line 838
    :cond_3
    const-string v1, "UpdatableResultSet.7"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 887
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 905
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 922
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 940
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isLast()Z

    move-result v0

    return v0
.end method

.method isUpdatable()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    return v0
.end method

.method public last()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 962
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v0

    return v0
.end method

.method public moveToCurrentRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 978
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_1

    .line 982
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v1, :cond_0

    .line 983
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 984
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 986
    :cond_0
    monitor-exit v0

    .line 987
    return-void

    .line 979
    :cond_1
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveToInsertRow()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_7

    .line 1012
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 1018
    new-instance v2, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 1020
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    if-eqz v1, :cond_1

    .line 1021
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->extractDefaultValues()V

    .line 1024
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 1029
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    .line 1031
    .local v1, "numFields":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 1032
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1033
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1034
    new-array v4, v1, [[B

    .line 1035
    .local v4, "newRowData":[[B
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1036
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 1038
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_6

    .line 1039
    iget-boolean v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 1040
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v8, v5, 0x1

    const-string v9, "DEFAULT"

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 1041
    check-cast v7, [[B

    move-object v4, v7

    goto/16 :goto_4

    .line 1043
    :cond_3
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v5

    if-eqz v6, :cond_5

    .line 1044
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v5

    .line 1046
    .local v6, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1066
    :pswitch_0
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_2

    .line 1053
    :pswitch_1
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v8, v7, v5

    array-length v8, v8

    const/4 v9, 0x7

    if-le v8, v9, :cond_4

    aget-object v8, v7, v5

    aget-byte v8, v8, v3

    const/16 v10, 0x43

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    aget-byte v8, v8, v2

    const/16 v10, 0x55

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    const/4 v10, 0x2

    aget-byte v8, v8, v10

    const/16 v10, 0x52

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    const/4 v11, 0x3

    aget-byte v8, v8, v11

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    const/4 v10, 0x4

    aget-byte v8, v8, v10

    const/16 v10, 0x45

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    const/4 v10, 0x5

    aget-byte v8, v8, v10

    const/16 v10, 0x4e

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    const/4 v10, 0x6

    aget-byte v8, v8, v10

    const/16 v10, 0x54

    if-ne v8, v10, :cond_4

    aget-object v8, v7, v5

    aget-byte v8, v8, v9

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_4

    .line 1058
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v9, v5, 0x1

    aget-object v7, v7, v5

    invoke-virtual {v8, v9, v7}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 1060
    goto :goto_3

    .line 1062
    :cond_4
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v9, v5, 0x1

    aget-object v7, v7, v5

    invoke-virtual {v8, v9, v7, v3, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 1063
    goto :goto_3

    .line 1066
    :goto_2
    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v9, v9, v5

    invoke-virtual {v7, v8, v9, v3, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 1070
    :goto_3
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v8, v7, v5

    array-length v8, v8

    new-array v8, v8, [B

    .line 1071
    .local v8, "defaultValueCopy":[B
    aget-object v7, v7, v5

    array-length v9, v8

    invoke-static {v7, v3, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    aput-object v8, v4, v5

    .line 1073
    .end local v6    # "f":Lcom/mysql/jdbc/Field;
    .end local v8    # "defaultValueCopy":[B
    goto :goto_4

    .line 1074
    :cond_5
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1075
    aput-object v7, v4, v5

    .line 1038
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1079
    .end local v1    # "numFields":I
    .end local v4    # "newRowData":[[B
    .end local v5    # "i":I
    :cond_6
    monitor-exit v0

    .line 1080
    return-void

    .line 1009
    :cond_7
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1102
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    move-result v0

    return v0
.end method

.method public prev()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1121
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1143
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->previous()Z

    move-result v0

    return v0
.end method

.method public realClose(Z)V
    .locals 13
    .param p1, "calledExplicitly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1160
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 1161
    return-void

    .line 1164
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1165
    const/4 v2, 0x0

    .line 1167
    .local v2, "sqlEx":Ljava/sql/SQLException;
    :try_start_0
    iget-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->useUsageAdvisor:Z

    if-eqz v3, :cond_1

    .line 1168
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_1

    .line 1169
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v9, 0x0

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "UpdatableResultSet.34"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v8, p0

    invoke-interface/range {v4 .. v12}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_2

    .line 1176
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    :cond_2
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v3

    .line 1179
    .local v3, "ex":Ljava/sql/SQLException;
    move-object v2, v3

    .line 1183
    .end local v3    # "ex":Ljava/sql/SQLException;
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_3

    .line 1184
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1188
    :cond_3
    goto :goto_1

    .line 1186
    :catch_1
    move-exception v3

    .line 1187
    .restart local v3    # "ex":Ljava/sql/SQLException;
    move-object v2, v3

    .line 1191
    .end local v3    # "ex":Ljava/sql/SQLException;
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_4

    .line 1192
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1196
    :cond_4
    goto :goto_2

    .line 1194
    :catch_2
    move-exception v3

    .line 1195
    .restart local v3    # "ex":Ljava/sql/SQLException;
    move-object v2, v3

    .line 1199
    .end local v3    # "ex":Ljava/sql/SQLException;
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_5

    .line 1200
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1204
    :cond_5
    goto :goto_3

    .line 1202
    :catch_3
    move-exception v3

    .line 1203
    .restart local v3    # "ex":Ljava/sql/SQLException;
    move-object v2, v3

    .line 1206
    .end local v3    # "ex":Ljava/sql/SQLException;
    :goto_3
    :try_start_5
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    .line 1208
    if-nez v2, :cond_6

    .line 1211
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    monitor-exit v1

    .line 1212
    return-void

    .line 1209
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    nop

    .end local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    throw v2

    .line 1211
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method public refreshRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_4

    .line 1240
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_3

    .line 1242
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1246
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 1251
    monitor-exit v0

    .line 1252
    return-void

    .line 1247
    :cond_0
    const-string v1, "UpdatableResultSet.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1245
    :cond_1
    const-string v1, "UpdatableResultSet.10"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1243
    :cond_2
    const-string v1, "UpdatableResultSet.9"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1241
    :cond_3
    const-string v1, "UpdatableResultSet.8"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1237
    :cond_4
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v1

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relative(I)Z
    .locals 1
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1370
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->relative(I)Z

    move-result v0

    return v0
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1397
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1415
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1433
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setResultSetConcurrency(I)V
    .locals 0
    .param p1, "concurrencyFlag"    # I

    .line 1444
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    .line 1455
    return-void
.end method

.method protected syncUpdate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 1474
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    .line 1478
    .local v0, "numFields":I
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 1481
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1483
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->isCharsetApplicableType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1485
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v1, v5, v6}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 1487
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v5, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    goto :goto_1

    .line 1490
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    .line 1493
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1480
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1498
    .local v1, "numKeys":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1499
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1500
    .local v3, "idx":I
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int v4, v0, v2

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v9, v4, v3

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;ILcom/mysql/jdbc/Field;)V

    .line 1498
    .end local v3    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1502
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1524
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1525
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1526
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1527
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1530
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 1532
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 1533
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1535
    :goto_0
    monitor-exit v0

    .line 1536
    return-void

    .line 1535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1557
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    .line 1558
    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1577
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1578
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1579
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1580
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 1587
    if-nez p2, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1590
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1593
    :goto_0
    monitor-exit v0

    .line 1594
    return-void

    .line 1593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1612
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    .line 1613
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1635
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1636
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1638
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1641
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 1643
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 1645
    if-nez p2, :cond_2

    .line 1646
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1648
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1651
    :goto_0
    monitor-exit v0

    .line 1652
    return-void

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1673
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    .line 1674
    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "blob"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1681
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1682
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1683
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1685
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1688
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_0

    .line 1690
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    .line 1692
    if-nez p2, :cond_2

    .line 1693
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1695
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1698
    :goto_0
    monitor-exit v0

    .line 1699
    return-void

    .line 1698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "blob"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1706
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBlob(ILjava/sql/Blob;)V

    .line 1707
    return-void
.end method

.method public updateBoolean(IZ)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1725
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1726
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1727
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1729
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1732
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 1734
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 1736
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1738
    :goto_0
    monitor-exit v0

    .line 1739
    return-void

    .line 1738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1757
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBoolean(IZ)V

    .line 1758
    return-void
.end method

.method public updateByte(IB)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1776
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1777
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1778
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1779
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1780
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1783
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    goto :goto_0

    .line 1785
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    .line 1787
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1789
    :goto_0
    monitor-exit v0

    .line 1790
    return-void

    .line 1789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1808
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateByte(IB)V

    .line 1809
    return-void
.end method

.method public updateBytes(I[B)V
    .locals 3
    .param p1, "columnIndex"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1828
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1829
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1830
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1831
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1834
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 1836
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 1838
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1840
    :goto_0
    monitor-exit v0

    .line 1841
    return-void

    .line 1840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1859
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBytes(I[B)V

    .line 1860
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1881
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1882
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1883
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1884
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1885
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1888
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 1892
    if-nez p2, :cond_2

    .line 1893
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1895
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1898
    :goto_0
    monitor-exit v0

    .line 1899
    return-void

    .line 1898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1920
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 1921
    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "clob"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1928
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1929
    if-nez p2, :cond_0

    .line 1930
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    goto :goto_0

    .line 1932
    :cond_0
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, p1, v1, v3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 1934
    :goto_0
    monitor-exit v0

    .line 1935
    return-void

    .line 1934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1953
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1954
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 1955
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1956
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1957
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1960
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_0

    .line 1962
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 1964
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1966
    :goto_0
    monitor-exit v0

    .line 1967
    return-void

    .line 1966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1985
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDate(ILjava/sql/Date;)V

    .line 1986
    return-void
.end method

.method public updateDouble(ID)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2004
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2005
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2006
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2007
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2008
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2011
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_0

    .line 2013
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 2015
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2017
    :goto_0
    monitor-exit v0

    .line 2018
    return-void

    .line 2017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2036
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDouble(ID)V

    .line 2037
    return-void
.end method

.method public updateFloat(IF)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2055
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2056
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2057
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2058
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2059
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2062
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_0

    .line 2064
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 2066
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2068
    :goto_0
    monitor-exit v0

    .line 2069
    return-void

    .line 2068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2087
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateFloat(IF)V

    .line 2088
    return-void
.end method

.method public updateInt(II)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2106
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2107
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2108
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2110
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2113
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 2115
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 2117
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2119
    :goto_0
    monitor-exit v0

    .line 2120
    return-void

    .line 2119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2138
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateInt(II)V

    .line 2139
    return-void
.end method

.method public updateLong(IJ)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2157
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2158
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2159
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2161
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2164
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    .line 2166
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 2168
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2170
    :goto_0
    monitor-exit v0

    .line 2171
    return-void

    .line 2170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2189
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateLong(IJ)V

    .line 2190
    return-void
.end method

.method public updateNull(I)V
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2207
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2208
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2210
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2213
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2215
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2217
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2219
    :goto_0
    monitor-exit v0

    .line 2220
    return-void

    .line 2219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    .line 2237
    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2255
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 2256
    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 2279
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2332
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    .line 2333
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2355
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    .line 2356
    return-void
.end method

.method protected updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/Integer;
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2292
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2293
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_2

    .line 2294
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2296
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2299
    :cond_0
    if-nez p3, :cond_1

    .line 2300
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_1

    .line 2302
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    goto :goto_1

    .line 2305
    :cond_2
    if-nez p3, :cond_3

    .line 2306
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 2308
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 2311
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2313
    :goto_1
    monitor-exit v0

    .line 2314
    return-void

    .line 2313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2369
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2370
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_2

    .line 2374
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 2376
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow()V

    .line 2377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    goto :goto_0

    .line 2378
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2385
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2386
    monitor-exit v0

    .line 2387
    return-void

    .line 2379
    :cond_1
    const-string v1, "UpdatableResultSet.44"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2371
    :cond_2
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateShort(IS)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2405
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2406
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2407
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2409
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2412
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto :goto_0

    .line 2414
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    .line 2416
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2418
    :goto_0
    monitor-exit v0

    .line 2419
    return-void

    .line 2418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2437
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateShort(IS)V

    .line 2438
    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2456
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2457
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2458
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2459
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2460
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2463
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 2465
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2467
    if-nez p2, :cond_2

    .line 2468
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2470
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2471
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2474
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2478
    :goto_0
    monitor-exit v0

    .line 2479
    return-void

    .line 2478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2497
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateString(ILjava/lang/String;)V

    .line 2498
    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2516
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2517
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2518
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2520
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2523
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    .line 2525
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 2527
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2529
    :goto_0
    monitor-exit v0

    .line 2530
    return-void

    .line 2529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2548
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTime(ILjava/sql/Time;)V

    .line 2549
    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2567
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2568
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2569
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2570
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2571
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2574
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 2576
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2578
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2580
    :goto_0
    monitor-exit v0

    .line 2581
    return-void

    .line 2580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2599
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTimestamp(ILjava/sql/Timestamp;)V

    .line 2600
    return-void
.end method
