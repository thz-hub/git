.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.super Ljava/lang/Object;
.source "MysqlPooledConnection.java"

# interfaces
.implements Ljavax/sql/PooledConnection;


# static fields
.field public static final CONNECTION_CLOSED_EVENT:I = 0x2

.field public static final CONNECTION_ERROR_EVENT:I = 0x1

.field private static final JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private connectionEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/sql/ConnectionEventListener;",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private logicalHandle:Ljava/sql/Connection;

.field private physicalConn:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4MysqlPooledConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 64
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->logicalHandle:Ljava/sql/Connection;

    .line 101
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 104
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .locals 3
    .param p0, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1
    .param p1, "connectioneventlistener"    # Ljavax/sql/ConnectionEventListener;

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "connectioneventlistener":Ljavax/sql/ConnectionEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized callConnectionEventListeners(ILjava/sql/SQLException;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "sqlException"    # Ljava/sql/SQLException;

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 211
    monitor-exit p0

    return-void

    .line 214
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavax/sql/ConnectionEventListener;Ljavax/sql/ConnectionEventListener;>;>;"
    new-instance v1, Ljavax/sql/ConnectionEvent;

    invoke-direct {v1, p0, p2}, Ljavax/sql/ConnectionEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/SQLException;)V

    .line 218
    .local v1, "connectionevent":Ljavax/sql/ConnectionEvent;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/ConnectionEventListener;

    .line 222
    .local v2, "connectioneventlistener":Ljavax/sql/ConnectionEventListener;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 223
    invoke-interface {v2, v1}, Ljavax/sql/ConnectionEventListener;->connectionClosed(Ljavax/sql/ConnectionEvent;)V

    goto :goto_1

    .line 224
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 225
    invoke-interface {v2, v1}, Ljavax/sql/ConnectionEventListener;->connectionErrorOccurred(Ljavax/sql/ConnectionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v2    # "connectioneventlistener":Ljavax/sql/ConnectionEventListener;
    :cond_2
    :goto_1
    goto :goto_0

    .line 228
    :cond_3
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavax/sql/ConnectionEventListener;Ljavax/sql/ConnectionEventListener;>;>;"
    .end local v1    # "connectionevent":Ljavax/sql/ConnectionEvent;
    .end local p1    # "eventType":I
    .end local p2    # "sqlException":Ljava/sql/SQLException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V

    .line 185
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    .line 188
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getConnection(ZZ)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 141
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getConnection(ZZ)Ljava/sql/Connection;
    .locals 3
    .param p1, "resetServerState"    # Z
    .param p2, "forXa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->logicalHandle:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 157
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->close(Z)V

    .line 160
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->resetServerState()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->physicalConn:Lcom/mysql/jdbc/Connection;

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->getInstance(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->logicalHandle:Ljava/sql/Connection;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    nop

    .line 171
    monitor-exit p0

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "sqlException":Ljava/sql/SQLException;
    :try_start_2
    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->callConnectionEventListeners(ILjava/sql/SQLException;)V

    .line 168
    throw v0

    .line 148
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :cond_2
    const-string v0, "Physical Connection doesn\'t exist"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 149
    .restart local v0    # "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->callConnectionEventListeners(ILjava/sql/SQLException;)V

    .line 151
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    .end local p1    # "resetServerState":Z
    .end local p2    # "forXa":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public declared-synchronized removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1
    .param p1, "connectioneventlistener"    # Ljavax/sql/ConnectionEventListener;

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->connectionEventListeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    .end local p1    # "connectioneventlistener":Ljavax/sql/ConnectionEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
