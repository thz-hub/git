.class public Lcom/mysql/jdbc/JDBC4Connection;
.super Lcom/mysql/jdbc/ConnectionImpl;
.source "JDBC4Connection.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4MySQLConnection;


# static fields
.field private static final serialVersionUID:J = 0x27eed4e755fd1763L


# instance fields
.field private infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostToConnectTo"    # Ljava/lang/String;
    .param p2, "portToConnectTo"    # I
    .param p3, "info"    # Ljava/util/Properties;
    .param p4, "databaseToConnectTo"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 2

    .line 197
    new-instance v0, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Blob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 2

    .line 204
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Clob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 2

    .line 211
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->getClientInfo(Ljava/sql/Connection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->getClientInfo(Ljava/sql/Connection;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 219
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    .line 219
    invoke-static {v2, v3, v4, v5}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iput-object v2, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    goto :goto_1

    .line 221
    :catch_1
    move-exception v2

    .line 222
    .local v2, "sqlEx":Ljava/sql/SQLException;
    :try_start_2
    invoke-virtual {v2}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/ClassCastException;

    if-eqz v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.mysql.jdbc."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    .line 224
    invoke-static {v3, v4, v5, v6}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iput-object v3, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    :goto_0
    nop

    .line 233
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4Connection;->props:Ljava/util/Properties;

    invoke-interface {v1, p0, v2}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->initialize(Ljava/sql/Connection;Ljava/util/Properties;)V

    goto :goto_2

    .line 229
    .local v2, "cce":Ljava/lang/ClassCastException;
    :goto_1
    const-string v3, "JDBC4Connection.ClientInfoNotImplemented"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    .line 230
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    .line 229
    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 236
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    monitor-exit v0

    return-object v1

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public isValid(I)Z
    .locals 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->isClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return v2

    .line 99
    :cond_0
    mul-int/lit16 v1, p1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/JDBC4Connection;->pingInternal(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    nop

    .line 112
    nop

    .line 114
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v1

    .line 100
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->abortInternal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    goto :goto_0

    .line 103
    :catchall_1
    move-exception v3

    .line 107
    :goto_0
    :try_start_4
    monitor-exit v0

    return v2

    .line 115
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
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

    .line 162
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->checkClosed()V

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLClientInfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 142
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 138
    .local v1, "clientInfoEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    throw v1

    .line 134
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "clientInfoEx":Ljava/sql/SQLClientInfoException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "ciEx":Ljava/sql/SQLClientInfoException;
    throw v0
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 2
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->setClientInfo(Ljava/sql/Connection;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/sql/SQLClientInfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 125
    .local v1, "clientInfoEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 127
    throw v1

    .line 121
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "clientInfoEx":Ljava/sql/SQLClientInfoException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "ciEx":Ljava/sql/SQLClientInfoException;
    throw v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    .line 187
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unwrap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
