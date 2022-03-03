.class public Lcom/mysql/jdbc/RowDataDynamic;
.super Ljava/lang/Object;
.source "RowDataDynamic.java"

# interfaces
.implements Lcom/mysql/jdbc/RowData;


# instance fields
.field private columnCount:I

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private index:I

.field private io:Lcom/mysql/jdbc/MysqlIO;

.field private isAfterEnd:Z

.field private isBinaryEncoded:Z

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private moreResultsExisted:Z

.field private nextRow:Lcom/mysql/jdbc/ResultSetRow;

.field private noMoreRows:Z

.field private owner:Lcom/mysql/jdbc/ResultSetImpl;

.field private streamerClosed:Z

.field private useBufferRowExplicit:Z

.field private wasEmpty:Z


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V
    .locals 1
    .param p1, "io"    # Lcom/mysql/jdbc/MysqlIO;
    .param p2, "colCount"    # I
    .param p3, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p4, "isBinaryEncoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 45
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 53
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 55
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    .line 78
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 79
    iput p2, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    .line 80
    iput-boolean p4, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 81
    iput-object p3, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 82
    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 83
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    .line 84
    return-void
.end method

.method private nextRecord()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    if-nez v1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v3, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    iget v4, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    iget-boolean v5, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    const/16 v6, 0x3ef

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 369
    if-nez v1, :cond_1

    .line 370
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 371
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 372
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    .line 374
    iget v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 375
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    goto :goto_0

    .line 379
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 380
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    :goto_0
    nop

    .line 400
    return-void

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "RowDataDynamic.2"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, "S1000"

    invoke-static {v0, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 396
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 398
    throw v0

    .line 382
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 383
    .local v1, "sqlEx":Ljava/sql/SQLException;
    instance-of v2, v1, Lcom/mysql/jdbc/StreamingNotifiable;

    if-eqz v2, :cond_2

    .line 384
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/StreamingNotifiable;

    invoke-interface {v2}, Lcom/mysql/jdbc/StreamingNotifiable;->setWasStreamingResults()V

    .line 388
    :cond_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 391
    throw v1
.end method

.method private notSupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 403
    new-instance v0, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {v0}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addRow(Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 0
    .param p1, "row"    # Lcom/mysql/jdbc/ResultSetRow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 96
    return-void
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 106
    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 116
    return-void
.end method

.method public beforeLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 126
    return-void
.end method

.method public close()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    move-object/from16 v1, p0

    move-object/from16 v0, p0

    .line 139
    .local v0, "mutex":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 141
    .local v2, "conn":Lcom/mysql/jdbc/MySQLConnection;
    iget-object v3, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    if-eqz v3, :cond_1

    .line 142
    iget-object v2, v3, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 144
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 144
    :cond_0
    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 141
    :cond_1
    move-object v3, v2

    move-object v2, v0

    .line 149
    .end local v0    # "mutex":Ljava/lang/Object;
    .local v2, "mutex":Ljava/lang/Object;
    .local v3, "conn":Lcom/mysql/jdbc/MySQLConnection;
    :goto_0
    const/4 v0, 0x0

    .line 150
    .local v0, "hadMore":Z
    const/4 v4, 0x0

    .line 152
    .local v4, "howMuchMore":I
    monitor-enter v2

    move v5, v4

    move v4, v0

    .line 154
    .end local v0    # "hadMore":Z
    .local v4, "hadMore":Z
    .local v5, "howMuchMore":I
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/RowDataDynamic;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    const/4 v4, 0x1

    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 158
    rem-int/lit8 v0, v5, 0x64

    if-nez v0, :cond_2

    .line 159
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 163
    :cond_3
    if-eqz v3, :cond_9

    .line 164
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v0

    if-lez v0, :cond_8

    .line 165
    const-string v0, "net_write_timeout"

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "oldValue":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_3

    .line 168
    :cond_5
    :goto_2
    const-string v6, "60"

    move-object v0, v6

    move-object v6, v0

    .line 171
    .end local v0    # "oldValue":Ljava/lang/String;
    .local v6, "oldValue":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    const/4 v7, 0x0

    .line 176
    .local v7, "stmt":Ljava/sql/Statement;
    :try_start_1
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    move-object v7, v0

    .line 177
    move-object v0, v7

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SET net_write_timeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    nop

    .line 197
    if-eqz v7, :cond_6

    .line 180
    :try_start_2
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    :cond_6
    nop

    .line 182
    goto :goto_4

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 179
    :cond_7
    nop

    .end local v2    # "mutex":Ljava/lang/Object;
    .end local v3    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "hadMore":Z
    .end local v5    # "howMuchMore":I
    throw v0

    .line 185
    .end local v6    # "oldValue":Ljava/lang/String;
    .end local v7    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "mutex":Ljava/lang/Object;
    .restart local v3    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v4    # "hadMore":Z
    .restart local v5    # "howMuchMore":I
    :cond_8
    :goto_4
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    if-eqz v4, :cond_9

    .line 187
    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v9, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-string v0, "RowDataDynamic.1"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    iget-object v15, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v15, v15, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v0, v14}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {v6 .. v14}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 193
    :cond_9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 196
    iput-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 197
    return-void

    .line 193
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getAt(I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 1
    .param p1, "ind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentRowNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 224
    const/4 v0, -0x1

    return v0
.end method

.method public getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "hasNext":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 246
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 249
    :cond_1
    return v0
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public moveRowRelative(I)V
    .locals 0
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 335
    return-void
.end method

.method public next()Lcom/mysql/jdbc/ResultSetRow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->nextRecord()V

    .line 348
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 350
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_1

    .line 354
    iget v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 355
    add-int/2addr v2, v1

    iput v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    .line 359
    :cond_1
    return-object v0
.end method

.method public removeRow(I)V
    .locals 0
    .param p1, "ind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 416
    return-void
.end method

.method public setCurrentRow(I)V
    .locals 0
    .param p1, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 428
    return-void
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)V
    .locals 0
    .param p1, "metadata"    # [Lcom/mysql/jdbc/Field;

    .line 451
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 452
    return-void
.end method

.method public setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V
    .locals 0
    .param p1, "rs"    # Lcom/mysql/jdbc/ResultSetImpl;

    .line 434
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 435
    return-void
.end method

.method public size()I
    .locals 1

    .line 443
    const/4 v0, -0x1

    return v0
.end method

.method public wasEmpty()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    return v0
.end method
