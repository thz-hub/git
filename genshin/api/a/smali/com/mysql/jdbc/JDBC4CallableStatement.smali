.class public Lcom/mysql/jdbc/JDBC4CallableStatement;
.super Lcom/mysql/jdbc/CallableStatement;
.source "JDBC4CallableStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "paramInfo"    # Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "isFunctionCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 160
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    .line 162
    .local v1, "retValue":Ljava/io/Reader;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 164
    return-object v1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 173
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 175
    .local v1, "retValue":Ljava/io/Reader;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 177
    return-object v1
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 186
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    .line 188
    .local v1, "retValue":Ljava/io/Reader;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 190
    return-object v1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 199
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 201
    .local v1, "retValue":Ljava/io/Reader;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 203
    return-object v1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 212
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v1

    .line 214
    .local v1, "retValue":Ljava/sql/NClob;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 216
    return-object v1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 225
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object v1

    .line 227
    .local v1, "retValue":Ljava/sql/NClob;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 229
    return-object v1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 238
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "retValue":Ljava/lang/String;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 242
    return-object v1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 251
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "retValue":Ljava/lang/String;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 255
    return-object v1
.end method

.method protected getParamTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "routineName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 50
    .local v0, "dbmd":Ljava/sql/DatabaseMetaData;
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->callingStoredFunction:Z

    const-string v2, "%"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0, p1, v3, p2, v2}, Ljava/sql/DatabaseMetaData;->getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v1

    .line 55
    .local v1, "getProcRetFuncsCurrentValue":Z
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 56
    invoke-interface {v0, p1, v3, p2, v2}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 56
    return-object v2

    .line 58
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 59
    throw v2
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 103
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v1

    .line 105
    .local v1, "retValue":Ljava/sql/RowId;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 107
    return-object v1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 113
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object v1

    .line 115
    .local v1, "retValue":Ljava/sql/RowId;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 117
    return-object v1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 82
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v1

    .line 84
    .local v1, "retValue":Ljava/sql/SQLXML;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 86
    return-object v1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 93
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object v1

    .line 95
    .local v1, "retValue":Ljava/sql/SQLXML;
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 97
    return-object v1
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 132
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    .line 133
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;)V

    .line 143
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;J)V

    .line 148
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    .line 138
    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNString(ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    .line 64
    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    .line 68
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    .line 72
    return-void
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    .line 77
    return-void
.end method
