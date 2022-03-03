.class public Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
.super Ljava/lang/Object;
.source "JDBC4ClientInfoProviderSP.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4ClientInfoProvider;


# instance fields
.field getClientInfoBulkSp:Ljava/sql/PreparedStatement;

.field getClientInfoSp:Ljava/sql/PreparedStatement;

.field setClientInfoSp:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 63
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 66
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 73
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "rs":Ljava/sql/ResultSet;
    const/4 v1, 0x0

    .line 105
    .local v1, "clientInfo":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 108
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v0, v2

    .line 110
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 111
    :try_start_1
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 114
    :catchall_1
    move-exception v2

    :goto_1
    if-eqz v0, :cond_2

    .line 115
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 117
    :cond_2
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    .end local v0    # "rs":Ljava/sql/ResultSet;
    .end local v1    # "clientInfo":Ljava/lang/String;
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "name":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;)Ljava/util/Properties;
    .locals 4
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "rs":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    .local v1, "props":Ljava/util/Properties;
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 85
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v0, v2

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 92
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 91
    :catchall_1
    move-exception v2

    :goto_1
    if-eqz v0, :cond_2

    .line 92
    :try_start_4
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 94
    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 77
    .end local v0    # "rs":Ljava/sql/ResultSet;
    .end local v1    # "props":Ljava/util/Properties;
    .end local p1    # "conn":Ljava/sql/Connection;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialize(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 9
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "configurationProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "identifierQuote":Ljava/lang/String;
    const-string v1, "clientInfoSetSPName"

    const-string v2, "setClientInfo"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "setClientInfoSpName":Ljava/lang/String;
    const-string v2, "clientInfoGetSPName"

    const-string v3, "getClientInfo"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "getClientInfoSpName":Ljava/lang/String;
    const-string v3, "clientInfoGetBulkSPName"

    const-string v4, "getClientInfoBulk"

    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "getClientInfoBulkSpName":Ljava/lang/String;
    const-string v4, "clientInfoCatalog"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "clientInfoCatalog":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    :cond_0
    move-object v5, v4

    .line 50
    .local v5, "catalog":Ljava/lang/String;
    :goto_0
    move-object v6, p1

    check-cast v6, Lcom/mysql/jdbc/Connection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(?, ?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 53
    move-object v6, p1

    check-cast v6, Lcom/mysql/jdbc/Connection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 56
    move-object v6, p1

    check-cast v6, Lcom/mysql/jdbc/Connection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 40
    .end local v0    # "identifierQuote":Ljava/lang/String;
    .end local v1    # "setClientInfoSpName":Ljava/lang/String;
    .end local v2    # "getClientInfoSpName":Ljava/lang/String;
    .end local v3    # "getClientInfoBulkSpName":Ljava/lang/String;
    .end local v4    # "clientInfoCatalog":Ljava/lang/String;
    .end local v5    # "catalog":Ljava/lang/String;
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "configurationProps":Ljava/util/Properties;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    nop

    .line 151
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 145
    .restart local p1    # "conn":Ljava/sql/Connection;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_1
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 147
    .local v1, "clientInfoEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "clientInfoEx":Ljava/sql/SQLClientInfoException;
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 3
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 126
    .local v0, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0    # "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local p0    # "this":Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
    :cond_0
    nop

    .line 138
    monitor-exit p0

    return-void

    .line 123
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "properties":Ljava/util/Properties;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 132
    .restart local p1    # "conn":Ljava/sql/Connection;
    .restart local p2    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_1
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 134
    .local v1, "clientInfoEx":Ljava/sql/SQLClientInfoException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "clientInfoEx":Ljava/sql/SQLClientInfoException;
    .end local p1    # "conn":Ljava/sql/Connection;
    .end local p2    # "properties":Ljava/util/Properties;
    :goto_1
    monitor-exit p0

    throw p1
.end method
