.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
.source "JDBC4ConnectionWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 0
    .param p1, "mysqlPooledConnection"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p2, "mysqlConnection"    # Lcom/mysql/jdbc/Connection;
    .param p3, "forXa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V

    .line 65
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

    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 72
    throw v1
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 96
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createBlob()Ljava/sql/Blob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 288
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createClob()Ljava/sql/Clob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 303
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createNClob()Ljava/sql/NClob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 318
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 84
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

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

    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 108
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 132
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "sqlException":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 120
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isValid(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isValid(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 158
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;
    .end local p1    # "timeout":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 160
    .restart local p1    # "timeout":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "sqlException":Ljava/sql/SQLException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 158
    .end local p1    # "timeout":I
    :goto_0
    monitor-exit p0

    throw p1
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

    .line 222
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    .local v0, "isInstance":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 227
    return v1

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mysql.jdbc.Connection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mysql.jdbc.ConnectionProperties"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "sqlException":Ljava/sql/SQLException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    nop

    .line 199
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void

    .line 192
    .restart local v0    # "sqlException":Ljava/sql/SQLException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "sqlEx2":Ljava/sql/SQLException;
    new-instance v2, Ljava/sql/SQLClientInfoException;

    invoke-direct {v2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 194
    .local v2, "clientEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 196
    throw v2
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 3
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setClientInfo(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "sqlException":Ljava/sql/SQLException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    nop

    .line 182
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :goto_0
    return-void

    .line 175
    .restart local v0    # "sqlException":Ljava/sql/SQLException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "sqlEx2":Ljava/sql/SQLException;
    new-instance v2, Ljava/sql/SQLClientInfoException;

    invoke-direct {v2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 177
    .local v2, "clientEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    throw v2
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

    .line 254
    :try_start_0
    const-string v0, "java.sql.Connection"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "java.sql.Wrapper.class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 262
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "cachedUnwrapped":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 265
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-direct {v3, p0, v4}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 267
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 255
    .end local v0    # "cachedUnwrapped":Ljava/lang/Object;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 271
    .restart local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v0

    .line 272
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

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local p1    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method
