.class public Lcom/mysql/jdbc/MultiHostMySQLConnection;
.super Ljava/lang/Object;
.source "MultiHostMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/MySQLConnection;


# instance fields
.field protected thisAsProxy:Lcom/mysql/jdbc/MultiHostConnectionProxy;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/mysql/jdbc/MultiHostConnectionProxy;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostMySQLConnection;->thisAsProxy:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    .line 67
    return-void
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

    .line 2327
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 2328
    return-void
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V

    .line 81
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

    .line 84
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->checkClosed()V

    .line 89
    return-void
.end method

.method public clearHasTriedMaster()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->clearHasTriedMaster()V

    .line 94
    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->clearWarnings()V

    .line 98
    return-void
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V

    .line 126
    return-void
.end method

.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->commit()V

    .line 130
    return-void
.end method

.method public createNewIO(Z)V
    .locals 1
    .param p1, "isForReconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->createNewIO(Z)V

    .line 134
    return-void
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .param p1, "resultSetType"    # I
    .param p2, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 1
    .param p1, "resultSetType"    # I
    .param p2, "resultSetConcurrency"    # I
    .param p3, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 1
    .param p1, "pstmt"    # Lcom/mysql/jdbc/ServerPreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2014
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 2015
    return-void
.end method

.method public dumpTestcaseQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public duplicate()Lcom/mysql/jdbc/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 10
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "maxRows"    # I
    .param p4, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p5, "resultSetType"    # I
    .param p6, "resultSetConcurrency"    # I
    .param p7, "streamResults"    # Z
    .param p8, "catalog"    # Ljava/lang/String;
    .param p9, "cachedMetadata"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "maxRows"    # I
    .param p4, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p5, "resultSetType"    # I
    .param p6, "resultSetConcurrency"    # I
    .param p7, "streamResults"    # Z
    .param p8, "catalog"    # Ljava/lang/String;
    .param p9, "cachedMetadata"    # [Lcom/mysql/jdbc/Field;
    .param p10, "isBatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public exposeAsXml()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->exposeAsXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 1
    .param p1, "possibleSqlQuery"    # Ljava/lang/String;
    .param p2, "queryPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "endOfQueryPacketPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 1665
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostMySQLConnection;->thisAsProxy:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostMySQLConnection;->thisAsProxy:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    iget-object v1, v1, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveStatementCount()I
    .locals 1

    .line 1669
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveStatementCount()I

    move-result v0

    return v0
.end method

.method public getAllowLoadLocalInfile()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v0

    return v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .line 2371
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMasterDownConnections()Z

    move-result v0

    return v0
.end method

.method public getAllowMultiQueries()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v0

    return v0
.end method

.method public getAllowNanAndInf()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowNanAndInf()Z

    move-result v0

    return v0
.end method

.method public getAllowPublicKeyRetrieval()Z
    .locals 1

    .line 2435
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    return v0
.end method

.method public getAllowSlaveDownConnections()Z
    .locals 1

    .line 2379
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowSlaveDownConnections()Z

    move-result v0

    return v0
.end method

.method public getAllowUrlInLocalInfile()Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowUrlInLocalInfile()Z

    move-result v0

    return v0
.end method

.method public getAlwaysSendSetIsolation()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAlwaysSendSetIsolation()Z

    move-result v0

    return v0
.end method

.method public getAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 2291
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoClosePStmtStreams()Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

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

    .line 1673
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v0

    return v0
.end method

.method public getAutoDeserialize()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    return v0
.end method

.method public getAutoGenerateTestcaseScript()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    return v0
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoIncrementIncrement()I

    move-result v0

    return v0
.end method

.method public getAutoReconnectForPools()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoReconnectForPools()Z

    move-result v0

    return v0
.end method

.method public getAutoSlowLog()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v0

    return v0
.end method

.method public getBlobSendChunkSize()I
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v0

    return v0
.end method

.method public getBlobsAreStrings()Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getBlobsAreStrings()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStatements()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheCallableStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStmts()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheCallableStmts()Z

    move-result v0

    return v0
.end method

.method public getCacheDefaultTimezone()Z
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheDefaultTimezone()Z

    move-result v0

    return v0
.end method

.method public getCachePrepStmts()Z
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachePrepStmts()Z

    move-result v0

    return v0
.end method

.method public getCachePreparedStatements()Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachePreparedStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheResultSetMetadata()Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    return v0
.end method

.method public getCacheServerConfiguration()Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheServerConfiguration()Z

    move-result v0

    return v0
.end method

.method public getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 1681
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 1

    .line 1685
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCallableStatementCacheSize()I
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCallableStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getCallableStmtCacheSize()I
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCallableStmtCacheSize()I

    move-result v0

    return v0
.end method

.method public getCancelTimer()Ljava/util/Timer;
    .locals 1

    .line 1689
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCapitalizeTypeNames()Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

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

    .line 1693
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterSetMetadata()Ljava/lang/String;
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterSetResults()Ljava/lang/String;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 1
    .param p1, "javaEncodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1701
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetNameForIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "charsetIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1709
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProvider()Ljava/lang/String;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobberStreamingResults()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v0

    return v0
.end method

.method public getCompensateOnDuplicateKeyUpdateCounts()Z
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectTimeout()I

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

    .line 2367
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCollation()Ljava/lang/String;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionCollation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionLifecycleInterceptors()Ljava/lang/String;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionLifecycleInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 1

    .line 2363
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContinueBatchOnError()Z
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getContinueBatchOnError()Z

    move-result v0

    return v0
.end method

.method public getCreateDatabaseIfNotExist()Z
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    return v0
.end method

.method public getDefaultAuthenticationPlugin()Ljava/lang/String;
    .locals 1

    .line 2307
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultAuthenticationPlugin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFetchSize()I
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultFetchSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1717
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getDetectCustomCollations()Z
    .locals 1

    .line 2407
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDetectCustomCollations()Z

    move-result v0

    return v0
.end method

.method public getDisabledAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 2299
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDisabledAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectOnExpiredPasswords()Z
    .locals 1

    .line 2351
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDisconnectOnExpiredPasswords()Z

    move-result v0

    return v0
.end method

.method public getDontCheckOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 2447
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    return v0
.end method

.method public getDontTrackOpenResources()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v0

    return v0
.end method

.method public getDumpMetadataOnColumnNotFound()Z
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDumpMetadataOnColumnNotFound()Z

    move-result v0

    return v0
.end method

.method public getDumpQueriesOnException()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v0

    return v0
.end method

.method public getDynamicCalendars()Z
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDynamicCalendars()Z

    move-result v0

    return v0
.end method

.method public getElideSetAutoCommits()Z
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getElideSetAutoCommits()Z

    move-result v0

    return v0
.end method

.method public getEmptyStringsConvertToZero()Z
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    return v0
.end method

.method public getEmulateLocators()Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v0

    return v0
.end method

.method public getEmulateUnsupportedPstmts()Z
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateUnsupportedPstmts()Z

    move-result v0

    return v0
.end method

.method public getEnableEscapeProcessing()Z
    .locals 1

    .line 2491
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnableEscapeProcessing()Z

    move-result v0

    return v0
.end method

.method public getEnablePacketDebug()Z
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    return v0
.end method

.method public getEnableQueryTimeouts()Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    return v0
.end method

.method public getEnabledSSLCipherSuites()Ljava/lang/String;
    .locals 1

    .line 2475
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledSSLCipherSuites()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTLSProtocols()Ljava/lang/String;
    .locals 1

    .line 2483
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledTLSProtocols()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingForIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "collationIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1713
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageEncoding()Ljava/lang/String;
    .locals 1

    .line 1721
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionInterceptors()Ljava/lang/String;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplainSlowQueries()Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v0

    return v0
.end method

.method public getFailOverReadOnly()Z
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getFailOverReadOnly()Z

    move-result v0

    return v0
.end method

.method public getFunctionsNeverReturnBlobs()Z
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getFunctionsNeverReturnBlobs()Z

    move-result v0

    return v0
.end method

.method public getGatherPerfMetrics()Z
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerfMetrics()Z

    move-result v0

    return v0
.end method

.method public getGatherPerformanceMetrics()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v0

    return v0
.end method

.method public getGenerateSimpleParameterMetadata()Z
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGenerateSimpleParameterMetadata()Z

    move-result v0

    return v0
.end method

.method public getGetProceduresReturnsFunctions()Z
    .locals 1

    .line 2359
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    return v0
.end method

.method public getHoldResultsOpenOverStatementClose()Z
    .locals 1

    .line 2187
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

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

    .line 1729
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHoldability()I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1733
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 1

    .line 1737
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIO()Lcom/mysql/jdbc/MysqlIO;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1749
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1741
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleFor()J
    .locals 2

    .line 1745
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIdleFor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIgnoreNonTxTables()Z
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIgnoreNonTxTables()Z

    move-result v0

    return v0
.end method

.method public getIncludeInnodbStatusInDeadlockExceptions()Z
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeInnodbStatusInDeadlockExceptions()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadDumpInDeadlockExceptions()Z
    .locals 1

    .line 2263
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadDumpInDeadlockExceptions()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadNamesAsStatementComment()Z
    .locals 1

    .line 2275
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadNamesAsStatementComment()Z

    move-result v0

    return v0
.end method

.method public getInitialTimeout()I
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getInitialTimeout()I

    move-result v0

    return v0
.end method

.method public getInteractiveClient()Z
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result v0

    return v0
.end method

.method public getIsInteractiveClient()Z
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIsInteractiveClient()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncation()Z
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncation()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncationForReads()Z
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncationForReads()Z

    move-result v0

    return v0
.end method

.method public getLargeRowSizeThreshold()Ljava/lang/String;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLargeRowSizeThreshold()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementThreshold()I
    .locals 1

    .line 2251
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceAutoCommitStatementThreshold()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceBlacklistTimeout()I
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceBlacklistTimeout()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceConnectionGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceEnableJMX()Z
    .locals 1

    .line 2195
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceEnableJMX()Z

    move-result v0

    return v0
.end method

.method public getLoadBalanceExceptionChecker()Ljava/lang/String;
    .locals 1

    .line 2199
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceExceptionChecker()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceHostRemovalGracePeriod()I
    .locals 1

    .line 2239
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceHostRemovalGracePeriod()I

    move-result v0

    return v0
.end method

.method public getLoadBalancePingTimeout()I
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
    .locals 1

    .line 2203
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSQLStateFailover()Ljava/lang/String;
    .locals 1

    .line 2207
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceSQLStateFailover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceStrategy()Ljava/lang/String;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceValidateConnectionOnSwapServer()Z
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceValidateConnectionOnSwapServer()Z

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/lang/String;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorFetchBufferSize()I
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLocatorFetchBufferSize()I

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

    .line 1765
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    return-object v0
.end method

.method public getLogSlowQueries()Z
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    return v0
.end method

.method public getLogXaCommands()Z
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogXaCommands()Z

    move-result v0

    return v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogger()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerClassName()Ljava/lang/String;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoggerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainTimeStats()Z
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v0

    return v0
.end method

.method public getMaxAllowedPacket()I
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    return v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 1
    .param p1, "charsetIndex"    # Ljava/lang/Integer;
    .param p2, "javaCharsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1773
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/String;)I
    .locals 1
    .param p1, "javaCharsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1769
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxQuerySizeToLog()I
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v0

    return v0
.end method

.method public getMaxReconnects()I
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxReconnects()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxRows()I

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

    .line 1777
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataCacheSize()I
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataCacheSize()I

    move-result v0

    return v0
.end method

.method public getMetadataSafeStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1781
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 1761
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getNetBufferLength()I
    .locals 1

    .line 1785
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNetBufferLength()I

    move-result v0

    return v0
.end method

.method public getNetTimeoutForStreamingResults()I
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

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

    .line 2335
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNetworkTimeout()I

    move-result v0

    return v0
.end method

.method public getNoAccessToProcedureBodies()Z
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v0

    return v0
.end method

.method public getNoDatetimeStringSync()Z
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForDateType()Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForTimeType()Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForTimeType()Z

    move-result v0

    return v0
.end method

.method public getNullCatalogMeansCurrent()Z
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    return v0
.end method

.method public getNullNamePatternMatchesAll()Z
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    return v0
.end method

.method public getOverrideSupportsIntegrityEnhancementFacility()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getOverrideSupportsIntegrityEnhancementFacility()Z

    move-result v0

    return v0
.end method

.method public getPacketDebugBufferSize()I
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPacketDebugBufferSize()I

    move-result v0

    return v0
.end method

.method public getPadCharsWithSpace()Z
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result v0

    return v0
.end method

.method public getParanoid()Z
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v0

    return v0
.end method

.method public getParseInfoCacheFactory()Ljava/lang/String;
    .locals 1

    .line 2315
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPedantic()Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v0

    return v0
.end method

.method public getPinGlobalTxToPhysicalConnection()Z
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    return v0
.end method

.method public getPopulateInsertRowWithDefaultValues()Z
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPopulateInsertRowWithDefaultValues()Z

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSize()I
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPrepStmtCacheSize()I

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSqlLimit()I
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPrepStmtCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSize()I
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPreparedStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSqlLimit()I
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPreparedStatementCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getProcessEscapeCodesForPrepStmts()Z
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getProfileSQL()Z
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSQL()Z

    move-result v0

    return v0
.end method

.method public getProfileSql()Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v0

    return v0
.end method

.method public getProfilerEventHandler()Ljava/lang/String;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 1

    .line 2419
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 1789
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesTransform()Ljava/lang/String;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPropertiesTransform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBeforeRetryMaster()I
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getQueriesBeforeRetryMaster()I

    move-result v0

    return v0
.end method

.method public getQueryTimeoutKillsConnection()Z
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimeoutKillsConnection()Z

    move-result v0

    return v0
.end method

.method public getQueryTimingUnits()Ljava/lang/String;
    .locals 1

    .line 2507
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadFromMasterWhenNoSlaves()Z
    .locals 1

    .line 2387
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getReadFromMasterWhenNoSlaves()Z

    move-result v0

    return v0
.end method

.method public getReadOnlyPropagatesToServer()Z
    .locals 1

    .line 2467
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getReadOnlyPropagatesToServer()Z

    move-result v0

    return v0
.end method

.method public getReconnectAtTxEnd()Z
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getReconnectAtTxEnd()Z

    move-result v0

    return v0
.end method

.method public getRelaxAutoCommit()Z
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRelaxAutoCommit()Z

    move-result v0

    return v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .line 2395
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getReplicationEnableJMX()Z

    move-result v0

    return v0
.end method

.method public getReportMetricsIntervalMillis()I
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getReportMetricsIntervalMillis()I

    move-result v0

    return v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRequireSSL()Z

    move-result v0

    return v0
.end method

.method public getRequiresEscapingEncoder()Z
    .locals 1

    .line 1793
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result v0

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getResourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetSizeThreshold()I
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v0

    return v0
.end method

.method public getRetainStatementAfterResultSetClose()Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result v0

    return v0
.end method

.method public getRetriesAllDown()I
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRetriesAllDown()I

    move-result v0

    return v0
.end method

.method public getRewriteBatchedStatements()Z
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v0

    return v0
.end method

.method public getRollbackOnPooledClose()Z
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRollbackOnPooledClose()Z

    move-result v0

    return v0
.end method

.method public getRoundRobinLoadBalance()Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRoundRobinLoadBalance()Z

    move-result v0

    return v0
.end method

.method public getRunningCTS13()Z
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRunningCTS13()Z

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

    .line 2323
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSchema()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondsBeforeRetryMaster()I
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSecondsBeforeRetryMaster()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingMaxOperations()I
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSelfDestructOnPingMaxOperations()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingSecondsLifetime()I
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSelfDestructOnPingSecondsLifetime()I

    move-result v0

    return v0
.end method

.method public getSendFractionalSeconds()Z
    .locals 1

    .line 813
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSendFractionalSeconds()Z

    move-result v0

    return v0
.end method

.method public getServerAffinityOrder()Ljava/lang/String;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerAffinityOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1801
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 1

    .line 1805
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfigCacheFactory()Ljava/lang/String;
    .locals 1

    .line 2343
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerConfigCacheFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerMajorVersion()I
    .locals 1

    .line 1809
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getServerMinorVersion()I
    .locals 1

    .line 1813
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerRSAPublicKeyFile()Ljava/lang/String;
    .locals 1

    .line 2427
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerSubMinorVersion()I
    .locals 1

    .line 1817
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerSubMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerTimezone()Ljava/lang/String;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .line 1821
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getServerVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "variableName"    # Ljava/lang/String;

    .line 1825
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 1829
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionLockedCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1833
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSessionLockedCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 1

    .line 2411
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSessionMaxRows()I

    move-result v0

    return v0
.end method

.method public getSessionVariables()Ljava/lang/String;
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowQueryThresholdMillis()I
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v0

    return v0
.end method

.method public getSlowQueryThresholdNanos()J
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSocketFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getSocksProxyHost()Ljava/lang/String;
    .locals 1

    .line 2455
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSocksProxyHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocksProxyPort()I
    .locals 1

    .line 2463
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSocksProxyPort()I

    move-result v0

    return v0
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    .line 1837
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatementInterceptors()Ljava/lang/String;
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementInterceptors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatementInterceptorsInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation

    .line 1841
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementInterceptorsInstances()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrictFloatingPoint()Z
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStrictFloatingPoint()Z

    move-result v0

    return v0
.end method

.method public getStrictUpdates()Z
    .locals 1

    .line 693
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStrictUpdates()Z

    move-result v0

    return v0
.end method

.method public getTcpKeepAlive()Z
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTcpKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTcpRcvBuf()I
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTcpRcvBuf()I

    move-result v0

    return v0
.end method

.method public getTcpSndBuf()I
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTcpSndBuf()I

    move-result v0

    return v0
.end method

.method public getTcpTrafficClass()I
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTcpTrafficClass()I

    move-result v0

    return v0
.end method

.method protected getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostMySQLConnection;->thisAsProxy:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    return-object v0
.end method

.method public getTinyInt1isBit()Z
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v0

    return v0
.end method

.method public getTraceProtocol()Z
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

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

    .line 1845
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTransactionIsolation()I

    move-result v0

    return v0
.end method

.method public getTransformedBitIsBoolean()Z
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTreatUtilDateAsTimestamp()Z
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTreatUtilDateAsTimestamp()Z

    move-result v0

    return v0
.end method

.method public getTrustCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreUrl()Ljava/lang/String;

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

    .line 1849
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTypeMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 1853
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltraDevHack()Z
    .locals 1

    .line 745
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUltraDevHack()Z

    move-result v0

    return v0
.end method

.method public getUseAffectedRows()Z
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseAffectedRows()Z

    move-result v0

    return v0
.end method

.method public getUseBlobToStoreUTF8OutsideBMP()Z
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseBlobToStoreUTF8OutsideBMP()Z

    move-result v0

    return v0
.end method

.method public getUseColumnNamesInFindColumn()Z
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseColumnNamesInFindColumn()Z

    move-result v0

    return v0
.end method

.method public getUseCompression()Z
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    return v0
.end method

.method public getUseConfigs()Ljava/lang/String;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseConfigs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCursorFetch()Z
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCursorFetch()Z

    move-result v0

    return v0
.end method

.method public getUseDirectRowUnpack()Z
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseDirectRowUnpack()Z

    move-result v0

    return v0
.end method

.method public getUseDynamicCharsetInfo()Z
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseDynamicCharsetInfo()Z

    move-result v0

    return v0
.end method

.method public getUseFastDateParsing()Z
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastDateParsing()Z

    move-result v0

    return v0
.end method

.method public getUseFastIntParsing()Z
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastIntParsing()Z

    move-result v0

    return v0
.end method

.method public getUseGmtMillisForDatetimes()Z
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v0

    return v0
.end method

.method public getUseHostsInPrivileges()Z
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v0

    return v0
.end method

.method public getUseInformationSchema()Z
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result v0

    return v0
.end method

.method public getUseJDBCCompliantTimezoneShift()Z
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    return v0
.end method

.method public getUseJvmCharsetConverters()Z
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJvmCharsetConverters()Z

    move-result v0

    return v0
.end method

.method public getUseLegacyDatetimeCode()Z
    .locals 1

    .line 809
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v0

    return v0
.end method

.method public getUseLocalSessionState()Z
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLocalSessionState()Z

    move-result v0

    return v0
.end method

.method public getUseLocalTransactionState()Z
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLocalTransactionState()Z

    move-result v0

    return v0
.end method

.method public getUseNanosForElapsedTime()Z
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v0

    return v0
.end method

.method public getUseOldAliasMetadataBehavior()Z
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v0

    return v0
.end method

.method public getUseOldUTF8Behavior()Z
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldUTF8Behavior()Z

    move-result v0

    return v0
.end method

.method public getUseOnlyServerErrorMessages()Z
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v0

    return v0
.end method

.method public getUseReadAheadInput()Z
    .locals 1

    .line 841
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseReadAheadInput()Z

    move-result v0

    return v0
.end method

.method public getUseSSL()Z
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v0

    return v0
.end method

.method public getUseSSPSCompatibleTimezoneShift()Z
    .locals 1

    .line 849
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result v0

    return v0
.end method

.method public getUseServerPrepStmts()Z
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseServerPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getUseServerPreparedStmts()Z
    .locals 1

    .line 857
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseServerPreparedStmts()Z

    move-result v0

    return v0
.end method

.method public getUseSqlStateCodes()Z
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v0

    return v0
.end method

.method public getUseStreamLengthsInPrepStmts()Z
    .locals 1

    .line 865
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v0

    return v0
.end method

.method public getUseTimezone()Z
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    return v0
.end method

.method public getUseUltraDevWorkAround()Z
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUltraDevWorkAround()Z

    move-result v0

    return v0
.end method

.method public getUseUnbufferedInput()Z
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnbufferedInput()Z

    move-result v0

    return v0
.end method

.method public getUseUnicode()Z
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    return v0
.end method

.method public getUseUsageAdvisor()Z
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 1857
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1861
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyServerCertificate()Z
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getVerifyServerCertificate()Z

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

    .line 1865
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0
.end method

.method public getYearIsDateType()Z
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    return v0
.end method

.method public getZeroDateTimeBehavior()Ljava/lang/String;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/mysql/jdbc/Connection;

    .line 1869
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->hasSameProperties(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    return v0
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1874
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->hasTriedMaster()Z

    move-result v0

    return v0
.end method

.method public incrementNumberOfPreparedExecutes()V
    .locals 1

    .line 1878
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPreparedExecutes()V

    .line 1879
    return-void
.end method

.method public incrementNumberOfPrepares()V
    .locals 1

    .line 1882
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPrepares()V

    .line 1883
    return-void
.end method

.method public incrementNumberOfResultSetsCreated()V
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfResultSetsCreated()V

    .line 1887
    return-void
.end method

.method public initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .param p1, "ex"    # Lcom/mysql/jdbc/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1890
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->initializeExtension(Lcom/mysql/jdbc/Extension;)V

    .line 1891
    return-void
.end method

.method public initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cachedMetaData"    # Lcom/mysql/jdbc/CachedResultSetMetaData;
    .param p3, "resultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1894
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1895
    return-void
.end method

.method public initializeSafeStatementInterceptors()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1898
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeSafeStatementInterceptors()V

    .line 1899
    return-void
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 1
    .param p1, "millisOrNanos"    # J

    .line 1902
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v0

    return v0
.end method

.method public isClientTzUTC()Z
    .locals 1

    .line 1906
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClientTzUTC()Z

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

    .line 2183
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    return v0
.end method

.method public isCursorFetchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1910
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v0

    return v0
.end method

.method public isInGlobalTx()Z
    .locals 1

    .line 1914
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isInGlobalTx()Z

    move-result v0

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    .line 1918
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isMasterConnection()Z

    move-result v0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    .line 1922
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v0

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .line 2243
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isProxySet()Z

    move-result v0

    return v0
.end method

.method public isReadInfoMsgEnabled()Z
    .locals 1

    .line 1926
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

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

    .line 1930
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isReadOnly(Z)Z
    .locals 1
    .param p1, "useSessionStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1934
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v0

    return v0
.end method

.method public isRunningOnJDK13()Z
    .locals 1

    .line 1938
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isRunningOnJDK13()Z

    move-result v0

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 1
    .param p1, "otherConnection"    # Lcom/mysql/jdbc/Connection;

    .line 1942
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

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

    .line 2283
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isServerLocal()Z

    move-result v0

    return v0
.end method

.method public isServerTruncatesFracSecs()Z
    .locals 1

    .line 2503
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isServerTruncatesFracSecs()Z

    move-result v0

    return v0
.end method

.method public isServerTzUTC()Z
    .locals 1

    .line 1946
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isServerTzUTC()Z

    move-result v0

    return v0
.end method

.method public isUseSSLExplicit()Z
    .locals 1

    .line 2499
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isUseSSLExplicit()Z

    move-result v0

    return v0
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .line 1950
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

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

    .line 1954
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    .line 1958
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

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

    .line 1962
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->ping()V

    .line 1963
    return-void
.end method

.method public pingInternal(ZI)V
    .locals 1
    .param p1, "checkForClosedConnection"    # Z
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1966
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->pingInternal(ZI)V

    .line 1967
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1978
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1974
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1970
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MySQLConnection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2002
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1990
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1986
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1982
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1994
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1998
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public realClose(ZZZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "calledExplicitly"    # Z
    .param p2, "issueRollback"    # Z
    .param p3, "skipLocalTeardown"    # Z
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2006
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V

    .line 2007
    return-void
.end method

.method public recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 1
    .param p1, "pstmt"    # Lcom/mysql/jdbc/ServerPreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2010
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 2011
    return-void
.end method

.method public registerQueryExecutionTime(J)V
    .locals 1
    .param p1, "queryTimeMs"    # J

    .line 2018
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->registerQueryExecutionTime(J)V

    .line 2019
    return-void
.end method

.method public registerStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .param p1, "stmt"    # Lcom/mysql/jdbc/Statement;

    .line 2022
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->registerStatement(Lcom/mysql/jdbc/Statement;)V

    .line 2023
    return-void
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1
    .param p1, "arg0"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->releaseSavepoint(Ljava/sql/Savepoint;)V

    .line 2027
    return-void
.end method

.method public reportNumberOfTablesAccessed(I)V
    .locals 1
    .param p1, "numTablesAccessed"    # I

    .line 2030
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->reportNumberOfTablesAccessed(I)V

    .line 2031
    return-void
.end method

.method public reportQueryTime(J)V
    .locals 1
    .param p1, "millisOrNanos"    # J

    .line 2034
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->reportQueryTime(J)V

    .line 2035
    return-void
.end method

.method public resetServerState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2038
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->resetServerState()V

    .line 2039
    return-void
.end method

.method public rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2042
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->rollback()V

    .line 2043
    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 1
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2046
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->rollback(Ljava/sql/Savepoint;)V

    .line 2047
    return-void
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2070
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2058
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2054
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2050
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2062
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2066
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverSupportsConvertFn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2074
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v0

    return v0
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 909
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowLoadLocalInfile(Z)V

    .line 910
    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1
    .param p1, "connectIfMasterDown"    # Z

    .line 2375
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowMasterDownConnections(Z)V

    .line 2376
    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 913
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowMultiQueries(Z)V

    .line 914
    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 917
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowNanAndInf(Z)V

    .line 918
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

    .line 2439
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowPublicKeyRetrieval(Z)V

    .line 2440
    return-void
.end method

.method public setAllowSlaveDownConnections(Z)V
    .locals 1
    .param p1, "connectIfSlaveDown"    # Z

    .line 2383
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowSlaveDownConnections(Z)V

    .line 2384
    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 921
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAllowUrlInLocalInfile(Z)V

    .line 922
    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 925
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAlwaysSendSetIsolation(Z)V

    .line 926
    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "authenticationPlugins"    # Ljava/lang/String;

    .line 2287
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAuthenticationPlugins(Ljava/lang/String;)V

    .line 2288
    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 929
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoClosePStmtStreams(Z)V

    .line 930
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 1
    .param p1, "autoCommitFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2078
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoCommit(Z)V

    .line 2079
    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 933
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoDeserialize(Z)V

    .line 934
    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 937
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoGenerateTestcaseScript(Z)V

    .line 938
    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 941
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoReconnect(Z)V

    .line 942
    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 945
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoReconnectForConnectionPools(Z)V

    .line 946
    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 949
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoReconnectForPools(Z)V

    .line 950
    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 953
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setAutoSlowLog(Z)V

    .line 954
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

    .line 957
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setBlobSendChunkSize(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 961
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setBlobsAreStrings(Z)V

    .line 962
    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 965
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCacheCallableStatements(Z)V

    .line 966
    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 969
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCacheCallableStmts(Z)V

    .line 970
    return-void
.end method

.method public setCacheDefaultTimezone(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1261
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCacheDefaultTimezone(Z)V

    .line 1262
    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 973
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCachePrepStmts(Z)V

    .line 974
    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 977
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCachePreparedStatements(Z)V

    .line 978
    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 981
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCacheResultSetMetadata(Z)V

    .line 982
    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 985
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCacheServerConfiguration(Z)V

    .line 986
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

    .line 989
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCallableStatementCacheSize(I)V

    .line 990
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

    .line 993
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCallableStmtCacheSize(I)V

    .line 994
    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 997
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCapitalizeDBMDTypes(Z)V

    .line 998
    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1001
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCapitalizeTypeNames(Z)V

    .line 1002
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

    .line 2082
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 2083
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 1005
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCharacterEncoding(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 1009
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCharacterSetResults(Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1013
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClientCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1017
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClientCertificateKeyStoreType(Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1021
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClientCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 1025
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClientInfoProvider(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 1029
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClobCharacterEncoding(Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1033
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setClobberStreamingResults(Z)V

    .line 1034
    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1037
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCompensateOnDuplicateKeyUpdateCounts(Z)V

    .line 1038
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

    .line 1041
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setConnectTimeout(I)V

    .line 1042
    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 1
    .param p1, "collation"    # Ljava/lang/String;

    .line 1045
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setConnectionCollation(Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "interceptors"    # Ljava/lang/String;

    .line 1049
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setConnectionLifecycleInterceptors(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1053
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setContinueBatchOnError(Z)V

    .line 1054
    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1057
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCreateDatabaseIfNotExist(Z)V

    .line 1058
    return-void
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultAuthenticationPlugin"    # Ljava/lang/String;

    .line 2303
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDefaultAuthenticationPlugin(Ljava/lang/String;)V

    .line 2304
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

    .line 1061
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDefaultFetchSize(I)V

    .line 1062
    return-void
.end method

.method public setDetectCustomCollations(Z)V
    .locals 1
    .param p1, "detectCustomCollations"    # Z

    .line 2403
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDetectCustomCollations(Z)V

    .line 2404
    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1065
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDetectServerPreparedStmts(Z)V

    .line 1066
    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledAuthenticationPlugins"    # Ljava/lang/String;

    .line 2295
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDisabledAuthenticationPlugins(Ljava/lang/String;)V

    .line 2296
    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 1
    .param p1, "disconnectOnExpiredPasswords"    # Z

    .line 2347
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDisconnectOnExpiredPasswords(Z)V

    .line 2348
    return-void
.end method

.method public setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
    .locals 1
    .param p1, "dontCheckOnDuplicateKeyUpdateInSQL"    # Z

    .line 2443
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDontCheckOnDuplicateKeyUpdateInSQL(Z)V

    .line 2444
    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1069
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDontTrackOpenResources(Z)V

    .line 1070
    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1073
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDumpMetadataOnColumnNotFound(Z)V

    .line 1074
    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1077
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDumpQueriesOnException(Z)V

    .line 1078
    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1081
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setDynamicCalendars(Z)V

    .line 1082
    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1085
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setElideSetAutoCommits(Z)V

    .line 1086
    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1089
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEmptyStringsConvertToZero(Z)V

    .line 1090
    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1093
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEmulateLocators(Z)V

    .line 1094
    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1097
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEmulateUnsupportedPstmts(Z)V

    .line 1098
    return-void
.end method

.method public setEnableEscapeProcessing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2495
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEnableEscapeProcessing(Z)V

    .line 2496
    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1101
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEnablePacketDebug(Z)V

    .line 1102
    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1105
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEnableQueryTimeouts(Z)V

    .line 1106
    return-void
.end method

.method public setEnabledSSLCipherSuites(Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 2479
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEnabledSSLCipherSuites(Ljava/lang/String;)V

    .line 2480
    return-void
.end method

.method public setEnabledTLSProtocols(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # Ljava/lang/String;

    .line 2487
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEnabledTLSProtocols(Ljava/lang/String;)V

    .line 2488
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1109
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setEncoding(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionInterceptors"    # Ljava/lang/String;

    .line 1113
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setExceptionInterceptors(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1117
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setExplainSlowQueries(Z)V

    .line 1118
    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1121
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setFailOverReadOnly(Z)V

    .line 1122
    return-void
.end method

.method public setFailedOver(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2086
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setFailedOver(Z)V

    .line 2087
    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1125
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setFunctionsNeverReturnBlobs(Z)V

    .line 1126
    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1129
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setGatherPerfMetrics(Z)V

    .line 1130
    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1133
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setGatherPerformanceMetrics(Z)V

    .line 1134
    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1137
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setGenerateSimpleParameterMetadata(Z)V

    .line 1138
    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 1
    .param p1, "getProcedureReturnsFunctions"    # Z

    .line 2355
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 2356
    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1141
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setHoldResultsOpenOverStatementClose(Z)V

    .line 1142
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

    .line 2090
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setHoldability(I)V

    .line 2091
    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1145
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setIgnoreNonTxTables(Z)V

    .line 1146
    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2094
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setInGlobalTx(Z)V

    .line 2095
    return-void
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1149
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setIncludeInnodbStatusInDeadlockExceptions(Z)V

    .line 1150
    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2267
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setIncludeThreadDumpInDeadlockExceptions(Z)V

    .line 2268
    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2279
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setIncludeThreadNamesAsStatementComment(Z)V

    .line 2280
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

    .line 1153
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setInitialTimeout(I)V

    .line 1154
    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1157
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setInteractiveClient(Z)V

    .line 1158
    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1161
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setIsInteractiveClient(Z)V

    .line 1162
    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1165
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setJdbcCompliantTruncation(Z)V

    .line 1166
    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 1
    .param p1, "jdbcCompliantTruncationForReads"    # Z

    .line 1169
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setJdbcCompliantTruncationForReads(Z)V

    .line 1170
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

    .line 1173
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLargeRowSizeThreshold(Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceAutoCommitStatementRegex"    # Ljava/lang/String;

    .line 2255
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V

    .line 2256
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

    .line 2259
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceAutoCommitStatementThreshold(I)V

    .line 2260
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

    .line 1177
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceBlacklistTimeout(I)V

    .line 1178
    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceConnectionGroup"    # Ljava/lang/String;

    .line 2211
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceConnectionGroup(Ljava/lang/String;)V

    .line 2213
    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 1
    .param p1, "loadBalanceEnableJMX"    # Z

    .line 2216
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceEnableJMX(Z)V

    .line 2218
    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceExceptionChecker"    # Ljava/lang/String;

    .line 2221
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceExceptionChecker(Ljava/lang/String;)V

    .line 2223
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

    .line 2235
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceHostRemovalGracePeriod(I)V

    .line 2236
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

    .line 1181
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalancePingTimeout(I)V

    .line 1182
    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLExceptionSubclassFailover"    # Ljava/lang/String;

    .line 2226
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V

    .line 2228
    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLStateFailover"    # Ljava/lang/String;

    .line 2231
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceSQLStateFailover(Ljava/lang/String;)V

    .line 2232
    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1, "strategy"    # Ljava/lang/String;

    .line 1185
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceStrategy(Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 1
    .param p1, "loadBalanceValidateConnectionOnSwapServer"    # Z

    .line 1193
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoadBalanceValidateConnectionOnSwapServer(Z)V

    .line 1194
    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 1197
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLocalSocketAddress(Ljava/lang/String;)V

    .line 1198
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

    .line 1201
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLocatorFetchBufferSize(Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1205
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLogSlowQueries(Z)V

    .line 1206
    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1209
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLogXaCommands(Z)V

    .line 1210
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1213
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLogger(Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 1217
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setLoggerClassName(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1221
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setMaintainTimeStats(Z)V

    .line 1222
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

    .line 1225
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setMaxQuerySizeToLog(I)V

    .line 1226
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

    .line 1229
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setMaxReconnects(I)V

    .line 1230
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

    .line 1233
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setMaxRows(I)V

    .line 1234
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

    .line 1237
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setMetadataCacheSize(I)V

    .line 1238
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

    .line 1241
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNetTimeoutForStreamingResults(I)V

    .line 1242
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

    .line 2331
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->setNetworkTimeout(Ljava/util/concurrent/Executor;I)V

    .line 2332
    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1245
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNoAccessToProcedureBodies(Z)V

    .line 1246
    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1249
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNoDatetimeStringSync(Z)V

    .line 1250
    return-void
.end method

.method public setNoTimezoneConversionForDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1257
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNoTimezoneConversionForDateType(Z)V

    .line 1258
    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1253
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNoTimezoneConversionForTimeType(Z)V

    .line 1254
    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1265
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNullCatalogMeansCurrent(Z)V

    .line 1266
    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1269
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setNullNamePatternMatchesAll(Z)V

    .line 1270
    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1273
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setOverrideSupportsIntegrityEnhancementFacility(Z)V

    .line 1274
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

    .line 1277
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPacketDebugBufferSize(I)V

    .line 1278
    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1281
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPadCharsWithSpace(Z)V

    .line 1282
    return-void
.end method

.method public setParanoid(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1285
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setParanoid(Z)V

    .line 1286
    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 2311
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setParseInfoCacheFactory(Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 1289
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPasswordCharacterEncoding(Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method public setPedantic(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1293
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPedantic(Z)V

    .line 1294
    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1297
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPinGlobalTxToPhysicalConnection(Z)V

    .line 1298
    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1301
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPopulateInsertRowWithDefaultValues(Z)V

    .line 1302
    return-void
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPreferSlaveDuringFailover(Z)V

    .line 2100
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

    .line 1305
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPrepStmtCacheSize(I)V

    .line 1306
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

    .line 1309
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPrepStmtCacheSqlLimit(I)V

    .line 1310
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

    .line 1313
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPreparedStatementCacheSize(I)V

    .line 1314
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

    .line 1317
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPreparedStatementCacheSqlLimit(I)V

    .line 1318
    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1321
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProcessEscapeCodesForPrepStmts(Z)V

    .line 1322
    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1325
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProfileSQL(Z)V

    .line 1326
    return-void
.end method

.method public setProfileSql(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1329
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProfileSql(Z)V

    .line 1330
    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Ljava/lang/String;

    .line 1333
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProfilerEventHandler(Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method public setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 2423
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V

    .line 2424
    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1337
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setPropertiesTransform(Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "proxy"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 2103
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 2104
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

    .line 1341
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setQueriesBeforeRetryMaster(I)V

    .line 1342
    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 1
    .param p1, "queryTimeoutKillsConnection"    # Z

    .line 1345
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setQueryTimeoutKillsConnection(Z)V

    .line 1346
    return-void
.end method

.method public setReadFromMasterWhenNoSlaves(Z)V
    .locals 1
    .param p1, "useMasterIfSlavesDown"    # Z

    .line 2391
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReadFromMasterWhenNoSlaves(Z)V

    .line 2392
    return-void
.end method

.method public setReadInfoMsgEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2107
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 2108
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .param p1, "readOnlyFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2111
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V

    .line 2112
    return-void
.end method

.method public setReadOnlyInternal(Z)V
    .locals 1
    .param p1, "readOnlyFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnlyInternal(Z)V

    .line 2116
    return-void
.end method

.method public setReadOnlyPropagatesToServer(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2471
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnlyPropagatesToServer(Z)V

    .line 2472
    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1349
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReconnectAtTxEnd(Z)V

    .line 1350
    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1353
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRelaxAutoCommit(Z)V

    .line 1354
    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1
    .param p1, "replicationEnableJMX"    # Z

    .line 2399
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReplicationEnableJMX(Z)V

    .line 2400
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

    .line 1357
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setReportMetricsIntervalMillis(I)V

    .line 1358
    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1361
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRequireSSL(Z)V

    .line 1362
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 1365
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setResourceId(Ljava/lang/String;)V

    .line 1366
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

    .line 1369
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setResultSetSizeThreshold(I)V

    .line 1370
    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1373
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRetainStatementAfterResultSetClose(Z)V

    .line 1374
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

    .line 1377
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRetriesAllDown(I)V

    .line 1378
    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1381
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRewriteBatchedStatements(Z)V

    .line 1382
    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1385
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRollbackOnPooledClose(Z)V

    .line 1386
    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1389
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRoundRobinLoadBalance(Z)V

    .line 1390
    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1393
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setRunningCTS13(Z)V

    .line 1394
    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2119
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->setSavepoint()Ljava/sql/Savepoint;

    move-result-object v0

    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2123
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v0

    return-object v0
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 1
    .param p1, "schema"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2319
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSchema(Ljava/lang/String;)V

    .line 2320
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

    .line 1397
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSecondsBeforeRetryMaster(I)V

    .line 1398
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

    .line 1401
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSelfDestructOnPingMaxOperations(I)V

    .line 1402
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

    .line 1405
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSelfDestructOnPingSecondsLifetime(I)V

    .line 1406
    return-void
.end method

.method public setSendFractionalSeconds(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1565
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSendFractionalSeconds(Z)V

    .line 1566
    return-void
.end method

.method public setServerAffinityOrder(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostsList"    # Ljava/lang/String;

    .line 1189
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setServerAffinityOrder(Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 2339
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setServerConfigCacheFactory(Ljava/lang/String;)V

    .line 2340
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

    .line 2431
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setServerRSAPublicKeyFile(Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1409
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setServerTimezone(Ljava/lang/String;)V

    .line 1410
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

    .line 2415
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 2416
    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 1
    .param p1, "variables"    # Ljava/lang/String;

    .line 1413
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionVariables(Ljava/lang/String;)V

    .line 1414
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

    .line 1417
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSlowQueryThresholdMillis(I)V

    .line 1418
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

    .line 1421
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->setSlowQueryThresholdNanos(J)V

    .line 1422
    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1425
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSocketFactory(Ljava/lang/String;)V

    .line 1426
    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1429
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 1430
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

    .line 1433
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSocketTimeout(I)V

    .line 1434
    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "socksProxyHost"    # Ljava/lang/String;

    .line 2451
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSocksProxyHost(Ljava/lang/String;)V

    .line 2452
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

    .line 2459
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setSocksProxyPort(I)V

    .line 2460
    return-void
.end method

.method public setStatementComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 2127
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setStatementComment(Ljava/lang/String;)V

    .line 2128
    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1437
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setStatementInterceptors(Ljava/lang/String;)V

    .line 1438
    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1441
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setStrictFloatingPoint(Z)V

    .line 1442
    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1445
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setStrictUpdates(Z)V

    .line 1446
    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1449
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTcpKeepAlive(Z)V

    .line 1450
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1453
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTcpNoDelay(Z)V

    .line 1454
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

    .line 1457
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTcpRcvBuf(I)V

    .line 1458
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

    .line 1461
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTcpSndBuf(I)V

    .line 1462
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

    .line 1465
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTcpTrafficClass(I)V

    .line 1466
    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1469
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTinyInt1isBit(Z)V

    .line 1470
    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1473
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTraceProtocol(Z)V

    .line 1474
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

    .line 2131
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTransactionIsolation(I)V

    .line 2132
    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1477
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTransformedBitIsBoolean(Z)V

    .line 1478
    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1481
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTreatUtilDateAsTimestamp(Z)V

    .line 1482
    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1485
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTrustCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1489
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTrustCertificateKeyStoreType(Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1493
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 1494
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

    .line 2271
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setTypeMap(Ljava/util/Map;)V

    .line 2272
    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1497
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUltraDevHack(Z)V

    .line 1498
    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1501
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseAffectedRows(Z)V

    .line 1502
    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1505
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseBlobToStoreUTF8OutsideBMP(Z)V

    .line 1506
    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1509
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseColumnNamesInFindColumn(Z)V

    .line 1510
    return-void
.end method

.method public setUseCompression(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1513
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseCompression(Z)V

    .line 1514
    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 1
    .param p1, "configs"    # Ljava/lang/String;

    .line 1517
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseConfigs(Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1521
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseCursorFetch(Z)V

    .line 1522
    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1525
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseDirectRowUnpack(Z)V

    .line 1526
    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1529
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseDynamicCharsetInfo(Z)V

    .line 1530
    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1533
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseFastDateParsing(Z)V

    .line 1534
    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1537
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseFastIntParsing(Z)V

    .line 1538
    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1541
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseGmtMillisForDatetimes(Z)V

    .line 1542
    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1545
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseHostsInPrivileges(Z)V

    .line 1546
    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1549
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseInformationSchema(Z)V

    .line 1550
    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1553
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseJDBCCompliantTimezoneShift(Z)V

    .line 1554
    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1557
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseJvmCharsetConverters(Z)V

    .line 1558
    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1561
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseLegacyDatetimeCode(Z)V

    .line 1562
    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1569
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseLocalSessionState(Z)V

    .line 1570
    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1573
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseLocalTransactionState(Z)V

    .line 1574
    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1577
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseNanosForElapsedTime(Z)V

    .line 1578
    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1581
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseOldAliasMetadataBehavior(Z)V

    .line 1582
    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1585
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseOldUTF8Behavior(Z)V

    .line 1586
    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1589
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseOnlyServerErrorMessages(Z)V

    .line 1590
    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1593
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseReadAheadInput(Z)V

    .line 1594
    return-void
.end method

.method public setUseSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1597
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    .line 1598
    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1601
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSPSCompatibleTimezoneShift(Z)V

    .line 1602
    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1605
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseServerPrepStmts(Z)V

    .line 1606
    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1609
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseServerPreparedStmts(Z)V

    .line 1610
    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1613
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseSqlStateCodes(Z)V

    .line 1614
    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1617
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseStreamLengthsInPrepStmts(Z)V

    .line 1618
    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1621
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseTimezone(Z)V

    .line 1622
    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 1625
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseUltraDevWorkAround(Z)V

    .line 1626
    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1629
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseUnbufferedInput(Z)V

    .line 1630
    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1633
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseUnicode(Z)V

    .line 1634
    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 1
    .param p1, "useUsageAdvisorFlag"    # Z

    .line 1637
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUseUsageAdvisor(Z)V

    .line 1638
    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 1641
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V

    .line 1642
    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 1645
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V

    .line 1646
    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1649
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setVerifyServerCertificate(Z)V

    .line 1650
    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1653
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setYearIsDateType(Z)V

    .line 1654
    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 1
    .param p1, "behavior"    # Ljava/lang/String;

    .line 1657
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setZeroDateTimeBehavior(Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method public shutdownServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2135
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->shutdownServer()V

    .line 2136
    return-void
.end method

.method public storesLowerCaseTableName()Z
    .locals 1

    .line 2139
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .line 2143
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .line 2147
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    .line 2151
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsTransactions()Z

    move-result v0

    return v0
.end method

.method public throwConnectionClosedException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2155
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->throwConnectionClosedException()V

    .line 2156
    return-void
.end method

.method public transactionBegun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2159
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->transactionBegun()V

    .line 2160
    return-void
.end method

.method public transactionCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2163
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->transactionCompleted()V

    .line 2164
    return-void
.end method

.method public unSafeStatementInterceptors()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2171
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->unSafeStatementInterceptors()V

    .line 2172
    return-void
.end method

.method public unregisterStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .param p1, "stmt"    # Lcom/mysql/jdbc/Statement;

    .line 2167
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 2168
    return-void
.end method

.method public useAnsiQuotedIdentifiers()Z
    .locals 1

    .line 2175
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    return v0
.end method

.method public useUnbufferedInput()Z
    .locals 1

    .line 1661
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useUnbufferedInput()Z

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

    .line 2179
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method
