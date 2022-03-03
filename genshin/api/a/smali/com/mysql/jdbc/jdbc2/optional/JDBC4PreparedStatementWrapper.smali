.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "JDBC4PreparedStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/PreparedStatement;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 70
    .local v0, "con":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    const/4 v1, 0x0

    :try_start_2
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    :try_start_3
    new-instance v2, Ljavax/sql/StatementEvent;

    invoke-direct {v2, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    .local v2, "e":Ljavax/sql/StatementEvent;
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 76
    :try_start_4
    move-object v3, v0

    check-cast v3, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 83
    .end local v2    # "e":Ljavax/sql/StatementEvent;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 77
    .restart local v2    # "e":Ljavax/sql/StatementEvent;
    :cond_1
    :try_start_5
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 78
    :try_start_6
    move-object v3, v0

    check-cast v3, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 79
    :cond_2
    :try_start_7
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_3

    .line 80
    :try_start_8
    move-object v3, v0

    check-cast v3, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 83
    .end local v2    # "e":Ljavax/sql/StatementEvent;
    :cond_3
    :goto_0
    :try_start_9
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 84
    nop

    .line 85
    nop

    .line 86
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
    :catchall_1
    move-exception v2

    :goto_1
    :try_start_a
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 84
    :goto_2
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 72
    :catchall_2
    move-exception v2

    .line 73
    :try_start_b
    new-instance v3, Ljavax/sql/StatementEvent;

    invoke-direct {v3, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    .local v3, "e":Ljavax/sql/StatementEvent;
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    if-nez v4, :cond_5

    .line 77
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    if-nez v4, :cond_4

    .line 79
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    if-eqz v4, :cond_6

    .line 80
    move-object v4, v0

    check-cast v4, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_3

    .line 78
    :cond_4
    move-object v4, v0

    check-cast v4, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_3

    .line 76
    :cond_5
    move-object v4, v0

    check-cast v4, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 83
    .end local v3    # "e":Ljavax/sql/StatementEvent;
    :cond_6
    :goto_3
    :try_start_c
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 84
    nop

    .line 85
    throw v2

    .line 83
    :catchall_3
    move-exception v2

    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2

    .line 61
    .end local v0    # "con":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    return v0

    .line 93
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 99
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    return v0

    .line 119
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 125
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 4
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

    .line 369
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 371
    .local v0, "isInstance":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 372
    return v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "interfaceClassName":Ljava/lang/String;
    const-string v3, "com.mysql.jdbc.Statement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "java.sql.Statement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    const-string v3, "java.sql.PreparedStatement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "java.sql.Wrapper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 377
    :goto_1
    return v1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    .line 269
    goto :goto_0

    .line 265
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 270
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    .line 233
    goto :goto_0

    .line 229
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 232
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 234
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 281
    goto :goto_0

    .line 277
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 282
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    .line 245
    goto :goto_0

    .line 241
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 244
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 246
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    .line 332
    goto :goto_0

    .line 328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 333
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    .line 209
    goto :goto_0

    .line 205
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 208
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 210
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 293
    goto :goto_0

    .line 289
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 295
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 257
    goto :goto_0

    .line 253
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 256
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 258
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    .line 319
    goto :goto_0

    .line 315
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 321
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    .line 197
    goto :goto_0

    .line 193
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 196
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 198
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 306
    goto :goto_0

    .line 302
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 308
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 185
    goto :goto_0

    .line 181
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 184
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 186
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    .line 344
    goto :goto_0

    .line 340
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 345
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    .line 221
    goto :goto_0

    .line 217
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 220
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 222
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    .line 149
    goto :goto_0

    .line 145
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/sql/NClob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/sql/NClob;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 150
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 173
    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 174
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setPoolable(Z)V
    .locals 3
    .param p1, "poolable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    .line 111
    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "poolable":Z
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .restart local p1    # "poolable":Z
    :catch_0
    move-exception v0

    .line 110
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 112
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    .line 137
    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/RowId;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/RowId;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 138
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    .line 161
    goto :goto_0

    .line 157
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "xmlObject":Ljava/sql/SQLXML;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "xmlObject":Ljava/sql/SQLXML;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 162
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public declared-synchronized unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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

    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 402
    :try_start_0
    const-string v0, "java.sql.Statement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.PreparedStatement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.Wrapper.class"

    .line 403
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 411
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "cachedUnwrapped":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 414
    if-nez v0, :cond_2

    .line 415
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v3, p0, v4}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 417
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 404
    .end local v0    # "cachedUnwrapped":Ljava/lang/Object;
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 401
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 423
    .restart local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v0

    .line 424
    .local v0, "cce":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unwrap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method
