.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
.source "JDBC4CallableStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/CallableStatement;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 66
    nop

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 66
    throw v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 532
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 535
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 538
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 549
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 555
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 569
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 572
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 586
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 589
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNClob(I)Ljava/sql/NClob;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 802
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 805
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object v0

    return-object v0

    .line 600
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 603
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 606
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 816
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 819
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 617
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 620
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 623
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRowId(I)Ljava/sql/RowId;

    move-result-object v0

    return-object v0

    .line 827
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 830
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 833
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object v0

    return-object v0

    .line 467
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 473
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 441
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 444
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 456
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 459
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    return v0

    .line 74
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 80
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

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    return v0

    .line 100
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 106
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

    .line 350
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 352
    .local v0, "isInstance":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 353
    return v1

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "interfaceClassName":Ljava/lang/String;
    const-string v3, "com.mysql.jdbc.Statement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "java.sql.Statement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
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

    .line 358
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

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    .line 250
    goto :goto_0

    .line 246
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 251
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

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    .line 214
    goto :goto_0

    .line 210
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 213
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 215
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 635
    goto :goto_0

    .line 631
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 634
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 636
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 647
    goto :goto_0

    .line 643
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 646
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 648
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

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 262
    goto :goto_0

    .line 258
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 263
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

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    .line 226
    goto :goto_0

    .line 222
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 225
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 227
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 659
    goto :goto_0

    .line 655
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 660
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 671
    goto :goto_0

    .line 667
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 670
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 672
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

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    .line 313
    goto :goto_0

    .line 309
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 314
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

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    .line 190
    goto :goto_0

    .line 186
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 189
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 191
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 683
    goto :goto_0

    .line 679
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 682
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 684
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 695
    goto :goto_0

    .line 691
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 694
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 696
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/sql/Blob;)V

    .line 707
    goto :goto_0

    .line 703
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Blob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Blob;
    :catch_0
    move-exception v0

    .line 706
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 708
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

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 274
    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 276
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

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 238
    goto :goto_0

    .line 234
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 237
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 239
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V

    .line 719
    goto :goto_0

    .line 715
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 720
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    .line 731
    goto :goto_0

    .line 727
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 730
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 732
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

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    .line 300
    goto :goto_0

    .line 296
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 302
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

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    .line 178
    goto :goto_0

    .line 174
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 177
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 179
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/io/Reader;)V

    .line 755
    goto :goto_0

    .line 751
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 754
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 756
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/io/Reader;J)V

    .line 767
    goto :goto_0

    .line 763
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 766
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 768
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/sql/Clob;)V

    .line 743
    goto :goto_0

    .line 739
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Clob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Clob;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 744
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

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 287
    goto :goto_0

    .line 283
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 289
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

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 166
    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 165
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 167
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V

    .line 779
    goto :goto_0

    .line 775
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 778
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 780
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    .line 791
    goto :goto_0

    .line 787
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 790
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 792
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

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    .line 325
    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 326
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

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    .line 202
    goto :goto_0

    .line 198
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 201
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 203
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

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    .line 130
    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/sql/NClob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/sql/NClob;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 131
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/io/Reader;)V

    .line 497
    goto :goto_0

    .line 493
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 498
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/io/Reader;J)V

    .line 509
    goto :goto_0

    .line 505
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :catch_0
    move-exception v0

    .line 508
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 510
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/sql/NClob;)V

    .line 485
    goto :goto_0

    .line 481
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "value":Ljava/sql/NClob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "value":Ljava/sql/NClob;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 486
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

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 154
    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "value":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 155
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    goto :goto_0

    .line 517
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 522
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

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    .line 92
    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "poolable":Z
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .restart local p1    # "poolable":Z
    :catch_0
    move-exception v0

    .line 91
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 93
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

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    .line 118
    goto :goto_0

    .line 114
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/RowId;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/RowId;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 119
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setRowId(Ljava/lang/String;Ljava/sql/RowId;)V

    .line 418
    goto :goto_0

    .line 414
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/RowId;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/RowId;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 419
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

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    .line 142
    goto :goto_0

    .line 138
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "xmlObject":Ljava/sql/SQLXML;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "xmlObject":Ljava/sql/SQLXML;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 143
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V

    .line 430
    goto :goto_0

    .line 426
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "xmlObject":Ljava/sql/SQLXML;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "xmlObject":Ljava/sql/SQLXML;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 431
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

    .line 383
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

    .line 384
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 392
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "cachedUnwrapped":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 395
    if-nez v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v3, p0, v4}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 398
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 385
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

    .line 382
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 404
    .restart local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v0

    .line 405
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

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method
