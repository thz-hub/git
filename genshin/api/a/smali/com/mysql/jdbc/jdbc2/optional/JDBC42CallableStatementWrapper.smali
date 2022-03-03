.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
.source "JDBC42CallableStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/CallableStatement;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    .line 37
    return-void
.end method


# virtual methods
.method public registerOutParameter(ILjava/sql/SQLType;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;)V

    .line 55
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 56
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;I)V

    .line 75
    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    .end local p3    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    .restart local p3    # "scale":I
    :catch_0
    move-exception v0

    .line 74
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 76
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V

    .line 95
    goto :goto_0

    .line 91
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 96
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V

    .line 114
    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 115
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V

    .line 134
    goto :goto_0

    .line 130
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    .end local p3    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    .restart local p3    # "scale":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 135
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # Ljava/sql/SQLType;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V

    .line 154
    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":Ljava/sql/SQLType;
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":Ljava/sql/SQLType;
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 155
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V

    .line 174
    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":Ljava/sql/SQLType;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":Ljava/sql/SQLType;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 175
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V

    .line 195
    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":Ljava/sql/SQLType;
    .end local p4    # "scaleOrLength":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":Ljava/sql/SQLType;
    .restart local p4    # "scaleOrLength":I
    :catch_0
    move-exception v0

    .line 194
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 196
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V

    .line 215
    goto :goto_0

    .line 211
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":Ljava/sql/SQLType;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":Ljava/sql/SQLType;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 216
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V

    .line 236
    goto :goto_0

    .line 232
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":Ljava/sql/SQLType;
    .end local p4    # "scaleOrLength":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":Ljava/sql/SQLType;
    .restart local p4    # "scaleOrLength":I
    :catch_0
    move-exception v0

    .line 235
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 237
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method
