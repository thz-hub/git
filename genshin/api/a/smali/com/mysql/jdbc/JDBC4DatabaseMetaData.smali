.class public Lcom/mysql/jdbc/JDBC4DatabaseMetaData;
.super Lcom/mysql/jdbc/DatabaseMetaData;
.source "JDBC4DatabaseMetaData.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connToSet"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "databaseToSet"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected static getProcedureOrFunctionColumnType(ZZZZ)I
    .locals 1
    .param p0, "isOutParam"    # Z
    .param p1, "isInParam"    # Z
    .param p2, "isReturnParam"    # Z
    .param p3, "forGetFunctionColumns"    # Z

    .line 159
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 160
    const/4 v0, 0x2

    return v0

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_1
    const/4 v0, 0x4

    if-eqz p0, :cond_3

    .line 164
    if-eqz p3, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0

    .line 165
    :cond_3
    if-eqz p2, :cond_5

    .line 166
    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 168
    :cond_5
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method protected getColumnType(ZZZZ)I
    .locals 1
    .param p1, "isOutParam"    # Z
    .param p2, "isInParam"    # Z
    .param p3, "isReturnParam"    # Z
    .param p4, "forGetFunctionColumns"    # Z

    .line 140
    invoke-static {p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumnType(ZZZZ)I

    move-result v0

    return v0
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v8

    .line 108
    .local v8, "fields":[Lcom/mysql/jdbc/Field;
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 109
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v7

    .line 108
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v7

    .line 122
    .local v7, "fields":[Lcom/mysql/jdbc/Field;
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 42
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unwrap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 89
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    .line 88
    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
