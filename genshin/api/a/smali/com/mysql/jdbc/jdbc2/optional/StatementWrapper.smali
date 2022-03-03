.class public Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.source "StatementWrapper.java"

# interfaces
.implements Ljava/sql/Statement;


# static fields
.field private static final JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

.field protected wrappedStmt:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4StatementWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Statement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 48
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 58
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/Statement;

    .line 73
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;)V

    .line 74
    iput-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 75
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    .line 76
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
    .locals 3
    .param p0, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p1, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p2, "toWrap"    # Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    return-object v0
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p1}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 385
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 395
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0}, Ljava/sql/Statement;->clearBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 405
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0}, Ljava/sql/Statement;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 415
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    nop

    .line 428
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 426
    nop

    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 427
    goto :goto_1

    .line 425
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "sqlEx":Ljava/sql/SQLException;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    nop

    .line 426
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    goto :goto_0

    .line 428
    :goto_1
    return-void

    .line 426
    :goto_2
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 425
    throw v1
.end method

.method public enableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 575
    check-cast v0, Lcom/mysql/jdbc/Statement;

    invoke-interface {v0}, Lcom/mysql/jdbc/Statement;->enableStreamingResults()V

    .line 581
    goto :goto_0

    .line 577
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 582
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 478
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .restart local p1    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 483
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 433
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 436
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "autoGeneratedKeys":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "autoGeneratedKeys":I
    :catch_0
    move-exception v0

    .line 438
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 441
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[I)Z

    move-result v0

    return v0

    .line 450
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnIndexes":[I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnIndexes":[I
    :catch_0
    move-exception v0

    .line 452
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 455
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 464
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 469
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public executeBatch()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 497
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public executeLargeBatch()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 591
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->executeLargeBatch()[J

    move-result-object v0

    return-object v0

    .line 594
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 599
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 609
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 612
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .restart local p1    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 617
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 627
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    .line 630
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "autoGeneratedKeys":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "autoGeneratedKeys":I
    :catch_0
    move-exception v0

    .line 632
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 635
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 645
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide v0

    return-wide v0

    .line 648
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnIndexes":[I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnIndexes":[I
    :catch_0
    move-exception v0

    .line 650
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 653
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 663
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 666
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 671
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 506
    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v0, v1

    .line 507
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V

    .line 511
    goto :goto_0

    .line 504
    :cond_0
    const-string v1, "Statement already closed"

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v0    # "rs":Ljava/sql/ResultSet;
    .end local p1    # "sql":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .restart local v0    # "rs":Ljava/sql/ResultSet;
    .restart local p1    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 513
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-object v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 564
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .restart local p1    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 569
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 522
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "autoGeneratedKeys":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "autoGeneratedKeys":I
    :catch_0
    move-exception v0

    .line 524
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 527
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[I)I

    move-result v0

    return v0

    .line 536
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnIndexes":[I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnIndexes":[I
    :catch_0
    move-exception v0

    .line 538
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 541
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 550
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "columnNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 555
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    return-object v0

    .line 84
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 89
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/sql/Statement;->getFetchDirection()I

    move-result v0

    return v0

    .line 134
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 139
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v0

    return v0

    .line 160
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 165
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 179
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLargeMaxRows()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 681
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeMaxRows()J

    move-result-wide v0

    return-wide v0

    .line 684
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 689
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLargeUpdateCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 699
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    return-wide v0

    .line 702
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 707
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMaxFieldSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/sql/Statement;->getMaxFieldSize()I

    move-result v0

    return v0

    .line 200
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 205
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    return v0

    .line 226
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 231
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v0

    return v0

    .line 240
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 245
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 3
    .param p1, "current"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Ljava/sql/Statement;->getMoreResults(I)Z

    move-result v0

    return v0

    .line 254
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "current":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .restart local p1    # "current":I
    :catch_0
    move-exception v0

    .line 256
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 259
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getQueryTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/sql/Statement;->getQueryTimeout()I

    move-result v0

    return v0

    .line 280
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 285
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 293
    .local v0, "rs":Ljava/sql/ResultSet;
    if-eqz v0, :cond_0

    .line 294
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V

    .line 296
    :cond_0
    return-object v0

    .line 299
    .end local v0    # "rs":Ljava/sql/ResultSet;
    :cond_1
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 304
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultSetConcurrency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v0

    return v0

    .line 313
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 318
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetHoldability()I

    move-result v0

    return v0

    .line 327
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 332
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x1

    return v0
.end method

.method public getResultSetType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v0

    return v0

    .line 341
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 346
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/16 v0, 0x3eb

    return v0
.end method

.method public getUpdateCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v0

    return v0

    .line 355
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 360
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, -0x1

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 374
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setCursorName(Ljava/lang/String;)V

    .line 101
    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 102
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 113
    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "enable":Z
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .restart local p1    # "enable":Z
    :catch_0
    move-exception v0

    .line 112
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 114
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setFetchDirection(I)V
    .locals 3
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchDirection(I)V

    .line 125
    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "direction":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .restart local p1    # "direction":I
    :catch_0
    move-exception v0

    .line 124
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 126
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setFetchSize(I)V
    .locals 3
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchSize(I)V

    .line 151
    goto :goto_0

    .line 147
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "rows":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .restart local p1    # "rows":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 152
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setLargeMaxRows(J)V
    .locals 3
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 717
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    .line 723
    goto :goto_0

    .line 719
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "max":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .restart local p1    # "max":J
    :catch_0
    move-exception v0

    .line 722
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 724
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxFieldSize(I)V

    .line 191
    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "max":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .restart local p1    # "max":I
    :catch_0
    move-exception v0

    .line 190
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 192
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 217
    goto :goto_0

    .line 213
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "max":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .restart local p1    # "max":I
    :catch_0
    move-exception v0

    .line 216
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 218
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 3
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p1}, Ljava/sql/Statement;->setQueryTimeout(I)V

    .line 271
    goto :goto_0

    .line 267
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "seconds":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .restart local p1    # "seconds":I
    :catch_0
    move-exception v0

    .line 270
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 272
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method
