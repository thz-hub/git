.class public Lcom/mysql/jdbc/SocketMetadata$Helper;
.super Ljava/lang/Object;
.source "SocketMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/SocketMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# static fields
.field public static final IS_LOCAL_HOSTNAME_REPLACEMENT_PROPERTY_NAME:Ljava/lang/String; = "com.mysql.jdbc.test.isLocalHostnameReplacement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;
    .locals 6
    .param p0, "threadId"    # J
    .param p2, "processListStmt"    # Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "processHost":Ljava/lang/String;
    invoke-interface {p2}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/MySQLConnection;

    const-string v2, "performance_schema"

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "ps":Ljava/lang/String;
    invoke-interface {p2}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select PROCESSLIST_ID, PROCESSLIST_USER, PROCESSLIST_HOST from performance_schema.threads where PROCESSLIST_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "SHOW PROCESSLIST"

    :goto_0
    invoke-interface {p2, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 139
    .local v2, "rs":Ljava/sql/ResultSet;
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3

    .line 142
    .local v3, "id":J
    cmp-long v5, p0, v3

    if-nez v5, :cond_2

    .line 143
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_2

    .line 146
    .end local v3    # "id":J
    :cond_2
    goto :goto_1

    .line 148
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 18
    .param p0, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v1

    .line 49
    .local v1, "threadId":J
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 50
    .local v3, "processListStmt":Ljava/sql/Statement;
    const/4 v4, 0x0

    .line 51
    .local v4, "rs":Ljava/sql/ResultSet;
    const/4 v5, 0x0

    .line 54
    .local v5, "processHost":Ljava/lang/String;
    const-string v0, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "processHost":Ljava/lang/String;
    .local v0, "processHost":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v0    # "processHost":Ljava/lang/String;
    .restart local v5    # "processHost":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "processHost":Ljava/lang/String;
    .restart local v0    # "processHost":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v0    # "processHost":Ljava/lang/String;
    .restart local v5    # "processHost":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 64
    if-nez v5, :cond_3

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v6, "Connection id %d not found in \"SHOW PROCESSLIST\", assuming 32-bit overflow, using SELECT CONNECTION_ID() instead"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 71
    const-string v0, "SELECT CONNECTION_ID()"

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v4, v0

    .line 73
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-interface {v4, v7}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v9

    move-wide v1, v9

    .line 76
    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "processHost":Ljava/lang/String;
    .restart local v0    # "processHost":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "processHost":Ljava/lang/String;
    .restart local v5    # "processHost":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v6, "No rows returned for statement \"SELECT CONNECTION_ID()\", local connection check will most likely be incorrect"

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/log/Log;->logError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 64
    :cond_3
    move-object v0, v5

    .line 82
    .end local v5    # "processHost":Ljava/lang/String;
    .restart local v0    # "processHost":Ljava/lang/String;
    :goto_0
    nop

    .line 125
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 84
    nop

    .line 87
    :goto_1
    if-eqz v0, :cond_8

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    const-string v9, "SocketMetadata.0"

    invoke-static {v9, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 90
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, "endIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 92
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 91
    :cond_4
    move-object v6, v0

    .line 97
    .end local v0    # "processHost":Ljava/lang/String;
    .local v6, "processHost":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-static {v6}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 99
    .local v0, "allHostAddr":[Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v9

    iget-object v9, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v9

    .line 101
    .local v9, "remoteSocketAddr":Ljava/net/SocketAddress;
    instance-of v10, v9, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_7

    .line 102
    move-object v10, v9

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    .line 104
    .local v10, "whereIConnectedTo":Ljava/net/InetAddress;
    move-object v11, v0

    .local v11, "arr$":[Ljava/net/InetAddress;
    array-length v12, v11

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v12, :cond_6

    aget-object v14, v11, v13

    .line 105
    .local v14, "hostAddr":Ljava/net/InetAddress;
    invoke-virtual {v14, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v7, 0x2

    if-eqz v15, :cond_5

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v15

    const-string v8, "SocketMetadata.1"

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v7, v17

    const/16 v16, 0x1

    aput-object v10, v7, v16

    invoke-static {v8, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 107
    return v16

    .line 109
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v8

    const-string v15, "SocketMetadata.2"

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v7, v17

    const/16 v16, 0x1

    aput-object v10, v7, v16

    invoke-static {v15, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 104
    .end local v14    # "hostAddr":Ljava/net/InetAddress;
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 112
    .end local v10    # "whereIConnectedTo":Ljava/net/InetAddress;
    .end local v11    # "arr$":[Ljava/net/InetAddress;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 113
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v7

    const-string v8, "SocketMetadata.3"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v11, v10

    invoke-static {v8, v11}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :goto_4
    return v10

    .line 117
    .end local v0    # "allHostAddr":[Ljava/net/InetAddress;
    .end local v9    # "remoteSocketAddr":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-string v10, "Connection.CantDetectLocalConnect"

    invoke-static {v10, v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 120
    return v9

    .line 125
    .end local v5    # "endIndex":I
    .end local v6    # "processHost":Ljava/lang/String;
    .local v0, "processHost":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    return v9

    .line 83
    .end local v0    # "processHost":Ljava/lang/String;
    .local v5, "processHost":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 125
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 83
    throw v0
.end method
