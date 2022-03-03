.class public Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.source "PreparedStatementWrapper.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# static fields
.field private static final JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42PreparedStatementWrapper"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4PreparedStatementWrapper"

    .line 59
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/sql/PreparedStatement;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "jdbc4ClassName":Ljava/lang/String;
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 71
    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/PreparedStatement;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    .line 84
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
    .locals 3
    .param p0, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p1, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p2, "toWrap"    # Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    return-object v0
.end method


# virtual methods
.method public addBatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 494
    goto :goto_0

    .line 490
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 495
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 506
    goto :goto_0

    .line 502
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 507
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v0

    return v0

    .line 515
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 520
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public executeLargeUpdate()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    return-wide v0

    .line 918
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 923
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v1, Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    move-object v0, v1

    .line 531
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V

    .line 535
    goto :goto_0

    .line 528
    :cond_0
    const-string v1, "No operations allowed after statement closed"

    const-string v2, "S1000"

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v0    # "rs":Ljava/sql/ResultSet;
    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .restart local v0    # "rs":Ljava/sql/ResultSet;
    :catch_0
    move-exception v1

    .line 534
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 537
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-object v0
.end method

.method public executeUpdate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    return v0

    .line 546
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 551
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 289
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 363
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setArray(ILjava/sql/Array;)V

    .line 95
    goto :goto_0

    .line 91
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Array;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Array;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 96
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 107
    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 106
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 108
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 119
    goto :goto_0

    .line 115
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/math/BigDecimal;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 120
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 131
    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 130
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 132
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    .line 143
    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Blob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Blob;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 144
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBoolean(IZ)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 155
    goto :goto_0

    .line 151
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Z
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Z
    :catch_0
    move-exception v0

    .line 154
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 156
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setByte(IB)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setByte(IB)V

    .line 167
    goto :goto_0

    .line 163
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":B
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":B
    :catch_0
    move-exception v0

    .line 166
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 168
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBytes(I[B)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 179
    goto :goto_0

    .line 175
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":[B
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":[B
    :catch_0
    move-exception v0

    .line 178
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 180
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 191
    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 190
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 192
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    .line 203
    goto :goto_0

    .line 199
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Clob;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Clob;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 204
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 215
    goto :goto_0

    .line 211
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Date;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Date;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 216
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 227
    goto :goto_0

    .line 223
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Date;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Date;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 228
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 239
    goto :goto_0

    .line 235
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":D
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":D
    :catch_0
    move-exception v0

    .line 238
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 240
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    .line 251
    goto :goto_0

    .line 247
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":F
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":F
    :catch_0
    move-exception v0

    .line 250
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 252
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setInt(II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 263
    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":I
    :catch_0
    move-exception v0

    .line 262
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 264
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setLong(IJ)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 275
    goto :goto_0

    .line 271
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":J
    :catch_0
    move-exception v0

    .line 274
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 276
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNull(II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 301
    goto :goto_0

    .line 297
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":I
    :catch_0
    move-exception v0

    .line 300
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 302
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(IILjava/lang/String;)V

    .line 313
    goto :goto_0

    .line 309
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":I
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":I
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 314
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 325
    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 326
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 337
    goto :goto_0

    .line 333
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    :catch_0
    move-exception v0

    .line 336
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 338
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 349
    goto :goto_0

    .line 345
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 350
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRef(ILjava/sql/Ref;)V

    .line 375
    goto :goto_0

    .line 371
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Ref;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Ref;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 376
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setShort(IS)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    .line 387
    goto :goto_0

    .line 383
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":S
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":S
    :catch_0
    move-exception v0

    .line 386
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 388
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 399
    goto :goto_0

    .line 395
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 400
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 411
    goto :goto_0

    .line 407
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Time;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Time;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 412
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    .line 423
    goto :goto_0

    .line 419
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Time;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Time;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 424
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 435
    goto :goto_0

    .line 431
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Timestamp;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Timestamp;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 436
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 447
    goto :goto_0

    .line 443
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Timestamp;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Timestamp;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 448
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setURL(ILjava/net/URL;)V

    .line 459
    goto :goto_0

    .line 455
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/net/URL;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 460
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

    .line 482
    goto :goto_0

    .line 478
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 481
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 483
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 559
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "sqlEx":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
