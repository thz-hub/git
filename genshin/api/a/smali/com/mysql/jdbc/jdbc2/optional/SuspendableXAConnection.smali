.class public Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.source "SuspendableXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/transaction/xa/Xid;",
            "Ljavax/sql/XAConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentXAConnection:Ljavax/sql/XAConnection;

.field private currentXAResource:Ljavax/transaction/xa/XAResource;

.field private currentXid:Ljavax/transaction/xa/Xid;

.field private underlyingConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4SuspendableXAConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
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

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 74
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;

    .line 70
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 71
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    .line 72
    return-void
.end method

.method private static declared-synchronized findConnectionForXid(Lcom/mysql/jdbc/Connection;Ljavax/transaction/xa/Xid;)Ljavax/sql/XAConnection;
    .locals 5
    .param p0, "connectionToWrap"    # Lcom/mysql/jdbc/Connection;
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/XAConnection;

    .line 90
    .local v2, "conn":Ljavax/sql/XAConnection;
    if-nez v2, :cond_0

    .line 91
    new-instance v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getLogXaCommands()Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    move-object v2, v3

    .line 92
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v0

    return-object v2

    .line 87
    .end local v2    # "conn":Ljavax/sql/XAConnection;
    .end local p0    # "connectionToWrap":Lcom/mysql/jdbc/Connection;
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
    .locals 3
    .param p0, "mysqlConnection"    # Lcom/mysql/jdbc/Connection;
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
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    return-object v0
.end method

.method private static declared-synchronized removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .param p0, "xid"    # Ljavax/transaction/xa/Xid;

    const-class v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-void

    .line 98
    .end local p0    # "xid":Ljavax/transaction/xa/Xid;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized switchToXid(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    if-eqz p1, :cond_1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->findConnectionForXid(Lcom/mysql/jdbc/Connection;Ljavax/transaction/xa/Xid;)Ljavax/sql/XAConnection;

    move-result-object v0

    .line 110
    .local v0, "toSwitchTo":Ljavax/sql/XAConnection;
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    .line 111
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    .line 112
    invoke-interface {v0}, Ljavax/sql/XAConnection;->getXAResource()Ljavax/transaction/xa/XAResource;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "toSwitchTo":Ljavax/sql/XAConnection;
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
    :cond_0
    nop

    .line 117
    monitor-exit p0

    return-void

    .line 102
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 114
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_1
    new-instance v1, Ljavax/transaction/xa/XAException;

    invoke-direct {v1}, Ljavax/transaction/xa/XAException;-><init>()V

    throw v1

    .line 104
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_1
    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-direct {v0}, Ljavax/transaction/xa/XAException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->close()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 199
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    invoke-interface {v0}, Ljavax/sql/XAConnection;->close()V

    .line 201
    :goto_0
    return-void
.end method

.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "arg1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->commit(Ljavax/transaction/xa/Xid;Z)V

    .line 126
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 127
    return-void
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->end(Ljavax/transaction/xa/Xid;I)V

    .line 132
    return-void
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->forget(Ljavax/transaction/xa/Xid;)V

    .line 138
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 139
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->getConnection(ZZ)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljavax/sql/XAConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 1
    .param p1, "xaRes"    # Ljavax/transaction/xa/XAResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 146
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->prepare(Ljavax/transaction/xa/Xid;)I

    move-result v0

    return v0
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->rollback(Ljavax/transaction/xa/Xid;)V

    .line 161
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 162
    return-void
.end method

.method public setTransactionTimeout(I)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 171
    const/high16 v0, 0x200000

    if-eq p2, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->start(Ljavax/transaction/xa/Xid;I)V

    .line 174
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    const/high16 v1, 0x8000000

    invoke-interface {v0, p1, v1}, Ljavax/transaction/xa/XAResource;->start(Ljavax/transaction/xa/Xid;I)V

    .line 182
    return-void
.end method
