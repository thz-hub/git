.class public Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;
.super Lcom/mysql/jdbc/MultiHostMySQLConnection;
.source "JDBC4MultiHostMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4MySQLConnection;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/mysql/jdbc/MultiHostConnectionProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    .line 46
    return-void
.end method

.method private getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v0, Lcom/mysql/jdbc/JDBC4Connection;

    return-object v0
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

    .line 57
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4Connection;->createBlob()Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4Connection;->createClob()Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4Connection;->createNClob()Ljava/sql/NClob;

    move-result-object v0

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4Connection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0

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

    .line 61
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object v0

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

    .line 69
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

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

    .line 65
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4Connection;->isValid(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 87
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->checkClosed()V

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4Connection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/JDBC4Connection;->setClientInfo(Ljava/util/Properties;)V

    .line 80
    return-void
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

    .line 96
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MultiHostMySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
