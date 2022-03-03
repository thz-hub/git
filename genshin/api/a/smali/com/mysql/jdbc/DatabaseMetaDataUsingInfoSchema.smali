.class public Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.super Lcom/mysql/jdbc/DatabaseMetaData;
.source "DatabaseMetaDataUsingInfoSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    }
.end annotation


# instance fields
.field private final hasParametersView:Z

.field private hasReferentialConstraintsView:Z


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 5
    .param p1, "connToSet"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "databaseToSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    .line 51
    const/4 v0, 0x0

    .line 54
    .local v0, "rs":Ljava/sql/ResultSet;
    :try_start_0
    const-string v1, "INFORMATION_SCHEMA"

    const/4 v2, 0x0

    const-string v3, "PARAMETERS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-super {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v0, v1

    .line 56
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .line 62
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    :cond_0
    nop

    .line 61
    nop

    .line 62
    return-void

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 58
    :cond_1
    throw v1
.end method

.method private generateDeleteRuleClause()Ljava/lang/String;
    .locals 3

    .line 508
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CASE WHEN R.DELETE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHEN R.DELETE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ELSE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private generateOptionalRefContraintsJoin()Ljava/lang/String;
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    if-eqz v0, :cond_0

    const-string v0, "JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS R ON (R.CONSTRAINT_NAME = B.CONSTRAINT_NAME AND R.TABLE_NAME = B.TABLE_NAME AND R.CONSTRAINT_SCHEMA = B.TABLE_SCHEMA) "

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private generateUpdateRuleClause()Ljava/lang/String;
    .locals 3

    .line 516
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CASE WHEN R.UPDATE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHEN R.UPDATE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ELSE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;
    .locals 3
    .param p1, "pStmt"    # Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 66
    .local v0, "rs":Ljava/sql/ResultSet;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V

    .line 68
    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    move-object/from16 v1, p0

    const-string v0, ""

    if-nez p4, :cond_1

    .line 106
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "%"

    .end local p4    # "columnNamePattern":Ljava/lang/String;
    .local v2, "columnNamePattern":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v2    # "columnNamePattern":Ljava/lang/String;
    .restart local p4    # "columnNamePattern":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v2, "Column name pattern can not be NULL or empty."

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 105
    :cond_1
    move-object/from16 v2, p4

    .line 114
    .end local p4    # "columnNamePattern":Ljava/lang/String;
    .restart local v2    # "columnNamePattern":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    .line 115
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .end local p1    # "catalog":Ljava/lang/String;
    .local v3, "catalog":Ljava/lang/String;
    goto :goto_1

    .line 120
    .end local v3    # "catalog":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    :cond_2
    move-object/from16 v3, p1

    .end local p1    # "catalog":Ljava/lang/String;
    .restart local v3    # "catalog":Ljava/lang/String;
    :goto_1
    const-string v4, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME,COLUMN_NAME, NULL AS GRANTOR, GRANTEE, PRIVILEGE_TYPE AS PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME =? AND COLUMN_NAME LIKE ? ORDER BY COLUMN_NAME, PRIVILEGE_TYPE"

    .line 124
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    move-object v5, v6

    .line 129
    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 130
    invoke-interface {v5, v6, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_3
    const-string v7, "%"

    invoke-interface {v5, v6, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :goto_2
    const/4 v7, 0x2

    move-object/from16 v8, p3

    :try_start_1
    invoke-interface {v5, v7, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 136
    const/4 v9, 0x3

    invoke-interface {v5, v9, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v10

    .line 139
    .local v10, "rs":Ljava/sql/ResultSet;
    move-object v11, v10

    check-cast v11, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/mysql/jdbc/Field;

    const/4 v13, 0x0

    new-instance v14, Lcom/mysql/jdbc/Field;

    const-string v15, "TABLE_CAT"

    const/16 v9, 0x40

    invoke-direct {v14, v0, v15, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v14, v12, v13

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "TABLE_SCHEM"

    invoke-direct {v13, v0, v14, v6, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v12, v6

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "TABLE_NAME"

    invoke-direct {v13, v0, v14, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v12, v7

    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v13, "COLUMN_NAME"

    invoke-direct {v7, v0, v13, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v13, 0x3

    aput-object v7, v12, v13

    const/4 v7, 0x4

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "GRANTOR"

    const/16 v15, 0x4d

    invoke-direct {v13, v0, v14, v6, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v12, v7

    const/4 v7, 0x5

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "GRANTEE"

    invoke-direct {v13, v0, v14, v6, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v12, v7

    const/4 v7, 0x6

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "PRIVILEGE"

    invoke-direct {v13, v0, v14, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v12, v7

    const/4 v7, 0x7

    new-instance v9, Lcom/mysql/jdbc/Field;

    const-string v13, "IS_GRANTABLE"

    const/4 v14, 0x3

    invoke-direct {v9, v0, v13, v6, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v9, v12, v7

    invoke-interface {v11, v12}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    nop

    .line 146
    .end local v10    # "rs":Ljava/sql/ResultSet;
    if-eqz v5, :cond_4

    .line 147
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    move-object v0, v10

    .line 144
    .local v0, "rs":Ljava/sql/ResultSet;
    return-object v10

    .line 146
    .end local v0    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v8, p3

    .line 147
    :goto_3
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 146
    :cond_5
    throw v0
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 192
    if-nez p4, :cond_1

    .line 193
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string p4, "%"

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Column name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 201
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 207
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "sqlBuf":Ljava/lang/StringBuilder;
    const-string v1, "DATA_TYPE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    const-string v1, " AS DATA_TYPE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    const-string v1, "UPPER(CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS TYPE_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_3
    const-string v1, "CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS TYPE_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AS BUFFER_LENGTH,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NUMERIC_SCALE AS DECIMAL_DIGITS,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "10 AS NUM_PREC_RADIX,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CASE WHEN IS_NULLABLE=\'NO\' THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ELSE CASE WHEN IS_NULLABLE=\'YES\' THEN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ELSE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " END END AS NULLABLE,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "COLUMN_COMMENT AS REMARKS,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "COLUMN_DEFAULT AS COLUMN_DEF,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0 AS SQL_DATA_TYPE,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0 AS SQL_DATETIME_SUB,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CASE WHEN CHARACTER_OCTET_LENGTH > "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " THEN "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ELSE CHARACTER_OCTET_LENGTH END AS CHAR_OCTET_LENGTH,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ORDINAL_POSITION,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IS_NULLABLE,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NULL AS SCOPE_CATALOG,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NULL AS SCOPE_SCHEMA,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NULL AS SCOPE_TABLE,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NULL AS SOURCE_DATA_TYPE,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IF (EXTRA LIKE \'%auto_increment%\',\'YES\',\'NO\') AS IS_AUTOINCREMENT, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IF (EXTRA LIKE \'%GENERATED%\',\'YES\',\'NO\') AS IS_GENERATEDCOLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "information_schema"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 234
    .local v1, "operatingOnInformationSchema":Z
    const-string v5, "TABLE_SCHEMA LIKE ? AND "

    const-string v6, "_"

    const-string v7, "%"

    const/4 v8, -0x1

    if-eqz p1, :cond_6

    .line 235
    if-nez v1, :cond_5

    invoke-static {v2, p1, v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_4

    invoke-static {v2, p1, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_4

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 237
    :cond_5
    :goto_2
    const-string v5, "TABLE_SCHEMA = ? AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 243
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_3
    const-string v5, "TABLE_NAME LIKE ? AND "

    if-eqz p3, :cond_8

    .line 247
    invoke-static {v2, p3, v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_7

    invoke-static {v2, p3, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_7

    .line 248
    const-string v5, "TABLE_NAME = ? AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 250
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 254
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_4
    invoke-static {v2, p4, v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_9

    invoke-static {v2, p4, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_9

    .line 258
    const-string v2, "COLUMN_NAME = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 260
    :cond_9
    const-string v2, "COLUMN_NAME LIKE ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_5
    const-string v2, "ORDER BY TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/4 v2, 0x0

    .line 267
    .local v2, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    move-object v2, v5

    .line 269
    if-eqz p1, :cond_a

    .line 270
    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_6

    .line 272
    :cond_a
    invoke-interface {v2, v3, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 275
    :goto_6
    invoke-interface {v2, v4, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 276
    const/4 v3, 0x3

    invoke-interface {v2, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 280
    .local v3, "rs":Ljava/sql/ResultSet;
    move-object v4, v3

    check-cast v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    nop

    .line 283
    .end local v3    # "rs":Ljava/sql/ResultSet;
    if-eqz v2, :cond_b

    .line 284
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_b
    move-object v4, v3

    .line 281
    .local v4, "rs":Ljava/sql/ResultSet;
    return-object v3

    .line 283
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 284
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 283
    :cond_c
    throw v3
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .param p1, "primaryCatalog"    # Ljava/lang/String;
    .param p2, "primarySchema"    # Ljava/lang/String;
    .param p3, "primaryTable"    # Ljava/lang/String;
    .param p4, "foreignCatalog"    # Ljava/lang/String;
    .param p5, "foreignSchema"    # Ljava/lang/String;
    .param p6, "foreignTable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    if-eqz p3, :cond_6

    .line 350
    if-nez p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 356
    :cond_0
    if-nez p4, :cond_1

    .line 357
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT,NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS UPDATE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS DELETE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS PK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS DEFERRABILITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.TABLE_SCHEMA LIKE ? AND A.TABLE_NAME=? ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 376
    .local v1, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 377
    const-string v2, "%"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 378
    :try_start_1
    invoke-interface {v1, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 383
    :goto_0
    const/4 v3, 0x2

    invoke-interface {v1, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 385
    const/4 v3, 0x3

    if-eqz p4, :cond_3

    .line 386
    invoke-interface {v1, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_3
    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 391
    :goto_1
    const/4 v2, 0x4

    invoke-interface {v1, v2, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 394
    .local v2, "rs":Ljava/sql/ResultSet;
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    nop

    .line 398
    .end local v2    # "rs":Ljava/sql/ResultSet;
    if-eqz v1, :cond_4

    .line 399
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    move-object v3, v2

    .line 396
    .local v3, "rs":Ljava/sql/ResultSet;
    return-object v2

    .line 398
    .end local v3    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 399
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 398
    :cond_5
    throw v2

    .line 347
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 454
    if-eqz p3, :cond_4

    .line 458
    if-nez p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME, A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME,A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS UPDATE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS DELETE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS PK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS DEFERRABILITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 479
    .local v1, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 481
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 482
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_1
    const-string v3, "%"

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 487
    :goto_0
    const/4 v2, 0x2

    invoke-interface {v1, v2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 489
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 491
    .local v2, "rs":Ljava/sql/ResultSet;
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    nop

    .line 495
    .end local v2    # "rs":Ljava/sql/ResultSet;
    if-eqz v1, :cond_2

    .line 496
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    move-object v3, v2

    .line 493
    .local v3, "rs":Ljava/sql/ResultSet;
    return-object v2

    .line 495
    .end local v3    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 496
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 495
    :cond_3
    throw v2

    .line 455
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "functionNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1347
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v0, :cond_0

    .line 1348
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 1351
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1353
    const-string p3, "%"

    .line 1360
    :cond_2
    const/4 v0, 0x0

    .line 1362
    .local v0, "db":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 1363
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1364
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    .line 1367
    :cond_3
    move-object v0, p1

    .line 1375
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT SPECIFIC_SCHEMA AS FUNCTION_CAT, NULL AS `FUNCTION_SCHEM`, SPECIFIC_NAME AS `FUNCTION_NAME`, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v1, "sqlBuf":Ljava/lang/StringBuilder;
    const-string v2, "IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1378
    const-string v2, " WHEN PARAMETER_MODE = \'OUT\' THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    const-string v2, " WHEN PARAMETER_MODE = \'INOUT\' THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    const-string v2, " WHEN ORDINAL_POSITION = 0 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1384
    const-string v2, " ELSE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1386
    const-string v2, " END AS `COLUMN_TYPE`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    const-string v2, "DATA_TYPE"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1391
    const-string v2, " AS `DATA_TYPE`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1395
    const-string v2, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1398
    :cond_5
    const-string v2, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :goto_1
    const-string v2, "NUMERIC_PRECISION AS `PRECISION`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    const-string v2, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-string v2, "NUMERIC_SCALE AS `SCALE`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v2, "10 AS RADIX,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AS `NULLABLE`,  NULL AS `REMARKS`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`,  ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AND ROUTINE_TYPE=\'FUNCTION\' ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const/4 v2, 0x0

    .line 1428
    .local v2, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    move-object v2, v3

    .line 1430
    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 1431
    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    .line 1433
    :cond_6
    const-string v4, "%"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1436
    :goto_2
    const/4 v3, 0x2

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1437
    const/4 v3, 0x3

    invoke-interface {v2, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1439
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 1440
    .local v3, "rs":Ljava/sql/ResultSet;
    move-object v4, v3

    check-cast v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    nop

    .line 1444
    .end local v3    # "rs":Ljava/sql/ResultSet;
    if-eqz v2, :cond_7

    .line 1445
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_7
    move-object v4, v3

    .line 1442
    .local v4, "rs":Ljava/sql/ResultSet;
    return-object v3

    .line 1444
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 1445
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1444
    :cond_8
    throw v3

    .line 1355
    .end local v0    # "db":Ljava/lang/String;
    .end local v1    # "sqlBuf":Ljava/lang/StringBuilder;
    .end local v2    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "functionNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1510
    move-object/from16 v1, p0

    const-string v0, ""

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    goto :goto_1

    .line 1511
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1512
    const-string v2, "%"

    .line 1519
    .end local p3    # "functionNamePattern":Ljava/lang/String;
    .local v2, "functionNamePattern":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .line 1521
    .local v3, "db":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 1522
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1523
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_2

    .line 1526
    :cond_2
    move-object/from16 v3, p1

    .line 1529
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT ROUTINE_SCHEMA AS FUNCTION_CAT, NULL AS FUNCTION_SCHEM, ROUTINE_NAME AS FUNCTION_NAME, ROUTINE_COMMENT AS REMARKS, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionNoTableConstant()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AS FUNCTION_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WHERE ROUTINE_TYPE LIKE \'FUNCTION\' AND ROUTINE_SCHEMA LIKE ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ROUTINE_NAME LIKE ? ORDER BY FUNCTION_CAT, FUNCTION_SCHEM, FUNCTION_NAME, SPECIFIC_NAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1534
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1537
    .local v5, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    move-object v5, v6

    .line 1539
    if-eqz v3, :cond_4

    move-object v6, v3

    goto :goto_3

    :cond_4
    const-string v6, "%"

    :goto_3
    const/4 v7, 0x1

    invoke-interface {v5, v7, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1540
    const/4 v6, 0x2

    invoke-interface {v5, v6, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1542
    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v8

    .line 1543
    .local v8, "rs":Ljava/sql/ResultSet;
    move-object v9, v8

    check-cast v9, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v10, 0x6

    new-array v11, v10, [Lcom/mysql/jdbc/Field;

    const/4 v12, 0x0

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "FUNCTION_CAT"

    const/16 v15, 0xff

    invoke-direct {v13, v0, v14, v7, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v11, v12

    new-instance v12, Lcom/mysql/jdbc/Field;

    const-string v13, "FUNCTION_SCHEM"

    invoke-direct {v12, v0, v13, v7, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v7

    new-instance v12, Lcom/mysql/jdbc/Field;

    const-string v13, "FUNCTION_NAME"

    invoke-direct {v12, v0, v13, v7, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v6

    const/4 v6, 0x3

    new-instance v12, Lcom/mysql/jdbc/Field;

    const-string v13, "REMARKS"

    invoke-direct {v12, v0, v13, v7, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v6

    const/4 v6, 0x4

    new-instance v12, Lcom/mysql/jdbc/Field;

    const-string v13, "FUNCTION_TYPE"

    const/4 v14, 0x5

    invoke-direct {v12, v0, v13, v14, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v6

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v10, "SPECIFIC_NAME"

    invoke-direct {v6, v0, v10, v7, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v11, v14

    invoke-interface {v9, v11}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    nop

    .line 1550
    .end local v8    # "rs":Ljava/sql/ResultSet;
    if-eqz v5, :cond_5

    .line 1551
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    move-object v0, v8

    .line 1548
    .local v0, "rs":Ljava/sql/ResultSet;
    return-object v8

    .line 1550
    .end local v0    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 1551
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 1550
    :cond_6
    throw v0

    .line 1514
    .end local v2    # "functionNamePattern":Ljava/lang/String;
    .end local v3    # "db":Ljava/lang/String;
    .end local v4    # "sql":Ljava/lang/String;
    .end local v5    # "pStmt":Ljava/sql/PreparedStatement;
    .restart local p3    # "functionNamePattern":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v2, "Function name pattern can not be NULL or empty."

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 571
    if-eqz p3, :cond_4

    .line 575
    if-nez p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS UPDATE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS DELETE_RULE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS PK_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS DEFERRABILITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS B USING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(CONSTRAINT_NAME, TABLE_NAME) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.TABLE_SCHEMA LIKE ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.TABLE_NAME=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND A.REFERENCED_TABLE_SCHEMA IS NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ORDER BY A.REFERENCED_TABLE_SCHEMA, A.REFERENCED_TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 594
    .local v1, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 596
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 597
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    const-string v3, "%"

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 602
    :goto_0
    const/4 v2, 0x2

    invoke-interface {v1, v2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 604
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 606
    .local v2, "rs":Ljava/sql/ResultSet;
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    nop

    .line 610
    .end local v2    # "rs":Ljava/sql/ResultSet;
    if-eqz v1, :cond_2

    .line 611
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    move-object v3, v2

    .line 608
    .local v3, "rs":Ljava/sql/ResultSet;
    return-object v2

    .line 610
    .end local v3    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 611
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 610
    :cond_3
    throw v2

    .line 572
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 5
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "unique"    # Z
    .param p5, "approximate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, NON_UNIQUE,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "sqlBuf":Ljava/lang/StringBuilder;
    const-string v1, "TABLE_SCHEMA AS INDEX_QUALIFIER, INDEX_NAME,3 AS TYPE, SEQ_IN_INDEX AS ORDINAL_POSITION, COLUMN_NAME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, "COLLATION AS ASC_OR_DESC, CARDINALITY, NULL AS PAGES, NULL AS FILTER_CONDITION FROM INFORMATION_SCHEMA.STATISTICS WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, "TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    if-eqz p4, :cond_0

    .line 671
    const-string v1, " AND NON_UNIQUE=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_0
    const-string v1, "ORDER BY NON_UNIQUE, INDEX_NAME, SEQ_IN_INDEX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const/4 v1, 0x0

    .line 679
    .local v1, "pStmt":Ljava/sql/PreparedStatement;
    if-nez p1, :cond_1

    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    move-object p1, v2

    .line 685
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 687
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 688
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_2
    const-string v3, "%"

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 693
    :goto_0
    const/4 v2, 0x2

    invoke-interface {v1, v2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 695
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 697
    .local v2, "rs":Ljava/sql/ResultSet;
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    nop

    .line 701
    .end local v2    # "rs":Ljava/sql/ResultSet;
    if-eqz v1, :cond_3

    .line 702
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_3
    move-object v3, v2

    .line 699
    .local v3, "rs":Ljava/sql/ResultSet;
    return-object v2

    .line 701
    .end local v3    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 702
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 701
    :cond_4
    throw v2
.end method

.method protected getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I
    .locals 1
    .param p1, "constant"    # Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    .line 1460
    const/4 v0, 0x0

    return v0
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .line 1564
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 12
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 734
    const-string v0, ""

    if-nez p1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 740
    :cond_0
    if-eqz p3, :cond_4

    .line 744
    const-string v1, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, SEQ_IN_INDEX AS KEY_SEQ, \'PRIMARY\' AS PK_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND INDEX_NAME=\'PRIMARY\' ORDER BY TABLE_SCHEMA, TABLE_NAME, INDEX_NAME, SEQ_IN_INDEX"

    .line 748
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 751
    .local v2, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    move-object v2, v3

    .line 753
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 754
    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_1
    const-string v4, "%"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 759
    :goto_0
    const/4 v4, 0x2

    invoke-interface {v2, v4, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 761
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v5

    .line 762
    .local v5, "rs":Ljava/sql/ResultSet;
    move-object v6, v5

    check-cast v6, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/mysql/jdbc/Field;

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_CAT"

    const/16 v10, 0xff

    invoke-direct {v8, v0, v9, v3, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v11, "TABLE_SCHEM"

    invoke-direct {v8, v0, v11, v3, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v8, v7, v3

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_NAME"

    invoke-direct {v8, v0, v9, v3, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v8, v7, v4

    const/4 v4, 0x3

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v9, "COLUMN_NAME"

    const/16 v10, 0x20

    invoke-direct {v8, v0, v9, v3, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v8, v7, v4

    const/4 v4, 0x4

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v9, "KEY_SEQ"

    const/4 v11, 0x5

    invoke-direct {v8, v0, v9, v11, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v8, v7, v4

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v8, "PK_NAME"

    invoke-direct {v4, v0, v8, v3, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v11

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    nop

    .line 768
    .end local v5    # "rs":Ljava/sql/ResultSet;
    if-eqz v2, :cond_2

    .line 769
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    move-object v0, v5

    .line 766
    .local v0, "rs":Ljava/sql/ResultSet;
    return-object v5

    .line 768
    .end local v0    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 769
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 768
    :cond_3
    throw v0

    .line 741
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 937
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 941
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 943
    const-string p3, "%"

    .line 950
    :cond_2
    const/4 v0, 0x0

    .line 952
    .local v0, "db":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 953
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 954
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    .line 957
    :cond_3
    move-object v0, p1

    .line 976
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT SPECIFIC_SCHEMA AS PROCEDURE_CAT, NULL AS `PROCEDURE_SCHEM`, SPECIFIC_NAME AS `PROCEDURE_NAME`, IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN 1 WHEN PARAMETER_MODE = \'OUT\' THEN 4 WHEN PARAMETER_MODE = \'INOUT\' THEN 2 WHEN ORDINAL_POSITION = 0 THEN 5 ELSE 0 END AS `COLUMN_TYPE`, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, "sqlBuf":Ljava/lang/StringBuilder;
    const-string v2, "DATA_TYPE"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 984
    const-string v2, " AS `DATA_TYPE`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 988
    const-string v2, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 991
    :cond_5
    const-string v2, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :goto_1
    const-string v2, "NUMERIC_PRECISION AS `PRECISION`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v2, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v2, "NUMERIC_SCALE AS `SCALE`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v2, "10 AS RADIX,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 AS `NULLABLE`, NULL AS `REMARKS`, NULL AS `COLUMN_DEF`, NULL AS `SQL_DATA_TYPE`, NULL AS `SQL_DATETIME_SUB`, CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`, ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ROUTINE_TYPE, ORDINAL_POSITION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const/4 v2, 0x0

    .line 1015
    .local v2, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    move-object v2, v3

    .line 1017
    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 1018
    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    .line 1020
    :cond_6
    const-string v4, "%"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1023
    :goto_2
    const/4 v3, 0x2

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1024
    const/4 v3, 0x3

    invoke-interface {v2, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 1027
    .local v3, "rs":Ljava/sql/ResultSet;
    move-object v4, v3

    check-cast v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    nop

    .line 1031
    .end local v3    # "rs":Ljava/sql/ResultSet;
    if-eqz v2, :cond_7

    .line 1032
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_7
    move-object v4, v3

    .line 1029
    .local v4, "rs":Ljava/sql/ResultSet;
    return-object v3

    .line 1031
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 1032
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1031
    :cond_8
    throw v3

    .line 945
    .end local v0    # "db":Ljava/lang/String;
    .end local v1    # "sqlBuf":Ljava/lang/StringBuilder;
    .end local v2    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1044
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 813
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 815
    const-string p3, "%"

    .line 822
    :cond_1
    const/4 v0, 0x0

    .line 824
    .local v0, "db":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 825
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 826
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    .line 829
    :cond_2
    move-object v0, p1

    .line 832
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT ROUTINE_SCHEMA AS PROCEDURE_CAT, NULL AS PROCEDURE_SCHEM, ROUTINE_NAME AS PROCEDURE_NAME, NULL AS RESERVED_1, NULL AS RESERVED_2, NULL AS RESERVED_3, ROUTINE_COMMENT AS REMARKS, CASE WHEN ROUTINE_TYPE = \'PROCEDURE\' THEN 1 WHEN ROUTINE_TYPE=\'FUNCTION\' THEN 2 ELSE 0 END AS PROCEDURE_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ROUTINE_SCHEMA LIKE ? AND ROUTINE_NAME LIKE ? ORDER BY ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 841
    .local v2, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    move-object v2, v3

    .line 843
    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 844
    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_4
    const-string v4, "%"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 849
    :goto_1
    const/4 v3, 0x2

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 851
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 852
    .local v3, "rs":Ljava/sql/ResultSet;
    move-object v4, v3

    check-cast v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    nop

    .line 856
    .end local v3    # "rs":Ljava/sql/ResultSet;
    if-eqz v2, :cond_5

    .line 857
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    move-object v4, v3

    .line 854
    .local v4, "rs":Ljava/sql/ResultSet;
    return-object v3

    .line 856
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 857
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 856
    :cond_6
    throw v3

    .line 817
    .end local v0    # "db":Ljava/lang/String;
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;
    .locals 1

    .line 1054
    const-string v0, ""

    return-object v0
.end method

.method protected getRoutineTypeConditionForGetProcedures()Ljava/lang/String;
    .locals 1

    .line 869
    const-string v0, ""

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableNamePattern"    # Ljava/lang/String;
    .param p4, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1092
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    if-nez p1, :cond_0

    .line 1093
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    move-object v3, v0

    .end local p1    # "catalog":Ljava/lang/String;
    .local v0, "catalog":Ljava/lang/String;
    goto :goto_0

    .line 1098
    .end local v0    # "catalog":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p1

    .end local p1    # "catalog":Ljava/lang/String;
    .local v3, "catalog":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_2

    .line 1099
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    const-string v0, "%"

    move-object v4, v0

    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v0, "tableNamePattern":Ljava/lang/String;
    goto :goto_1

    .line 1102
    .end local v0    # "tableNamePattern":Ljava/lang/String;
    .restart local p3    # "tableNamePattern":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v4, "Table name pattern can not be NULL or empty."

    const-string v5, "S1009"

    invoke-static {v4, v5, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1098
    :cond_2
    move-object/from16 v4, p3

    .line 1108
    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v4, "tableNamePattern":Ljava/lang/String;
    :goto_1
    const-string v0, ""

    .line 1110
    .local v0, "tmpCat":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 1115
    :cond_3
    move-object v0, v3

    move-object v5, v0

    goto :goto_3

    .line 1111
    :cond_4
    :goto_2
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1112
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    move-object v5, v0

    goto :goto_3

    .line 1111
    :cond_5
    move-object v5, v0

    .line 1118
    .end local v0    # "tmpCat":Ljava/lang/String;
    .local v5, "tmpCat":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->quotedId:Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v6

    invoke-static {v4, v5, v0, v6}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 1120
    .local v6, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v7, :cond_6

    .line 1121
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .local v0, "tableNamePat":Ljava/lang/String;
    goto :goto_4

    .line 1123
    .end local v0    # "tableNamePat":Ljava/lang/String;
    :cond_6
    move-object v0, v4

    move-object v9, v0

    .line 1126
    .local v9, "tableNamePat":Ljava/lang/String;
    :goto_4
    const/4 v10, 0x0

    .line 1128
    .local v10, "pStmt":Ljava/sql/PreparedStatement;
    const-string v0, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, CASE WHEN TABLE_TYPE=\'BASE TABLE\' THEN CASE WHEN TABLE_SCHEMA = \'mysql\' OR TABLE_SCHEMA = \'performance_schema\' THEN \'SYSTEM TABLE\' ELSE \'TABLE\' END WHEN TABLE_TYPE=\'TEMPORARY\' THEN \'LOCAL_TEMPORARY\' ELSE TABLE_TYPE END AS TABLE_TYPE, TABLE_COMMENT AS REMARKS, NULL AS TYPE_CAT, NULL AS TYPE_SCHEM, NULL AS TYPE_NAME, NULL AS SELF_REFERENCING_COL_NAME, NULL AS REF_GENERATION FROM INFORMATION_SCHEMA.TABLES WHERE "

    .line 1134
    .local v0, "sql":Ljava/lang/String;
    const-string v11, "information_schema"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 1135
    .local v11, "operatingOnInformationSchema":Z
    const-string v12, "_"

    const-string v13, "TABLE_SCHEMA LIKE ? "

    const-string v14, "%"

    const/4 v15, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_9

    .line 1136
    if-nez v11, :cond_8

    invoke-static {v7, v3, v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v15, :cond_7

    invoke-static {v7, v3, v12}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v15, :cond_7

    goto :goto_5

    .line 1140
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1138
    :cond_8
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "TABLE_SCHEMA = ? "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1144
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_6
    const-string v8, "AND TABLE_NAME LIKE ? "

    if-eqz v9, :cond_b

    .line 1148
    invoke-static {v7, v9, v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-ne v13, v15, :cond_a

    invoke-static {v7, v9, v12}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v15, :cond_a

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "AND TABLE_NAME = ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1151
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1155
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "HAVING TABLE_TYPE IN (?,?,?,?,?) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1160
    .end local v0    # "sql":Ljava/lang/String;
    .local v7, "sql":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    move-object v10, v0

    .line 1162
    if-eqz v3, :cond_c

    .line 1163
    const/4 v0, 0x1

    invoke-interface {v10, v0, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_8

    .line 1165
    :cond_c
    const/4 v0, 0x1

    invoke-interface {v10, v0, v14}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1168
    :goto_8
    const/4 v0, 0x2

    invoke-interface {v10, v0, v9}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1171
    const/4 v0, 0x5

    if-eqz v2, :cond_10

    array-length v8, v2

    if-nez v8, :cond_d

    goto :goto_b

    .line 1177
    :cond_d
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    if-ge v8, v0, :cond_e

    .line 1178
    add-int/lit8 v12, v8, 0x3

    const/16 v13, 0xc

    invoke-interface {v10, v12, v13}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 1177
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1181
    .end local v8    # "i":I
    :cond_e
    const/4 v0, 0x3

    .line 1182
    .local v0, "idx":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    array-length v12, v2

    if-ge v8, v12, :cond_12

    .line 1183
    aget-object v12, v2, v8

    invoke-static {v12}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getTableTypeEqualTo(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v12

    .line 1184
    .local v12, "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    sget-object v13, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    if-eq v12, v13, :cond_f

    .line 1185
    add-int/lit8 v13, v0, 0x1

    .end local v0    # "idx":I
    .local v13, "idx":I
    invoke-virtual {v12}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v0, v14}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move v0, v13

    .line 1182
    .end local v12    # "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .end local v13    # "idx":I
    .restart local v0    # "idx":I
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1172
    .end local v0    # "idx":I
    .end local v8    # "i":I
    :cond_10
    :goto_b
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v8

    .line 1173
    .local v8, "tableTypes":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c
    if-ge v12, v0, :cond_11

    .line 1174
    add-int/lit8 v13, v12, 0x3

    aget-object v14, v8, v12

    invoke-virtual {v14}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1173
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 1176
    .end local v8    # "tableTypes":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .end local v12    # "i":I
    :cond_11
    nop

    .line 1190
    :cond_12
    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 1192
    .local v0, "rs":Ljava/sql/ResultSet;
    move-object v8, v0

    check-cast v8, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    nop

    .line 1196
    .end local v0    # "rs":Ljava/sql/ResultSet;
    if-eqz v10, :cond_13

    .line 1197
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V

    :cond_13
    move-object v8, v0

    .line 1194
    .local v8, "rs":Ljava/sql/ResultSet;
    return-object v0

    .line 1196
    .end local v8    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 1197
    if-eqz v10, :cond_14

    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V

    .line 1196
    :cond_14
    throw v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1209
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1210
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .end local p1    # "catalog":Ljava/lang/String;
    .local v3, "catalog":Ljava/lang/String;
    goto :goto_0

    .line 1215
    .end local v3    # "catalog":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p1

    .end local p1    # "catalog":Ljava/lang/String;
    .restart local v3    # "catalog":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_4

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT NULL AS SCOPE, COLUMN_NAME, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v4, "sqlBuf":Ljava/lang/StringBuilder;
    const-string v5, "DATA_TYPE"

    invoke-static {v4, v5}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1222
    const-string v6, " AS DATA_TYPE, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v6, "COLUMN_TYPE AS TYPE_NAME, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v6, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " AS BUFFER_LENGTH,NUMERIC_SCALE AS DECIMAL_DIGITS, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " AS PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND EXTRA LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const/4 v6, 0x0

    .line 1236
    .local v6, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    move-object v6, v8

    .line 1238
    if-eqz v3, :cond_1

    .line 1239
    invoke-interface {v6, v7, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 1241
    :cond_1
    const-string v8, "%"

    invoke-interface {v6, v7, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1244
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v6, v8, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1246
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v9

    .line 1247
    .local v9, "rs":Ljava/sql/ResultSet;
    move-object v10, v9

    check-cast v10, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/mysql/jdbc/Field;

    const/4 v12, 0x0

    new-instance v13, Lcom/mysql/jdbc/Field;

    const-string v14, "SCOPE"

    const/4 v15, 0x5

    invoke-direct {v13, v0, v14, v15, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v13, v11, v12

    new-instance v12, Lcom/mysql/jdbc/Field;

    const-string v13, "COLUMN_NAME"

    const/16 v14, 0x20

    invoke-direct {v12, v0, v13, v7, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v7

    new-instance v12, Lcom/mysql/jdbc/Field;

    const/4 v13, 0x4

    invoke-direct {v12, v0, v5, v13, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v12, v11, v8

    const/4 v5, 0x3

    new-instance v8, Lcom/mysql/jdbc/Field;

    const-string v12, "TYPE_NAME"

    const/16 v14, 0x10

    invoke-direct {v8, v0, v12, v7, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v8, v11, v5

    new-instance v5, Lcom/mysql/jdbc/Field;

    const-string v7, "COLUMN_SIZE"

    invoke-direct {v5, v0, v7, v13, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v5, v11, v13

    new-instance v5, Lcom/mysql/jdbc/Field;

    const-string v7, "BUFFER_LENGTH"

    invoke-direct {v5, v0, v7, v13, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v5, v11, v15

    const/4 v5, 0x6

    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v8, "DECIMAL_DIGITS"

    invoke-direct {v7, v0, v8, v15, v14}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v7, v11, v5

    const/4 v5, 0x7

    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v8, "PSEUDO_COLUMN"

    invoke-direct {v7, v0, v8, v15, v15}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v7, v11, v5

    invoke-interface {v10, v11}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    nop

    .line 1254
    .end local v9    # "rs":Ljava/sql/ResultSet;
    if-eqz v6, :cond_2

    .line 1255
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    move-object v0, v9

    .line 1252
    .local v0, "rs":Ljava/sql/ResultSet;
    return-object v9

    .line 1254
    .end local v0    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 1255
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V

    .line 1254
    :cond_3
    throw v0

    .line 1216
    .end local v4    # "sqlBuf":Ljava/lang/StringBuilder;
    .end local v6    # "pStmt":Ljava/sql/PreparedStatement;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v4, "Table not specified."

    const-string v5, "S1009"

    invoke-static {v4, v5, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public gethasParametersView()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    return v0
.end method
