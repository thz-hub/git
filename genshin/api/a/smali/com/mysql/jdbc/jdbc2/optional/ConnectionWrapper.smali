.class public Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.source "ConnectionWrapper.java"

# interfaces
.implements Lcom/mysql/jdbc/Connection;


# static fields
.field private static final JDBC_4_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private invalidHandleStr:Ljava/lang/String;

.field private isForXa:Z

.field protected mc:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4ConnectionWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->JDBC_4_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->JDBC_4_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 79
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 1
    .param p1, "mysqlPooledConnection"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p2, "mysqlConnection"    # Lcom/mysql/jdbc/Connection;
    .param p3, "forXa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    .line 56
    const-string v0, "Logical handle no longer valid"

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->invalidHandleStr:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->closed:Z

    .line 106
    iput-boolean p3, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isForXa:Z

    .line 108
    if-eqz p3, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->setInGlobalTx(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .locals 4
    .param p0, "mysqlPooledConnection"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p1, "mysqlConnection"    # Lcom/mysql/jdbc/Connection;
    .param p2, "forXa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->JDBC_4_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    return-object v0
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2733
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->abort(Ljava/util/concurrent/Executor;)V

    .line 2734
    return-void
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2769
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->abortInternal()V

    .line 2770
    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->changeUser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 809
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->closed:Z

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->invalidHandleStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearHasTriedMaster()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->clearHasTriedMaster()V

    .line 814
    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 422
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public clientPrepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 584
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2, p1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 589
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepare(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 596
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 601
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 825
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 835
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 845
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 857
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 867
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 877
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->close(Z)V

    .line 436
    return-void
.end method

.method protected close(Z)V
    .locals 4
    .param p1, "fireClosedEvent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->closed:Z

    if-eqz v1, :cond_0

    .line 764
    monitor-exit v0

    return-void

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getRollbackOnPooledClose()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->getAutoCommit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->rollback()V

    .line 771
    :cond_1
    if-eqz p1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->callConnectionEventListeners(ILjava/sql/SQLException;)V

    .line 777
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->closed:Z

    .line 778
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 448
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 458
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void

    .line 449
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t call commit() on an XAConnection associated with a global transaction"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 475
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 2
    .param p1, "resultSetType"    # I
    .param p2, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 493
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 508
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public exposeAsXml()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->exposeAsXml()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1066
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveStatementCount()I
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getActiveStatementCount()I

    move-result v0

    return v0
.end method

.method public getAllowLoadLocalInfile()Z
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowLoadLocalInfile()Z

    move-result v0

    return v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .line 2777
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowMasterDownConnections()Z

    move-result v0

    return v0
.end method

.method public getAllowMultiQueries()Z
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowMultiQueries()Z

    move-result v0

    return v0
.end method

.method public getAllowNanAndInf()Z
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowNanAndInf()Z

    move-result v0

    return v0
.end method

.method public getAllowPublicKeyRetrieval()Z
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    return v0
.end method

.method public getAllowSlaveDownConnections()Z
    .locals 1

    .line 2785
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowSlaveDownConnections()Z

    move-result v0

    return v0
.end method

.method public getAllowUrlInLocalInfile()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowUrlInLocalInfile()Z

    move-result v0

    return v0
.end method

.method public getAlwaysSendSetIsolation()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAlwaysSendSetIsolation()Z

    move-result v0

    return v0
.end method

.method public getAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoClosePStmtStreams()Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoClosePStmtStreams()Z

    move-result v0

    return v0
.end method

.method public getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 149
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoDeserialize()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoDeserialize()Z

    move-result v0

    return v0
.end method

.method public getAutoGenerateTestcaseScript()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    return v0
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoIncrementIncrement()I

    move-result v0

    return v0
.end method

.method public getAutoReconnectForPools()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoReconnectForPools()Z

    move-result v0

    return v0
.end method

.method public getAutoSlowLog()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAutoSlowLog()Z

    move-result v0

    return v0
.end method

.method public getBlobSendChunkSize()I
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getBlobSendChunkSize()I

    move-result v0

    return v0
.end method

.method public getBlobsAreStrings()Z
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getBlobsAreStrings()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStatements()Z
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCacheCallableStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStmts()Z
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCacheCallableStmts()Z

    move-result v0

    return v0
.end method

.method public getCacheDefaultTimezone()Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCacheDefaultTimezone()Z

    move-result v0

    return v0
.end method

.method public getCachePrepStmts()Z
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCachePrepStmts()Z

    move-result v0

    return v0
.end method

.method public getCachePreparedStatements()Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCachePreparedStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheResultSetMetadata()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCacheResultSetMetadata()Z

    move-result v0

    return v0
.end method

.method public getCacheServerConfiguration()Z
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCacheServerConfiguration()Z

    move-result v0

    return v0
.end method

.method public getCallableStatementCacheSize()I
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCallableStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getCallableStmtCacheSize()I
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCallableStmtCacheSize()I

    move-result v0

    return v0
.end method

.method public getCapitalizeTypeNames()Z
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCapitalizeTypeNames()Z

    move-result v0

    return v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 186
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterSetResults()Ljava/lang/String;
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClientCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClientCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClientCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProvider()Ljava/lang/String;
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobberStreamingResults()Z
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getClobberStreamingResults()Z

    move-result v0

    return v0
.end method

.method public getCompensateOnDuplicateKeyUpdateCounts()Z
    .locals 1

    .line 2486
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getConnectionAttributes()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2810
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCollation()Ljava/lang/String;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionCollation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionLifecycleInterceptors()Ljava/lang/String;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionLifecycleInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 1

    .line 2773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContinueBatchOnError()Z
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getContinueBatchOnError()Z

    move-result v0

    return v0
.end method

.method public getCreateDatabaseIfNotExist()Z
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    return v0
.end method

.method public getDefaultAuthenticationPlugin()Ljava/lang/String;
    .locals 1

    .line 2713
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDefaultAuthenticationPlugin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFetchSize()I
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDefaultFetchSize()I

    move-result v0

    return v0
.end method

.method public getDetectCustomCollations()Z
    .locals 1

    .line 2818
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDetectCustomCollations()Z

    move-result v0

    return v0
.end method

.method public getDisabledAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDisabledAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectOnExpiredPasswords()Z
    .locals 1

    .line 2757
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDisconnectOnExpiredPasswords()Z

    move-result v0

    return v0
.end method

.method public getDontCheckOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 2850
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    return v0
.end method

.method public getDontTrackOpenResources()Z
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDontTrackOpenResources()Z

    move-result v0

    return v0
.end method

.method public getDumpMetadataOnColumnNotFound()Z
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDumpMetadataOnColumnNotFound()Z

    move-result v0

    return v0
.end method

.method public getDumpQueriesOnException()Z
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDumpQueriesOnException()Z

    move-result v0

    return v0
.end method

.method public getDynamicCalendars()Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getDynamicCalendars()Z

    move-result v0

    return v0
.end method

.method public getElideSetAutoCommits()Z
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getElideSetAutoCommits()Z

    move-result v0

    return v0
.end method

.method public getEmptyStringsConvertToZero()Z
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEmptyStringsConvertToZero()Z

    move-result v0

    return v0
.end method

.method public getEmulateLocators()Z
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEmulateLocators()Z

    move-result v0

    return v0
.end method

.method public getEmulateUnsupportedPstmts()Z
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEmulateUnsupportedPstmts()Z

    move-result v0

    return v0
.end method

.method public getEnableEscapeProcessing()Z
    .locals 1

    .line 2894
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEnableEscapeProcessing()Z

    move-result v0

    return v0
.end method

.method public getEnablePacketDebug()Z
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEnablePacketDebug()Z

    move-result v0

    return v0
.end method

.method public getEnableQueryTimeouts()Z
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEnableQueryTimeouts()Z

    move-result v0

    return v0
.end method

.method public getEnabledSSLCipherSuites()Ljava/lang/String;
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEnabledSSLCipherSuites()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTLSProtocols()Ljava/lang/String;
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEnabledTLSProtocols()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 2546
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionInterceptors()Ljava/lang/String;
    .locals 1

    .line 2550
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplainSlowQueries()Z
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getExplainSlowQueries()Z

    move-result v0

    return v0
.end method

.method public getFailOverReadOnly()Z
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getFailOverReadOnly()Z

    move-result v0

    return v0
.end method

.method public getFunctionsNeverReturnBlobs()Z
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getFunctionsNeverReturnBlobs()Z

    move-result v0

    return v0
.end method

.method public getGatherPerfMetrics()Z
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getGatherPerfMetrics()Z

    move-result v0

    return v0
.end method

.method public getGatherPerformanceMetrics()Z
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getGatherPerformanceMetrics()Z

    move-result v0

    return v0
.end method

.method public getGenerateSimpleParameterMetadata()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getGenerateSimpleParameterMetadata()Z

    move-result v0

    return v0
.end method

.method public getGetProceduresReturnsFunctions()Z
    .locals 1

    .line 2765
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    return v0
.end method

.method public getHoldResultsOpenOverStatementClose()Z
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getHoldResultsOpenOverStatementClose()Z

    move-result v0

    return v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 228
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x1

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 2574
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleFor()J
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIdleFor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIgnoreNonTxTables()Z
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIgnoreNonTxTables()Z

    move-result v0

    return v0
.end method

.method public getIncludeInnodbStatusInDeadlockExceptions()Z
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIncludeInnodbStatusInDeadlockExceptions()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadDumpInDeadlockExceptions()Z
    .locals 1

    .line 2671
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIncludeThreadDumpInDeadlockExceptions()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadNamesAsStatementComment()Z
    .locals 1

    .line 2680
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIncludeThreadNamesAsStatementComment()Z

    move-result v0

    return v0
.end method

.method public getInitialTimeout()I
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getInitialTimeout()I

    move-result v0

    return v0
.end method

.method public getInteractiveClient()Z
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getInteractiveClient()Z

    move-result v0

    return v0
.end method

.method public getIsInteractiveClient()Z
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getIsInteractiveClient()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncation()Z
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getJdbcCompliantTruncation()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncationForReads()Z
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getJdbcCompliantTruncationForReads()Z

    move-result v0

    return v0
.end method

.method public getLargeRowSizeThreshold()Ljava/lang/String;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLargeRowSizeThreshold()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementThreshold()I
    .locals 1

    .line 2639
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceAutoCommitStatementThreshold()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceBlacklistTimeout()I
    .locals 1

    .line 2514
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceBlacklistTimeout()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceConnectionGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceEnableJMX()Z
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceEnableJMX()Z

    move-result v0

    return v0
.end method

.method public getLoadBalanceExceptionChecker()Ljava/lang/String;
    .locals 1

    .line 2598
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceExceptionChecker()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceHostRemovalGracePeriod()I
    .locals 1

    .line 2657
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceHostRemovalGracePeriod()I

    move-result v0

    return v0
.end method

.method public getLoadBalancePingTimeout()I
    .locals 1

    .line 2522
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalancePingTimeout()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
    .locals 1

    .line 2602
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSQLStateFailover()Ljava/lang/String;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceSQLStateFailover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceStrategy()Ljava/lang/String;
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceValidateConnectionOnSwapServer()Z
    .locals 1

    .line 2530
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoadBalanceValidateConnectionOnSwapServer()Z

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/lang/String;
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorFetchBufferSize()I
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLocatorFetchBufferSize()I

    move-result v0

    return v0
.end method

.method public getLog()Lcom/mysql/jdbc/log/Log;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    return-object v0
.end method

.method public getLogSlowQueries()Z
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLogSlowQueries()Z

    move-result v0

    return v0
.end method

.method public getLogXaCommands()Z
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLogXaCommands()Z

    move-result v0

    return v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLogger()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerClassName()Ljava/lang/String;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLoggerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainTimeStats()Z
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMaintainTimeStats()Z

    move-result v0

    return v0
.end method

.method public getMaxAllowedPacket()I
    .locals 1

    .line 2586
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMaxAllowedPacket()I

    move-result v0

    return v0
.end method

.method public getMaxQuerySizeToLog()I
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMaxQuerySizeToLog()I

    move-result v0

    return v0
.end method

.method public getMaxReconnects()I
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMaxReconnects()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMaxRows()I

    move-result v0

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 259
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadataCacheSize()I
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMetadataCacheSize()I

    move-result v0

    return v0
.end method

.method public getNetTimeoutForStreamingResults()I
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNetTimeoutForStreamingResults()I

    move-result v0

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2741
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNetworkTimeout()I

    move-result v0

    return v0
.end method

.method public getNoAccessToProcedureBodies()Z
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNoAccessToProcedureBodies()Z

    move-result v0

    return v0
.end method

.method public getNoDatetimeStringSync()Z
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNoDatetimeStringSync()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForDateType()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNoTimezoneConversionForDateType()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForTimeType()Z
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNoTimezoneConversionForTimeType()Z

    move-result v0

    return v0
.end method

.method public getNullCatalogMeansCurrent()Z
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNullCatalogMeansCurrent()Z

    move-result v0

    return v0
.end method

.method public getNullNamePatternMatchesAll()Z
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getNullNamePatternMatchesAll()Z

    move-result v0

    return v0
.end method

.method public getOverrideSupportsIntegrityEnhancementFacility()Z
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getOverrideSupportsIntegrityEnhancementFacility()Z

    move-result v0

    return v0
.end method

.method public getPacketDebugBufferSize()I
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPacketDebugBufferSize()I

    move-result v0

    return v0
.end method

.method public getPadCharsWithSpace()Z
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPadCharsWithSpace()Z

    move-result v0

    return v0
.end method

.method public getParanoid()Z
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getParanoid()Z

    move-result v0

    return v0
.end method

.method public getParseInfoCacheFactory()Ljava/lang/String;
    .locals 1

    .line 2721
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPedantic()Z
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPedantic()Z

    move-result v0

    return v0
.end method

.method public getPinGlobalTxToPhysicalConnection()Z
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    return v0
.end method

.method public getPopulateInsertRowWithDefaultValues()Z
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPopulateInsertRowWithDefaultValues()Z

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSize()I
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPrepStmtCacheSize()I

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSqlLimit()I
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPrepStmtCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSize()I
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPreparedStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSqlLimit()I
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPreparedStatementCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getProcessEscapeCodesForPrepStmts()Z
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getProfileSQL()Z
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getProfileSQL()Z

    move-result v0

    return v0
.end method

.method public getProfileSql()Z
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getProfileSql()Z

    move-result v0

    return v0
.end method

.method public getProfilerEventHandler()Ljava/lang/String;
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getProfilerEventHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 2570
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesTransform()Ljava/lang/String;
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPropertiesTransform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBeforeRetryMaster()I
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getQueriesBeforeRetryMaster()I

    move-result v0

    return v0
.end method

.method public getQueryTimeoutKillsConnection()Z
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getQueryTimeoutKillsConnection()Z

    move-result v0

    return v0
.end method

.method public getReadFromMasterWhenNoSlaves()Z
    .locals 1

    .line 2793
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getReadFromMasterWhenNoSlaves()Z

    move-result v0

    return v0
.end method

.method public getReadOnlyPropagatesToServer()Z
    .locals 1

    .line 2870
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getReadOnlyPropagatesToServer()Z

    move-result v0

    return v0
.end method

.method public getReconnectAtTxEnd()Z
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getReconnectAtTxEnd()Z

    move-result v0

    return v0
.end method

.method public getRelaxAutoCommit()Z
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRelaxAutoCommit()Z

    move-result v0

    return v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .line 2801
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getReplicationEnableJMX()Z

    move-result v0

    return v0
.end method

.method public getReportMetricsIntervalMillis()I
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getReportMetricsIntervalMillis()I

    move-result v0

    return v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRequireSSL()Z

    move-result v0

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getResourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetSizeThreshold()I
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getResultSetSizeThreshold()I

    move-result v0

    return v0
.end method

.method public getRetainStatementAfterResultSetClose()Z
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRetainStatementAfterResultSetClose()Z

    move-result v0

    return v0
.end method

.method public getRetriesAllDown()I
    .locals 1

    .line 2542
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRetriesAllDown()I

    move-result v0

    return v0
.end method

.method public getRewriteBatchedStatements()Z
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRewriteBatchedStatements()Z

    move-result v0

    return v0
.end method

.method public getRollbackOnPooledClose()Z
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRollbackOnPooledClose()Z

    move-result v0

    return v0
.end method

.method public getRoundRobinLoadBalance()Z
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRoundRobinLoadBalance()Z

    move-result v0

    return v0
.end method

.method public getRunningCTS13()Z
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getRunningCTS13()Z

    move-result v0

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2729
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSchema()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondsBeforeRetryMaster()I
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSecondsBeforeRetryMaster()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingMaxOperations()I
    .locals 1

    .line 2454
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSelfDestructOnPingMaxOperations()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingSecondsLifetime()I
    .locals 1

    .line 2458
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSelfDestructOnPingSecondsLifetime()I

    move-result v0

    return v0
.end method

.method public getSendFractionalSeconds()Z
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSendFractionalSeconds()Z

    move-result v0

    return v0
.end method

.method public getServerAffinityOrder()Ljava/lang/String;
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerAffinityOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 893
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfigCacheFactory()Ljava/lang/String;
    .locals 1

    .line 2749
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerConfigCacheFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerRSAPublicKeyFile()Ljava/lang/String;
    .locals 1

    .line 2830
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezone()Ljava/lang/String;
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerTimezone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSessionMaxRows()I

    move-result v0

    return v0
.end method

.method public getSessionVariables()Ljava/lang/String;
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowQueryThresholdMillis()I
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSlowQueryThresholdMillis()I

    move-result v0

    return v0
.end method

.method public getSlowQueryThresholdNanos()J
    .locals 2

    .line 1514
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSlowQueryThresholdNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSocketFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getSocksProxyHost()Ljava/lang/String;
    .locals 1

    .line 2858
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSocksProxyHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocksProxyPort()I
    .locals 1

    .line 2866
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSocksProxyPort()I

    move-result v0

    return v0
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatementInterceptors()Ljava/lang/String;
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getStatementInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrictFloatingPoint()Z
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getStrictFloatingPoint()Z

    move-result v0

    return v0
.end method

.method public getStrictUpdates()Z
    .locals 1

    .line 1538
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getStrictUpdates()Z

    move-result v0

    return v0
.end method

.method public getTcpKeepAlive()Z
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTcpKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTcpRcvBuf()I
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTcpRcvBuf()I

    move-result v0

    return v0
.end method

.method public getTcpSndBuf()I
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTcpSndBuf()I

    move-result v0

    return v0
.end method

.method public getTcpTrafficClass()I
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTcpTrafficClass()I

    move-result v0

    return v0
.end method

.method public getTinyInt1isBit()Z
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTinyInt1isBit()Z

    move-result v0

    return v0
.end method

.method public getTraceProtocol()Z
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTraceProtocol()Z

    move-result v0

    return v0
.end method

.method public getTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTransactionIsolation()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 367
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x4

    return v0
.end method

.method public getTransformedBitIsBoolean()Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTransformedBitIsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTreatUtilDateAsTimestamp()Z
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTreatUtilDateAsTimestamp()Z

    move-result v0

    return v0
.end method

.method public getTrustCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTrustCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTrustCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTrustCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getTypeMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 386
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUltraDevHack()Z
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUltraDevHack()Z

    move-result v0

    return v0
.end method

.method public getUseAffectedRows()Z
    .locals 1

    .line 2494
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseAffectedRows()Z

    move-result v0

    return v0
.end method

.method public getUseBlobToStoreUTF8OutsideBMP()Z
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseBlobToStoreUTF8OutsideBMP()Z

    move-result v0

    return v0
.end method

.method public getUseColumnNamesInFindColumn()Z
    .locals 1

    .line 2470
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseColumnNamesInFindColumn()Z

    move-result v0

    return v0
.end method

.method public getUseCompression()Z
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseCompression()Z

    move-result v0

    return v0
.end method

.method public getUseConfigs()Ljava/lang/String;
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseConfigs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCursorFetch()Z
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseCursorFetch()Z

    move-result v0

    return v0
.end method

.method public getUseDirectRowUnpack()Z
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseDirectRowUnpack()Z

    move-result v0

    return v0
.end method

.method public getUseDynamicCharsetInfo()Z
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseDynamicCharsetInfo()Z

    move-result v0

    return v0
.end method

.method public getUseFastDateParsing()Z
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseFastDateParsing()Z

    move-result v0

    return v0
.end method

.method public getUseFastIntParsing()Z
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseFastIntParsing()Z

    move-result v0

    return v0
.end method

.method public getUseGmtMillisForDatetimes()Z
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseGmtMillisForDatetimes()Z

    move-result v0

    return v0
.end method

.method public getUseHostsInPrivileges()Z
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseHostsInPrivileges()Z

    move-result v0

    return v0
.end method

.method public getUseInformationSchema()Z
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseInformationSchema()Z

    move-result v0

    return v0
.end method

.method public getUseJDBCCompliantTimezoneShift()Z
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    return v0
.end method

.method public getUseJvmCharsetConverters()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseJvmCharsetConverters()Z

    move-result v0

    return v0
.end method

.method public getUseLegacyDatetimeCode()Z
    .locals 1

    .line 2438
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseLegacyDatetimeCode()Z

    move-result v0

    return v0
.end method

.method public getUseLocalSessionState()Z
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseLocalSessionState()Z

    move-result v0

    return v0
.end method

.method public getUseLocalTransactionState()Z
    .locals 1

    .line 2478
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseLocalTransactionState()Z

    move-result v0

    return v0
.end method

.method public getUseNanosForElapsedTime()Z
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseNanosForElapsedTime()Z

    move-result v0

    return v0
.end method

.method public getUseOldAliasMetadataBehavior()Z
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseOldAliasMetadataBehavior()Z

    move-result v0

    return v0
.end method

.method public getUseOldUTF8Behavior()Z
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseOldUTF8Behavior()Z

    move-result v0

    return v0
.end method

.method public getUseOnlyServerErrorMessages()Z
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseOnlyServerErrorMessages()Z

    move-result v0

    return v0
.end method

.method public getUseReadAheadInput()Z
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseReadAheadInput()Z

    move-result v0

    return v0
.end method

.method public getUseSSL()Z
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseSSL()Z

    move-result v0

    return v0
.end method

.method public getUseSSPSCompatibleTimezoneShift()Z
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result v0

    return v0
.end method

.method public getUseServerPrepStmts()Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseServerPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getUseServerPreparedStmts()Z
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseServerPreparedStmts()Z

    move-result v0

    return v0
.end method

.method public getUseSqlStateCodes()Z
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseSqlStateCodes()Z

    move-result v0

    return v0
.end method

.method public getUseStreamLengthsInPrepStmts()Z
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseStreamLengthsInPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getUseTimezone()Z
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseTimezone()Z

    move-result v0

    return v0
.end method

.method public getUseUltraDevWorkAround()Z
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseUltraDevWorkAround()Z

    move-result v0

    return v0
.end method

.method public getUseUnbufferedInput()Z
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseUnbufferedInput()Z

    move-result v0

    return v0
.end method

.method public getUseUnicode()Z
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseUnicode()Z

    move-result v0

    return v0
.end method

.method public getUseUsageAdvisor()Z
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUseUsageAdvisor()Z

    move-result v0

    return v0
.end method

.method public getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyServerCertificate()Z
    .locals 1

    .line 2430
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getVerifyServerCertificate()Z

    move-result v0

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 404
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getYearIsDateType()Z
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getYearIsDateType()Z

    move-result v0

    return v0
.end method

.method public getZeroDateTimeBehavior()Ljava/lang/String;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/mysql/jdbc/Connection;

    .line 2566
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->hasSameProperties(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    return v0
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->hasTriedMaster()Z

    move-result v0

    return v0
.end method

.method public initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .param p1, "ex"    # Lcom/mysql/jdbc/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2418
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->initializeExtension(Lcom/mysql/jdbc/Extension;)V

    .line 2419
    return-void
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 1
    .param p1, "millisOrNanos"    # J

    .line 914
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->isAbonormallyLongQuery(J)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInGlobalTx()Z
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isInGlobalTx()Z

    move-result v0

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isMasterConnection()Z

    move-result v0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isNoBackslashEscapesSet()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 293
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 2
    .param p1, "c"    # Lcom/mysql/jdbc/Connection;

    .line 755
    instance-of v0, p1, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    move-object v1, p1

    check-cast v1, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    iget-object v1, v1, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    return v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    return v0
.end method

.method public isServerLocal()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2688
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isServerLocal()Z

    move-result v0

    return v0
.end method

.method public isUseSSLExplicit()Z
    .locals 1

    .line 2902
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isUseSSLExplicit()Z

    move-result v0

    return v0
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->lowerCaseTableNames()Z

    move-result v0

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 526
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->parserKnowsUnicode()Z

    move-result v0

    return v0
.end method

.method public ping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->ping()V

    .line 799
    :cond_0
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 544
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 562
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 577
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 613
    const/4 v0, 0x0

    .line 616
    .local v0, "res":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2, p1}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 621
    .end local v1    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 669
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 639
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 654
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 684
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 699
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1
    .param p1, "arg0"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->releaseSavepoint(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 713
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public reportQueryTime(J)V
    .locals 1
    .param p1, "millisOrNanos"    # J

    .line 930
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->reportQueryTime(J)V

    .line 931
    return-void
.end method

.method public resetServerState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->resetServerState()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 941
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 724
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 734
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void

    .line 725
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t call rollback() on an XAConnection associated with a global transaction"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 4
    .param p1, "arg0"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 742
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 752
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void

    .line 743
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t call rollback() on an XAConnection associated with a global transaction"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 952
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 962
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 972
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 984
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 994
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1004
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1730
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowLoadLocalInfile(Z)V

    .line 1731
    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1
    .param p1, "connectIfMasterDown"    # Z

    .line 2781
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowMasterDownConnections(Z)V

    .line 2782
    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1734
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowMultiQueries(Z)V

    .line 1735
    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1738
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowNanAndInf(Z)V

    .line 1739
    return-void
.end method

.method public setAllowPublicKeyRetrieval(Z)V
    .locals 1
    .param p1, "allowPublicKeyRetrieval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2842
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowPublicKeyRetrieval(Z)V

    .line 2843
    return-void
.end method

.method public setAllowSlaveDownConnections(Z)V
    .locals 1
    .param p1, "connectIfSlaveDown"    # Z

    .line 2789
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowSlaveDownConnections(Z)V

    .line 2790
    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1742
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAllowUrlInLocalInfile(Z)V

    .line 1743
    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1746
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAlwaysSendSetIsolation(Z)V

    .line 1747
    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "authenticationPlugins"    # Ljava/lang/String;

    .line 2692
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAuthenticationPlugins(Ljava/lang/String;)V

    .line 2693
    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1750
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoClosePStmtStreams(Z)V

    .line 1751
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 4
    .param p1, "autoCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 122
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t set autocommit to \'true\' on an XAConnection"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 128
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 132
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_1
    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1754
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoDeserialize(Z)V

    .line 1755
    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1758
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoGenerateTestcaseScript(Z)V

    .line 1759
    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1762
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoReconnect(Z)V

    .line 1763
    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1766
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoReconnectForConnectionPools(Z)V

    .line 1767
    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1770
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoReconnectForPools(Z)V

    .line 1771
    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1774
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setAutoSlowLog(Z)V

    .line 1775
    return-void
.end method

.method public setBlobSendChunkSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setBlobSendChunkSize(Ljava/lang/String;)V

    .line 1779
    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1782
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setBlobsAreStrings(Z)V

    .line 1783
    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1786
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCacheCallableStatements(Z)V

    .line 1787
    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1790
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCacheCallableStmts(Z)V

    .line 1791
    return-void
.end method

.method public setCacheDefaultTimezone(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2062
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCacheDefaultTimezone(Z)V

    .line 2063
    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1794
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCachePrepStmts(Z)V

    .line 1795
    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1798
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCachePreparedStatements(Z)V

    .line 1799
    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1802
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCacheResultSetMetadata(Z)V

    .line 1803
    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1806
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCacheServerConfiguration(Z)V

    .line 1807
    return-void
.end method

.method public setCallableStatementCacheSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCallableStatementCacheSize(I)V

    .line 1811
    return-void
.end method

.method public setCallableStmtCacheSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCallableStmtCacheSize(I)V

    .line 1815
    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1818
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCapitalizeDBMDTypes(Z)V

    .line 1819
    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1822
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCapitalizeTypeNames(Z)V

    .line 1823
    return-void
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 1
    .param p1, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCatalog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 166
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 1826
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCharacterEncoding(Ljava/lang/String;)V

    .line 1827
    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 1830
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCharacterSetResults(Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1834
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClientCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1838
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClientCertificateKeyStoreType(Ljava/lang/String;)V

    .line 1839
    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1842
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClientCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 1843
    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 1846
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClientInfoProvider(Ljava/lang/String;)V

    .line 1847
    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClobCharacterEncoding(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1854
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClobberStreamingResults(Z)V

    .line 1855
    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2490
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCompensateOnDuplicateKeyUpdateCounts(Z)V

    .line 2491
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setConnectTimeout(I)V

    .line 1859
    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 1
    .param p1, "collation"    # Ljava/lang/String;

    .line 1862
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setConnectionCollation(Ljava/lang/String;)V

    .line 1863
    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "interceptors"    # Ljava/lang/String;

    .line 1866
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setConnectionLifecycleInterceptors(Ljava/lang/String;)V

    .line 1867
    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1870
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setContinueBatchOnError(Z)V

    .line 1871
    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1874
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setCreateDatabaseIfNotExist(Z)V

    .line 1875
    return-void
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultAuthenticationPlugin"    # Ljava/lang/String;

    .line 2708
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDefaultAuthenticationPlugin(Ljava/lang/String;)V

    .line 2710
    return-void
.end method

.method public setDefaultFetchSize(I)V
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDefaultFetchSize(I)V

    .line 1879
    return-void
.end method

.method public setDetectCustomCollations(Z)V
    .locals 1
    .param p1, "detectCustomCollations"    # Z

    .line 2814
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDetectCustomCollations(Z)V

    .line 2815
    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1882
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDetectServerPreparedStmts(Z)V

    .line 1883
    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledAuthenticationPlugins"    # Ljava/lang/String;

    .line 2700
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDisabledAuthenticationPlugins(Ljava/lang/String;)V

    .line 2701
    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 1
    .param p1, "disconnectOnExpiredPasswords"    # Z

    .line 2753
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDisconnectOnExpiredPasswords(Z)V

    .line 2754
    return-void
.end method

.method public setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
    .locals 1
    .param p1, "dontCheckOnDuplicateKeyUpdateInSQL"    # Z

    .line 2846
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDontCheckOnDuplicateKeyUpdateInSQL(Z)V

    .line 2847
    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1886
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDontTrackOpenResources(Z)V

    .line 1887
    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1890
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDumpMetadataOnColumnNotFound(Z)V

    .line 1891
    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1894
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDumpQueriesOnException(Z)V

    .line 1895
    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1898
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setDynamicCalendars(Z)V

    .line 1899
    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1902
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setElideSetAutoCommits(Z)V

    .line 1903
    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1906
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEmptyStringsConvertToZero(Z)V

    .line 1907
    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1910
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEmulateLocators(Z)V

    .line 1911
    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1914
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEmulateUnsupportedPstmts(Z)V

    .line 1915
    return-void
.end method

.method public setEnableEscapeProcessing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2898
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEnableEscapeProcessing(Z)V

    .line 2899
    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1918
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEnablePacketDebug(Z)V

    .line 1919
    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1922
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEnableQueryTimeouts(Z)V

    .line 1923
    return-void
.end method

.method public setEnabledSSLCipherSuites(Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 2882
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEnabledSSLCipherSuites(Ljava/lang/String;)V

    .line 2883
    return-void
.end method

.method public setEnabledTLSProtocols(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # Ljava/lang/String;

    .line 2890
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEnabledTLSProtocols(Ljava/lang/String;)V

    .line 2891
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1926
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setEncoding(Ljava/lang/String;)V

    .line 1927
    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionInterceptors"    # Ljava/lang/String;

    .line 2554
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setExceptionInterceptors(Ljava/lang/String;)V

    .line 2555
    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1930
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setExplainSlowQueries(Z)V

    .line 1931
    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1934
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setFailOverReadOnly(Z)V

    .line 1935
    return-void
.end method

.method public setFailedOver(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1008
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setFailedOver(Z)V

    .line 1010
    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1938
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setFunctionsNeverReturnBlobs(Z)V

    .line 1939
    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1942
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setGatherPerfMetrics(Z)V

    .line 1943
    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1946
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setGatherPerformanceMetrics(Z)V

    .line 1947
    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1950
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setGenerateSimpleParameterMetadata(Z)V

    .line 1951
    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 1
    .param p1, "getProcedureReturnsFunctions"    # Z

    .line 2761
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setGetProceduresReturnsFunctions(Z)V

    .line 2762
    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1954
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setHoldResultsOpenOverStatementClose(Z)V

    .line 1955
    return-void
.end method

.method public setHoldability(I)V
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setHoldability(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 214
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1958
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setIgnoreNonTxTables(Z)V

    .line 1959
    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 792
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 793
    return-void
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1962
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setIncludeInnodbStatusInDeadlockExceptions(Z)V

    .line 1963
    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2675
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setIncludeThreadDumpInDeadlockExceptions(Z)V

    .line 2677
    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2684
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setIncludeThreadNamesAsStatementComment(Z)V

    .line 2685
    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setInitialTimeout(I)V

    .line 1967
    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1970
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setInteractiveClient(Z)V

    .line 1971
    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1974
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setIsInteractiveClient(Z)V

    .line 1975
    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1978
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setJdbcCompliantTruncation(Z)V

    .line 1979
    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 1
    .param p1, "jdbcCompliantTruncationForReads"    # Z

    .line 1982
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setJdbcCompliantTruncationForReads(Z)V

    .line 1983
    return-void
.end method

.method public setLargeRowSizeThreshold(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLargeRowSizeThreshold(Ljava/lang/String;)V

    .line 1987
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceAutoCommitStatementRegex"    # Ljava/lang/String;

    .line 2643
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V

    .line 2645
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementThreshold(I)V
    .locals 1
    .param p1, "loadBalanceAutoCommitStatementThreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2648
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceAutoCommitStatementThreshold(I)V

    .line 2650
    return-void
.end method

.method public setLoadBalanceBlacklistTimeout(I)V
    .locals 1
    .param p1, "loadBalanceBlacklistTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2518
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceBlacklistTimeout(I)V

    .line 2519
    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceConnectionGroup"    # Ljava/lang/String;

    .line 2610
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceConnectionGroup(Ljava/lang/String;)V

    .line 2612
    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 1
    .param p1, "loadBalanceEnableJMX"    # Z

    .line 2615
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceEnableJMX(Z)V

    .line 2617
    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceExceptionChecker"    # Ljava/lang/String;

    .line 2620
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceExceptionChecker(Ljava/lang/String;)V

    .line 2622
    return-void
.end method

.method public setLoadBalanceHostRemovalGracePeriod(I)V
    .locals 1
    .param p1, "loadBalanceHostRemovalGracePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceHostRemovalGracePeriod(I)V

    .line 2654
    return-void
.end method

.method public setLoadBalancePingTimeout(I)V
    .locals 1
    .param p1, "loadBalancePingTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2526
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalancePingTimeout(I)V

    .line 2527
    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLExceptionSubclassFailover"    # Ljava/lang/String;

    .line 2625
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V

    .line 2627
    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLStateFailover"    # Ljava/lang/String;

    .line 2630
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceSQLStateFailover(Ljava/lang/String;)V

    .line 2632
    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1, "strategy"    # Ljava/lang/String;

    .line 1990
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceStrategy(Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 1
    .param p1, "loadBalanceValidateConnectionOnSwapServer"    # Z

    .line 2534
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoadBalanceValidateConnectionOnSwapServer(Z)V

    .line 2535
    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 1998
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLocalSocketAddress(Ljava/lang/String;)V

    .line 1999
    return-void
.end method

.method public setLocatorFetchBufferSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLocatorFetchBufferSize(Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2006
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLogSlowQueries(Z)V

    .line 2007
    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2010
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLogXaCommands(Z)V

    .line 2011
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 2014
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLogger(Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 2018
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setLoggerClassName(Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2022
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setMaintainTimeStats(Z)V

    .line 2023
    return-void
.end method

.method public setMaxQuerySizeToLog(I)V
    .locals 1
    .param p1, "sizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2026
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setMaxQuerySizeToLog(I)V

    .line 2027
    return-void
.end method

.method public setMaxReconnects(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2030
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setMaxReconnects(I)V

    .line 2031
    return-void
.end method

.method public setMaxRows(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2034
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setMaxRows(I)V

    .line 2035
    return-void
.end method

.method public setMetadataCacheSize(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2038
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setMetadataCacheSize(I)V

    .line 2039
    return-void
.end method

.method public setNetTimeoutForStreamingResults(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNetTimeoutForStreamingResults(I)V

    .line 2043
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "milliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2737
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->setNetworkTimeout(Ljava/util/concurrent/Executor;I)V

    .line 2738
    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2046
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNoAccessToProcedureBodies(Z)V

    .line 2047
    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2050
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNoDatetimeStringSync(Z)V

    .line 2051
    return-void
.end method

.method public setNoTimezoneConversionForDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2058
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNoTimezoneConversionForDateType(Z)V

    .line 2059
    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2054
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNoTimezoneConversionForTimeType(Z)V

    .line 2055
    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2066
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNullCatalogMeansCurrent(Z)V

    .line 2067
    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2070
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setNullNamePatternMatchesAll(Z)V

    .line 2071
    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2074
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setOverrideSupportsIntegrityEnhancementFacility(Z)V

    .line 2075
    return-void
.end method

.method public setPacketDebugBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2078
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPacketDebugBufferSize(I)V

    .line 2079
    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2082
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPadCharsWithSpace(Z)V

    .line 2083
    return-void
.end method

.method public setParanoid(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2086
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setParanoid(Z)V

    .line 2087
    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 2717
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setParseInfoCacheFactory(Ljava/lang/String;)V

    .line 2718
    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 2506
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPasswordCharacterEncoding(Ljava/lang/String;)V

    .line 2507
    return-void
.end method

.method public setPedantic(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2090
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPedantic(Z)V

    .line 2091
    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2094
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPinGlobalTxToPhysicalConnection(Z)V

    .line 2095
    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2098
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPopulateInsertRowWithDefaultValues(Z)V

    .line 2099
    return-void
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPreferSlaveDuringFailover(Z)V

    .line 1015
    return-void
.end method

.method public setPrepStmtCacheSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2102
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPrepStmtCacheSize(I)V

    .line 2103
    return-void
.end method

.method public setPrepStmtCacheSqlLimit(I)V
    .locals 1
    .param p1, "sqlLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2106
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPrepStmtCacheSqlLimit(I)V

    .line 2107
    return-void
.end method

.method public setPreparedStatementCacheSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPreparedStatementCacheSize(I)V

    .line 2111
    return-void
.end method

.method public setPreparedStatementCacheSqlLimit(I)V
    .locals 1
    .param p1, "cacheSqlLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2114
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPreparedStatementCacheSqlLimit(I)V

    .line 2115
    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2118
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setProcessEscapeCodesForPrepStmts(Z)V

    .line 2119
    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2122
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setProfileSQL(Z)V

    .line 2123
    return-void
.end method

.method public setProfileSql(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2126
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setProfileSql(Z)V

    .line 2127
    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Ljava/lang/String;

    .line 2426
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setProfilerEventHandler(Ljava/lang/String;)V

    .line 2427
    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2130
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setPropertiesTransform(Ljava/lang/String;)V

    .line 2131
    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 2578
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 2579
    return-void
.end method

.method public setQueriesBeforeRetryMaster(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2134
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setQueriesBeforeRetryMaster(I)V

    .line 2135
    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 1
    .param p1, "queryTimeoutKillsConnection"    # Z

    .line 2562
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setQueryTimeoutKillsConnection(Z)V

    .line 2563
    return-void
.end method

.method public setReadFromMasterWhenNoSlaves(Z)V
    .locals 1
    .param p1, "useMasterIfSlavesDown"    # Z

    .line 2797
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReadFromMasterWhenNoSlaves(Z)V

    .line 2798
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 276
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setReadOnlyPropagatesToServer(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2874
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReadOnlyPropagatesToServer(Z)V

    .line 2875
    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2138
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReconnectAtTxEnd(Z)V

    .line 2139
    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2142
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRelaxAutoCommit(Z)V

    .line 2143
    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1
    .param p1, "replicationEnableJMX"    # Z

    .line 2805
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReplicationEnableJMX(Z)V

    .line 2807
    return-void
.end method

.method public setReportMetricsIntervalMillis(I)V
    .locals 1
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2146
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setReportMetricsIntervalMillis(I)V

    .line 2147
    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2150
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRequireSSL(Z)V

    .line 2151
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 2154
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setResourceId(Ljava/lang/String;)V

    .line 2155
    return-void
.end method

.method public setResultSetSizeThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setResultSetSizeThreshold(I)V

    .line 2159
    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2162
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRetainStatementAfterResultSetClose(Z)V

    .line 2163
    return-void
.end method

.method public setRetriesAllDown(I)V
    .locals 1
    .param p1, "retriesAllDown"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2538
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRetriesAllDown(I)V

    .line 2539
    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2166
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRewriteBatchedStatements(Z)V

    .line 2167
    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2170
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRollbackOnPooledClose(Z)V

    .line 2171
    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2174
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRoundRobinLoadBalance(Z)V

    .line 2175
    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2178
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setRunningCTS13(Z)V

    .line 2179
    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 302
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->setSavepoint()Ljava/sql/Savepoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 313
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t set autocommit to \'true\' on an XAConnection"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 322
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->isInGlobalTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 333
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    const/16 v0, 0x579

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Can\'t set autocommit to \'true\' on an XAConnection"

    const-string v3, "2D000"

    invoke-static {v2, v3, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSchema(Ljava/lang/String;)V

    .line 2726
    return-void
.end method

.method public setSecondsBeforeRetryMaster(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2182
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSecondsBeforeRetryMaster(I)V

    .line 2183
    return-void
.end method

.method public setSelfDestructOnPingMaxOperations(I)V
    .locals 1
    .param p1, "maxOperations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2462
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSelfDestructOnPingMaxOperations(I)V

    .line 2463
    return-void
.end method

.method public setSelfDestructOnPingSecondsLifetime(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2466
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSelfDestructOnPingSecondsLifetime(I)V

    .line 2467
    return-void
.end method

.method public setSendFractionalSeconds(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2450
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSendFractionalSeconds(Z)V

    .line 2451
    return-void
.end method

.method public setServerAffinityOrder(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostsList"    # Ljava/lang/String;

    .line 1994
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setServerAffinityOrder(Ljava/lang/String;)V

    .line 1995
    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 2745
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setServerConfigCacheFactory(Ljava/lang/String;)V

    .line 2746
    return-void
.end method

.method public setServerRSAPublicKeyFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverRSAPublicKeyFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setServerRSAPublicKeyFile(Ljava/lang/String;)V

    .line 2835
    return-void
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 2186
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setServerTimezone(Ljava/lang/String;)V

    .line 2187
    return-void
.end method

.method public setSessionMaxRows(I)V
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2826
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSessionMaxRows(I)V

    .line 2827
    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 1
    .param p1, "variables"    # Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSessionVariables(Ljava/lang/String;)V

    .line 2191
    return-void
.end method

.method public setSlowQueryThresholdMillis(I)V
    .locals 1
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2194
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSlowQueryThresholdMillis(I)V

    .line 2195
    return-void
.end method

.method public setSlowQueryThresholdNanos(J)V
    .locals 1
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->setSlowQueryThresholdNanos(J)V

    .line 2199
    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2202
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSocketFactory(Ljava/lang/String;)V

    .line 2203
    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 2206
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 2207
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2210
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSocketTimeout(I)V

    .line 2211
    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "socksProxyHost"    # Ljava/lang/String;

    .line 2854
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSocksProxyHost(Ljava/lang/String;)V

    .line 2855
    return-void
.end method

.method public setSocksProxyPort(I)V
    .locals 1
    .param p1, "socksProxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2862
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSocksProxyPort(I)V

    .line 2863
    return-void
.end method

.method public setStatementComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStatementComment(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2214
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStatementInterceptors(Ljava/lang/String;)V

    .line 2215
    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2218
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStrictFloatingPoint(Z)V

    .line 2219
    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2222
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStrictUpdates(Z)V

    .line 2223
    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2226
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTcpKeepAlive(Z)V

    .line 2227
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2230
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTcpNoDelay(Z)V

    .line 2231
    return-void
.end method

.method public setTcpRcvBuf(I)V
    .locals 1
    .param p1, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2234
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTcpRcvBuf(I)V

    .line 2235
    return-void
.end method

.method public setTcpSndBuf(I)V
    .locals 1
    .param p1, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2238
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTcpSndBuf(I)V

    .line 2239
    return-void
.end method

.method public setTcpTrafficClass(I)V
    .locals 1
    .param p1, "classFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2242
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTcpTrafficClass(I)V

    .line 2243
    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2246
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTinyInt1isBit(Z)V

    .line 2247
    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2250
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTraceProtocol(Z)V

    .line 2251
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTransactionIsolation(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 350
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2254
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTransformedBitIsBoolean(Z)V

    .line 2255
    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2258
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTreatUtilDateAsTimestamp(Z)V

    .line 2259
    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2262
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTrustCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 2263
    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2266
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTrustCertificateKeyStoreType(Ljava/lang/String;)V

    .line 2267
    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2270
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 2271
    return-void
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2661
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 2664
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setTypeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2667
    goto :goto_0

    .line 2665
    :catch_0
    move-exception v0

    .line 2666
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 2668
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2274
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUltraDevHack(Z)V

    .line 2275
    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2498
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseAffectedRows(Z)V

    .line 2499
    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2278
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseBlobToStoreUTF8OutsideBMP(Z)V

    .line 2279
    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2474
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseColumnNamesInFindColumn(Z)V

    .line 2475
    return-void
.end method

.method public setUseCompression(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2282
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseCompression(Z)V

    .line 2283
    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 1
    .param p1, "configs"    # Ljava/lang/String;

    .line 2286
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseConfigs(Ljava/lang/String;)V

    .line 2287
    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2290
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseCursorFetch(Z)V

    .line 2291
    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2294
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseDirectRowUnpack(Z)V

    .line 2295
    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2298
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseDynamicCharsetInfo(Z)V

    .line 2299
    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2302
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseFastDateParsing(Z)V

    .line 2303
    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2306
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseFastIntParsing(Z)V

    .line 2307
    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2310
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseGmtMillisForDatetimes(Z)V

    .line 2311
    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2314
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseHostsInPrivileges(Z)V

    .line 2315
    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2318
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseInformationSchema(Z)V

    .line 2319
    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2322
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseJDBCCompliantTimezoneShift(Z)V

    .line 2323
    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseJvmCharsetConverters(Z)V

    .line 2327
    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2442
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseLegacyDatetimeCode(Z)V

    .line 2443
    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2330
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 2331
    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2482
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseLocalTransactionState(Z)V

    .line 2483
    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2334
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseNanosForElapsedTime(Z)V

    .line 2335
    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseOldAliasMetadataBehavior(Z)V

    .line 2339
    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2342
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseOldUTF8Behavior(Z)V

    .line 2343
    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2346
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseOnlyServerErrorMessages(Z)V

    .line 2347
    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2350
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseReadAheadInput(Z)V

    .line 2351
    return-void
.end method

.method public setUseSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2354
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseSSL(Z)V

    .line 2355
    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2358
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseSSPSCompatibleTimezoneShift(Z)V

    .line 2359
    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2362
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseServerPrepStmts(Z)V

    .line 2363
    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2366
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseServerPreparedStmts(Z)V

    .line 2367
    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2370
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseSqlStateCodes(Z)V

    .line 2371
    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2374
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseStreamLengthsInPrepStmts(Z)V

    .line 2375
    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2378
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseTimezone(Z)V

    .line 2379
    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2382
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseUltraDevWorkAround(Z)V

    .line 2383
    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2386
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseUnbufferedInput(Z)V

    .line 2387
    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2390
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseUnicode(Z)V

    .line 2391
    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 1
    .param p1, "useUsageAdvisorFlag"    # Z

    .line 2394
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUseUsageAdvisor(Z)V

    .line 2395
    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 2398
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V

    .line 2399
    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 2402
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V

    .line 2403
    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2434
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setVerifyServerCertificate(Z)V

    .line 2435
    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2406
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setYearIsDateType(Z)V

    .line 2407
    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 1
    .param p1, "behavior"    # Ljava/lang/String;

    .line 2410
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setZeroDateTimeBehavior(Ljava/lang/String;)V

    .line 2411
    return-void
.end method

.method public shutdownServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->shutdownServer()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    goto :goto_0

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1031
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->supportsIsolationLevel()Z

    move-result v0

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->supportsQuotedIdentifiers()Z

    move-result v0

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->supportsTransactions()Z

    move-result v0

    return v0
.end method

.method public useUnbufferedInput()Z
    .locals 1

    .line 2414
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->useUnbufferedInput()Z

    move-result v0

    return v0
.end method

.method public versionMeetsMinimum(III)Z
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "subminor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkClosed()V

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1054
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method
