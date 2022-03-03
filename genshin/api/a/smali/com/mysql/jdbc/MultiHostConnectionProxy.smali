.class public abstract Lcom/mysql/jdbc/MultiHostConnectionProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_ABORT:Ljava/lang/String; = "abort"

.field private static final METHOD_ABORT_INTERNAL:Ljava/lang/String; = "abortInternal"

.field private static final METHOD_CLOSE:Ljava/lang/String; = "close"

.field private static final METHOD_EQUALS:Ljava/lang/String; = "equals"

.field private static final METHOD_GET_AUTO_COMMIT:Ljava/lang/String; = "getAutoCommit"

.field private static final METHOD_GET_CATALOG:Ljava/lang/String; = "getCatalog"

.field private static final METHOD_GET_MULTI_HOST_SAFE_PROXY:Ljava/lang/String; = "getMultiHostSafeProxy"

.field private static final METHOD_GET_SESSION_MAX_ROWS:Ljava/lang/String; = "getSessionMaxRows"

.field private static final METHOD_GET_TRANSACTION_ISOLATION:Ljava/lang/String; = "getTransactionIsolation"

.field private static final METHOD_HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final METHOD_IS_CLOSED:Ljava/lang/String; = "isClosed"


# instance fields
.field autoReconnect:Z

.field closedExplicitly:Z

.field closedReason:Ljava/lang/String;

.field currentConnection:Lcom/mysql/jdbc/MySQLConnection;

.field hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isClosed:Z

.field protected lastExceptionDealtWith:Ljava/lang/Throwable;

.field localProps:Ljava/util/Properties;

.field proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

.field thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4MultiHostMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 59
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 61
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 63
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 64
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z

    .line 65
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 126
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 0
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    .line 140
    return-void
.end method


# virtual methods
.method protected allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 492
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "getAutoCommit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getCatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getTransactionIsolation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getSessionMaxRows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 8
    .param p1, "hostPortSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 326
    .local v0, "connProps":Ljava/util/Properties;
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "hostPortPair":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 328
    .local v2, "hostName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 329
    .local v3, "portNumber":Ljava/lang/String;
    const-string v4, "DBNAME"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "dbName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 334
    if-nez v3, :cond_0

    .line 335
    const-string v5, "3306"

    move-object v3, v5

    .line 338
    .end local p0    # "this":Lcom/mysql/jdbc/MultiHostConnectionProxy;
    :cond_0
    const-string v5, "HOST"

    invoke-virtual {v0, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    const-string v5, "PORT"

    invoke-virtual {v0, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v5, "HOST.1"

    invoke-virtual {v0, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v5, "PORT.1"

    invoke-virtual {v0, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    const-string v5, "NUM_HOSTS"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v5, "roundRobinLoadBalance"

    const-string v6, "false"

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jdbc:mysql://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v0, v4, v6}, Lcom/mysql/jdbc/ConnectionImpl;->getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl;

    .line 348
    .local v5, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-object v5

    .line 332
    .end local v5    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "Could not find a hostname to start a connection to"

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v0    # "connProps":Ljava/util/Properties;
    .end local v1    # "hostPortPair":[Ljava/lang/String;
    .end local v2    # "hostName":Ljava/lang/String;
    .end local v3    # "portNumber":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local p1    # "hostPortSpec":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/reflect/InvocationTargetException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 263
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 264
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateCurrentConnection()V

    .line 266
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->pickNewConnection()V

    .line 267
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 269
    :cond_0
    throw v0

    .line 271
    :cond_1
    throw p1
.end method

.method abstract doAbort(Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doAbortInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .param p1, "toProxy"    # Ljava/lang/Object;

    .line 251
    new-instance v0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    return-object v0

    .line 181
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method protected getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    :goto_0
    return-object v0
.end method

.method initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I
    .locals 5
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")I"
        }
    .end annotation

    .line 154
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "autoReconnect"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "autoReconnectForPools"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    .line 156
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->hostList:Ljava/util/List;

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    .local v0, "numHosts":I
    invoke-virtual {p2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    .line 160
    const-string v2, "HOST"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "PORT"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOST."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PORT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "NUM_HOSTS"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return v0
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 302
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 301
    .end local p0    # "this":Lcom/mysql/jdbc/MultiHostConnectionProxy;
    .end local p1    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 305
    .restart local p1    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 307
    :cond_1
    :goto_1
    nop

    .line 308
    :goto_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized invalidateCurrentConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Lcom/mysql/jdbc/MultiHostConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "getMultiHostSafeProxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 431
    .end local p0    # "this":Lcom/mysql/jdbc/MultiHostConnectionProxy;
    :cond_0
    :try_start_1
    const-string v1, "equals"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 433
    aget-object v1, p3, v2

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 436
    :cond_1
    :try_start_2
    const-string v1, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 440
    :cond_2
    :try_start_3
    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doClose()V

    .line 442
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 443
    const-string v1, "Connection explicitly closed."

    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 444
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    monitor-exit p0

    return-object v3

    .line 448
    :cond_3
    :try_start_4
    const-string v1, "abortInternal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbortInternal()V

    .line 450
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V

    .line 451
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 452
    const-string v1, "Connection explicitly closed."

    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 453
    monitor-exit p0

    return-object v3

    .line 456
    :cond_4
    :try_start_5
    const-string v1, "abort"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, p3

    if-ne v1, v4, :cond_5

    .line 457
    aget-object v1, p3, v2

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbort(Ljava/util/concurrent/Executor;)V

    .line 458
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 459
    const-string v1, "Connection explicitly closed."

    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 460
    monitor-exit p0

    return-object v3

    .line 463
    :cond_5
    :try_start_6
    const-string v1, "isClosed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iget-boolean v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v1

    .line 468
    :cond_6
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v1

    .line 471
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 474
    .local v2, "declaredException":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/Class;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 475
    .local v6, "declEx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 474
    .end local v6    # "declEx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 476
    .restart local v6    # "declEx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    throw v1

    .line 479
    .end local v3    # "arr$":[Ljava/lang/Class;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v6    # "declEx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "declaredException":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v2, v1

    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 424
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method abstract isMasterConnection()Z
.end method

.method abstract pickNewConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "proxyConn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 220
    return-void
.end method

.method proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "toProxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 233
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 234
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 236
    .local v0, "toProxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 239
    .end local v0    # "toProxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object p2
.end method

.method protected final setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 0
    .param p1, "proxyConn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 207
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 209
    return-void
.end method

.method abstract shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V
    .locals 2
    .param p1, "source"    # Lcom/mysql/jdbc/Connection;
    .param p2, "target"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 362
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getUseLocalSessionState()Z

    move-result v0

    .line 367
    .local v0, "prevUseLocalSessionState":Z
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 368
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->isReadOnly()Z

    move-result v1

    .line 369
    .local v1, "readOnly":Z
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 371
    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 372
    return-void

    .line 363
    .end local v0    # "prevUseLocalSessionState":Z
    .end local v1    # "readOnly":Z
    :cond_1
    :goto_0
    return-void
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 2
    .param p1, "source"    # Lcom/mysql/jdbc/Connection;
    .param p2, "target"    # Lcom/mysql/jdbc/Connection;
    .param p3, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 385
    if-eqz p2, :cond_0

    .line 386
    invoke-interface {p2, p3}, Lcom/mysql/jdbc/Connection;->setReadOnly(Z)V

    .line 389
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getUseLocalSessionState()Z

    move-result v0

    .line 394
    .local v0, "prevUseLocalSessionState":Z
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 396
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getAutoCommit()Z

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setAutoCommit(Z)V

    .line 397
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setCatalog(Ljava/lang/String;)V

    .line 398
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getTransactionIsolation()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setTransactionIsolation(I)V

    .line 399
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getSessionMaxRows()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setSessionMaxRows(I)V

    .line 401
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 402
    return-void

    .line 390
    .end local v0    # "prevUseLocalSessionState":Z
    :cond_2
    :goto_0
    return-void
.end method
