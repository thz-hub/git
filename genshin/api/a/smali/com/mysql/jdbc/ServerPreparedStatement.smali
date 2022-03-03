.class public Lcom/mysql/jdbc/ServerPreparedStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;,
        Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;
    }
.end annotation


# static fields
.field protected static final BLOB_STREAM_READ_BUF_SIZE:I = 0x2000

.field private static final JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private canRewrite:Z

.field private defaultTzCalendar:Ljava/util/Calendar;

.field private detectedLongParameterSwitch:Z

.field private fieldCount:I

.field private hasCheckedRewrite:Z

.field private hasOnDuplicateKeyUpdate:Z

.field private invalid:Z

.field private invalidationException:Ljava/sql/SQLException;

.field protected isCached:Z

.field private locationOfOnDuplicateKeyUpdate:I

.field private outByteBuffer:Lcom/mysql/jdbc/Buffer;

.field private parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

.field private parameterFields:[Lcom/mysql/jdbc/Field;

.field private resultFields:[Lcom/mysql/jdbc/Field;

.field private sendTypesToServer:Z

.field private serverNeedsResetBeforeEachExecution:Z

.field private serverStatementId:J

.field private serverTzCalendar:Ljava/util/Calendar;

.field private stringTypeCode:I

.field private useAutoSlowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42ServerPreparedStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4ServerPreparedStatement"

    .line 64
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "jdbc4ClassName":Ljava/lang/String;
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 66
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    .line 76
    :goto_1
    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "resultSetType"    # I
    .param p5, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 369
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 286
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 295
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 312
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 318
    const/16 v1, 0xfe

    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 547
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 2540
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2541
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    .line 2557
    const/4 v2, -0x2

    iput v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 371
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 373
    invoke-static {p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->findStartOfStatement(Ljava/lang/String;)I

    move-result v2

    .line 375
    .local v2, "startOfStatement":I
    invoke-static {p2, v2}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v3

    iput-char v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    .line 377
    iget-char v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    const/4 v4, 0x1

    const/16 v5, 0x49

    if-ne v3, v5, :cond_0

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 379
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    invoke-interface {v3, v5, v0, v0}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v5, v0, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    goto :goto_1

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v5, 0xa

    invoke-interface {v3, v7, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    .line 385
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    .line 386
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v5, 0x15

    const/16 v8, 0x17

    invoke-interface {v3, v6, v5, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useTrueBoolean:Z

    .line 388
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "statementComment":Ljava/lang/String;
    if-nez v3, :cond_2

    move-object v5, p2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " */ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    .line 392
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x2

    invoke-interface {v5, v7, v4, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 393
    const/16 v1, 0xfd

    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    goto :goto_3

    .line 395
    :cond_3
    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 399
    :goto_3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    nop

    .line 413
    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetType(I)V

    .line 414
    invoke-virtual {p0, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetConcurrency(I)V

    .line 416
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterTypes:[I

    .line 417
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 407
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "S1000"

    invoke-static {v0, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 408
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 410
    throw v0

    .line 400
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 401
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 403
    throw v1
.end method

.method private clearParametersInternal(Z)V
    .locals 4
    .param p1, "clearServerParameters"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "hadLongData":Z
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    if-eqz v1, :cond_1

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v1, v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v2, :cond_0

    .line 533
    const/4 v0, 0x1

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 541
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 545
    :cond_2
    return-void
.end method

.method private dumpCloseForTestcase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 585
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 587
    const-string v2, "DEALLOCATE PREPARE debug_stmt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 592
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpExecuteForTestcase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_1

    .line 600
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 602
    const-string v3, "SET @debug_stmt_param"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v3, :cond_0

    .line 609
    const-string v3, "NULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 611
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :goto_1
    const-string v3, ";\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 619
    const-string v2, "EXECUTE debug_stmt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v2, :cond_3

    .line 623
    const-string v2, " USING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_3

    .line 625
    if-lez v2, :cond_2

    .line 626
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_2
    const-string v3, "@debug_stmt_param"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 637
    .end local v2    # "i":I
    :cond_3
    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 640
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPrepareForTestcase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 645
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 647
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 649
    const-string v2, "PREPARE debug_stmt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const-string v2, " FROM \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v2, "\";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 656
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2348
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2349
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 2350
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    .line 2353
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    monitor-exit v0

    return-object v1

    .line 2354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;
    .locals 8
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "resultSetType"    # I
    .param p4, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 331
    const-string v0, "S1000"

    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    new-instance v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 336
    :cond_0
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ServerPreparedStatement;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 347
    .local v2, "target":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/sql/SQLException;

    if-eqz v3, :cond_1

    .line 348
    move-object v0, v2

    check-cast v0, Ljava/sql/SQLException;

    throw v0

    .line 351
    :cond_1
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "target":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 340
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 338
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private getServerTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2338
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2339
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 2340
    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    .line 2343
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    monitor-exit v0

    return-object v1

    .line 2344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 39
    .param p1, "maxRowsToRetrieve"    # I
    .param p2, "createStreamingResultSet"    # Z
    .param p3, "metadataFromCache"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1138
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 1139
    :try_start_0
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    move-object v14, v0

    .line 1141
    .local v14, "mysql":Lcom/mysql/jdbc/MysqlIO;
    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v14, v0, v15, v8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 1144
    .local v0, "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v0, :cond_0

    .line 1145
    monitor-exit v22

    return-object v0

    .line 1149
    .end local v0    # "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_0
    iget-boolean v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    if-eqz v0, :cond_5

    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, "firstFound":Z
    const-wide/16 v1, 0x0

    .line 1154
    .local v1, "boundTimeToCheck":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    sub-int/2addr v4, v8

    if-ge v3, v4, :cond_4

    .line 1155
    iget-object v4, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v4, :cond_3

    .line 1156
    if-eqz v0, :cond_2

    iget-object v4, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    goto :goto_1

    .line 1157
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerPreparedStatement.11"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ServerPreparedStatement.12"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1C00"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v4

    .line 1161
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1162
    iget-object v4, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    move-wide v1, v4

    .line 1154
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v3    # "i":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 1172
    .end local v0    # "firstFound":Z
    .end local v1    # "boundTimeToCheck":J
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_7

    .line 1173
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    if-eqz v1, :cond_6

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1174
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.13"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ServerPreparedStatement.14"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v1

    .line 1183
    .end local v0    # "i":I
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_9

    .line 1184
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v1, :cond_8

    .line 1185
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    invoke-direct {v15, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    .line 1183
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1189
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1190
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpExecuteForTestcase()V

    .line 1197
    :cond_a
    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    move-object v13, v0

    .line 1199
    .local v13, "packet":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1200
    const/16 v0, 0x17

    invoke-virtual {v13, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1201
    iget-wide v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v13, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1203
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-interface {v0, v10, v8, v9}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_c

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isCursorRequired()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1205
    invoke-virtual {v13, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_4

    .line 1207
    :cond_b
    invoke-virtual {v13, v12}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1210
    :goto_4
    const-wide/16 v0, 0x1

    invoke-virtual {v13, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1214
    :cond_c
    iget v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    move v11, v0

    .line 1219
    .local v11, "nullCount":I
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    move v7, v0

    .line 1221
    .local v7, "nullBitsPosition":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v11, :cond_d

    .line 1222
    invoke-virtual {v13, v12}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1225
    .end local v0    # "i":I
    :cond_d
    new-array v0, v11, [B

    move-object v6, v0

    .line 1228
    .local v6, "nullBitsBuffer":[B
    iget-boolean v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v13, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1230
    iget-boolean v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    if-eqz v0, :cond_f

    .line 1234
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_f

    .line 1235
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    invoke-virtual {v13, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1242
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_12

    .line 1243
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-nez v1, :cond_11

    .line 1244
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v1, :cond_10

    .line 1245
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    invoke-direct {v15, v13, v1, v14}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    goto :goto_9

    .line 1247
    :cond_10
    div-int/lit8 v1, v0, 0x8

    aget-byte v2, v6, v1

    and-int/lit8 v3, v0, 0x7

    shl-int v3, v8, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    .line 1242
    :cond_11
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1255
    .end local v0    # "i":I
    :cond_12
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    move v5, v0

    .line 1256
    .local v5, "endPosition":I
    invoke-virtual {v13, v7}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1257
    invoke-virtual {v13, v6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1258
    invoke-virtual {v13, v5}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1260
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    move/from16 v23, v0

    .line 1261
    .local v23, "logSlowQueries":Z
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v0

    move/from16 v24, v0

    .line 1262
    .local v24, "gatherPerformanceMetrics":Z
    iget-boolean v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-nez v0, :cond_14

    if-nez v23, :cond_14

    if-eqz v24, :cond_13

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v0, 0x1

    :goto_b
    move/from16 v25, v0

    .line 1264
    .local v25, "countDuration":Z
    const-wide/16 v18, 0x0

    if-eqz v25, :cond_15

    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v0

    goto :goto_c

    :cond_15
    move-wide/from16 v0, v18

    :goto_c
    move-wide/from16 v26, v0

    .line 1266
    .local v26, "begin":J
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 1268
    const/4 v1, 0x0

    .line 1272
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    if-eqz v25, :cond_16

    :try_start_1
    invoke-virtual {v15, v8}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    .line 1376
    :catchall_0
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    goto/16 :goto_1b

    .line 1369
    :catch_0
    move-exception v0

    move-object/from16 v34, v1

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    goto/16 :goto_1a

    .line 1272
    :cond_16
    :try_start_2
    const-string v0, ""

    :goto_d
    move-object v4, v0

    .line 1274
    .local v4, "queryAsString":Ljava/lang/String;
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v0, :cond_17

    :try_start_3
    iget v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    if-eqz v0, :cond_17

    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v12, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1275
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v15, v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v1, v0

    .line 1276
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v1

    goto :goto_e

    .line 1279
    :cond_17
    move-object v3, v1

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v3, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_e
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->statementBegins()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 1281
    const/16 v2, 0x17

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v1, v14

    move-object v9, v3

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v9, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move-object v3, v0

    move-object/from16 v28, v4

    .end local v4    # "queryAsString":Ljava/lang/String;
    .local v28, "queryAsString":Ljava/lang/String;
    move-object v4, v13

    move/from16 v29, v5

    .end local v5    # "endPosition":I
    .local v29, "endPosition":I
    move/from16 v5, v16

    move-object/from16 v30, v6

    .end local v6    # "nullBitsBuffer":[B
    .local v30, "nullBitsBuffer":[B
    move-object/from16 v6, v17

    move/from16 v31, v7

    .end local v7    # "nullBitsPosition":I
    .local v31, "nullBitsPosition":I
    move/from16 v7, v20

    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v17
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 1283
    .local v17, "resultPacket":Lcom/mysql/jdbc/Buffer;
    if-eqz v25, :cond_18

    :try_start_6
    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "queryEndTime":J
    goto :goto_f

    .line 1376
    .end local v2    # "queryEndTime":J
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v28    # "queryAsString":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v1, v9

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    goto/16 :goto_1b

    .line 1369
    :catch_1
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    goto/16 :goto_1a

    .line 1283
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    :cond_18
    move-wide/from16 v0, v18

    :goto_f
    move-wide/from16 v32, v0

    .line 1285
    .local v32, "queryEndTime":J
    if-eqz v9, :cond_1a

    .line 1286
    invoke-virtual {v9}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1288
    iget-object v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1290
    iget-object v0, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_19

    .line 1294
    const/4 v0, 0x0

    move-object/from16 v34, v0

    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_10

    .line 1291
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_19
    iget-object v0, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v11    # "nullCount":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v23    # "logSlowQueries":Z
    .end local v24    # "gatherPerformanceMetrics":Z
    .end local v25    # "countDuration":Z
    .end local v26    # "begin":J
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1285
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v11    # "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v23    # "logSlowQueries":Z
    .restart local v24    # "gatherPerformanceMetrics":Z
    .restart local v25    # "countDuration":Z
    .restart local v26    # "begin":J
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :cond_1a
    move-object/from16 v34, v9

    .line 1297
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v34, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_10
    :try_start_7
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 1298
    :try_start_8
    iget-boolean v0, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelled:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_1c

    .line 1299
    const/4 v0, 0x0

    .line 1301
    .local v0, "cause":Ljava/sql/SQLException;
    :try_start_9
    iget-boolean v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v2, :cond_1b

    .line 1302
    new-instance v2, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v2}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v2

    goto :goto_11

    .line 1304
    :cond_1b
    new-instance v2, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v2}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v2

    .line 1307
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 1309
    nop

    .end local v11    # "nullCount":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v23    # "logSlowQueries":Z
    .end local v24    # "gatherPerformanceMetrics":Z
    .end local v25    # "countDuration":Z
    .end local v26    # "begin":J
    .end local v28    # "queryAsString":Ljava/lang/String;
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v32    # "queryEndTime":J
    .end local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1311
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v11    # "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v23    # "logSlowQueries":Z
    .restart local v24    # "gatherPerformanceMetrics":Z
    .restart local v25    # "countDuration":Z
    .restart local v26    # "begin":J
    .restart local v28    # "queryAsString":Ljava/lang/String;
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v32    # "queryEndTime":J
    .restart local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :catchall_2
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v2, v28

    goto/16 :goto_19

    :cond_1c
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1313
    if-eqz v25, :cond_1d

    sub-long v18, v32, v26

    :cond_1d
    move-wide/from16 v6, v18

    .line 1314
    .local v6, "elapsedTime":J
    const/4 v0, 0x0

    .line 1316
    .local v0, "queryWasSlow":Z
    if-eqz v23, :cond_21

    .line 1317
    :try_start_b
    iget-boolean v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    if-eqz v1, :cond_1e

    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v1

    goto :goto_12

    :cond_1e
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v6, v1

    if-lez v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_12

    :cond_1f
    const/4 v1, 0x0

    :goto_12
    move v0, v1

    .line 1320
    if-eqz v0, :cond_20

    .line 1321
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "ServerPreparedStatement.15"

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->getSlowQueryThreshold()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v8

    iget-object v8, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v8, v10, v16

    const/4 v8, 0x3

    move-object/from16 v5, v28

    .end local v28    # "queryAsString":Ljava/lang/String;
    .local v5, "queryAsString":Ljava/lang/String;
    aput-object v5, v10, v8

    invoke-static {v4, v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    move-object v8, v5

    const/4 v5, 0x0

    .end local v5    # "queryAsString":Ljava/lang/String;
    .local v8, "queryAsString":Ljava/lang/String;
    move-wide/from16 v35, v6

    .end local v6    # "elapsedTime":J
    .local v35, "elapsedTime":J
    move-object/from16 v37, v8

    .end local v8    # "queryAsString":Ljava/lang/String;
    .local v37, "queryAsString":Ljava/lang/String;
    move-object v8, v9

    move-object v9, v10

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_13

    .line 1320
    .end local v35    # "elapsedTime":J
    .end local v37    # "queryAsString":Ljava/lang/String;
    .restart local v6    # "elapsedTime":J
    .restart local v28    # "queryAsString":Ljava/lang/String;
    :cond_20
    move-wide/from16 v35, v6

    move-object/from16 v37, v28

    .end local v6    # "elapsedTime":J
    .end local v28    # "queryAsString":Ljava/lang/String;
    .restart local v35    # "elapsedTime":J
    .restart local v37    # "queryAsString":Ljava/lang/String;
    goto :goto_13

    .line 1376
    .end local v0    # "queryWasSlow":Z
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v32    # "queryEndTime":J
    .end local v35    # "elapsedTime":J
    .end local v37    # "queryAsString":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v1, v34

    goto/16 :goto_1b

    .line 1369
    :catch_2
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    goto/16 :goto_1a

    .line 1316
    .restart local v0    # "queryWasSlow":Z
    .restart local v6    # "elapsedTime":J
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    .restart local v32    # "queryEndTime":J
    :cond_21
    move-wide/from16 v35, v6

    move-object/from16 v37, v28

    .line 1327
    .end local v6    # "elapsedTime":J
    .end local v28    # "queryAsString":Ljava/lang/String;
    .restart local v35    # "elapsedTime":J
    .restart local v37    # "queryAsString":Ljava/lang/String;
    :goto_13
    if-eqz v24, :cond_22

    .line 1328
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-wide/from16 v9, v35

    .end local v35    # "elapsedTime":J
    .local v9, "elapsedTime":J
    invoke-interface {v1, v9, v10}, Lcom/mysql/jdbc/MySQLConnection;->registerQueryExecutionTime(J)V

    .line 1329
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPreparedExecutes()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_14

    .line 1327
    .end local v9    # "elapsedTime":J
    .restart local v35    # "elapsedTime":J
    :cond_22
    move-wide/from16 v9, v35

    .line 1332
    .end local v35    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    :goto_14
    :try_start_c
    iget-boolean v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v1, :cond_23

    .line 1333
    :try_start_d
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v4, v37

    .end local v37    # "queryAsString":Ljava/lang/String;
    .restart local v4    # "queryAsString":Ljava/lang/String;
    invoke-direct {v15, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v28, v4

    .end local v4    # "queryAsString":Ljava/lang/String;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    move-object/from16 v4, p0

    move-wide/from16 v35, v9

    .end local v9    # "elapsedTime":J
    .restart local v35    # "elapsedTime":J
    move-object/from16 v9, v16

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_15

    .line 1332
    .end local v28    # "queryAsString":Ljava/lang/String;
    .end local v35    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    .restart local v37    # "queryAsString":Ljava/lang/String;
    :cond_23
    move-wide/from16 v35, v9

    move-object/from16 v28, v37

    .line 1337
    .end local v9    # "elapsedTime":J
    .end local v37    # "queryAsString":Ljava/lang/String;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    .restart local v35    # "elapsedTime":J
    :goto_15
    :try_start_e
    iget v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    iget v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    iget-object v3, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    const/16 v18, 0x1

    iget v4, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    int-to-long v4, v4

    move-object v10, v14

    move/from16 v37, v11

    .end local v11    # "nullCount":I
    .local v37, "nullCount":I
    move-object/from16 v11, p0

    const/4 v9, 0x0

    move/from16 v12, p1

    move-object/from16 v38, v13

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v38, "packet":Lcom/mysql/jdbc/Buffer;
    move v13, v1

    move-object v8, v14

    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v8, "mysql":Lcom/mysql/jdbc/MysqlIO;
    move v14, v2

    move-object v7, v15

    move/from16 v15, p2

    move-object/from16 v16, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, p3

    :try_start_f
    invoke-virtual/range {v10 .. v21}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v4

    .line 1340
    .local v4, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {v8}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v1
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v1, :cond_24

    .line 1341
    :try_start_10
    iget-object v2, v7, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1343
    .local v1, "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v1, :cond_24

    .line 1344
    move-object v2, v1

    move-object v10, v2

    .end local v4    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto :goto_16

    .line 1376
    .end local v0    # "queryWasSlow":Z
    .end local v1    # "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v28    # "queryAsString":Ljava/lang/String;
    .end local v32    # "queryEndTime":J
    .end local v35    # "elapsedTime":J
    :catchall_4
    move-exception v0

    move-object v15, v7

    move-object v11, v8

    move-object/from16 v1, v34

    const/4 v12, 0x0

    goto/16 :goto_1b

    .line 1369
    :catch_3
    move-exception v0

    move-object v15, v7

    move-object v11, v8

    const/4 v12, 0x0

    goto/16 :goto_1a

    .line 1348
    .restart local v0    # "queryWasSlow":Z
    .restart local v4    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    .restart local v32    # "queryEndTime":J
    .restart local v35    # "elapsedTime":J
    :cond_24
    move-object v10, v4

    .end local v4    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v10, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :goto_16
    :try_start_11
    iget-boolean v1, v7, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v1, :cond_25

    .line 1349
    iget-object v1, v7, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, v7, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v11

    sub-long v11, v11, v32

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object v15, v7

    move-wide v6, v11

    move-object v11, v8

    .end local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    move-object v8, v13

    const/4 v12, 0x0

    move-object v9, v14

    :try_start_12
    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_17

    .line 1348
    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :cond_25
    move-object v15, v7

    move-object v11, v8

    const/4 v12, 0x0

    .line 1353
    .end local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :goto_17
    if-eqz v0, :cond_26

    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1354
    invoke-static/range {v28 .. v28}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, v28

    .end local v28    # "queryAsString":Ljava/lang/String;
    .local v2, "queryAsString":Ljava/lang/String;
    invoke-virtual {v11, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    goto :goto_18

    .line 1353
    .end local v2    # "queryAsString":Ljava/lang/String;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    :cond_26
    move-object/from16 v2, v28

    .line 1357
    .end local v28    # "queryAsString":Ljava/lang/String;
    .restart local v2    # "queryAsString":Ljava/lang/String;
    :goto_18
    if-nez p2, :cond_27

    iget-boolean v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    if-eqz v1, :cond_27

    .line 1358
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 1361
    :cond_27
    iput-boolean v12, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 1362
    iput-object v10, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1364
    invoke-virtual {v11}, Lcom/mysql/jdbc/MysqlIO;->hadWarnings()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1365
    invoke-virtual {v11}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 1368
    :cond_28
    nop

    .line 1383
    .end local v0    # "queryWasSlow":Z
    .end local v2    # "queryAsString":Ljava/lang/String;
    .end local v10    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v32    # "queryEndTime":J
    .end local v35    # "elapsedTime":J
    :try_start_13
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1378
    if-eqz v34, :cond_29

    .line 1379
    invoke-virtual/range {v34 .. v34}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1380
    iget-object v1, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_29
    move-object v1, v10

    .restart local v0    # "queryWasSlow":Z
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v2    # "queryAsString":Ljava/lang/String;
    move-wide/from16 v3, v32

    .local v3, "queryEndTime":J
    move-object/from16 v5, v17

    .local v5, "resultPacket":Lcom/mysql/jdbc/Buffer;
    move-wide/from16 v6, v35

    .line 1368
    .restart local v6    # "elapsedTime":J
    monitor-exit v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    return-object v10

    .line 1376
    .end local v0    # "queryWasSlow":Z
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "queryAsString":Ljava/lang/String;
    .end local v3    # "queryEndTime":J
    .end local v5    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v6    # "elapsedTime":J
    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_5
    move-exception v0

    move-object v15, v7

    move-object v11, v8

    const/4 v12, 0x0

    move-object/from16 v1, v34

    .end local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    goto/16 :goto_1b

    .line 1369
    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_4
    move-exception v0

    move-object v15, v7

    move-object v11, v8

    const/4 v12, 0x0

    .end local v8    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    goto/16 :goto_1a

    .line 1311
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v28    # "queryAsString":Ljava/lang/String;
    .restart local v32    # "queryEndTime":J
    :catchall_6
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v2, v28

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v28    # "queryAsString":Ljava/lang/String;
    .restart local v2    # "queryAsString":Ljava/lang/String;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    :goto_19
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v23    # "logSlowQueries":Z
    .end local v24    # "gatherPerformanceMetrics":Z
    .end local v25    # "countDuration":Z
    .end local v26    # "begin":J
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 1369
    .end local v2    # "queryAsString":Ljava/lang/String;
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v32    # "queryEndTime":J
    .restart local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v23    # "logSlowQueries":Z
    .restart local v24    # "gatherPerformanceMetrics":Z
    .restart local v25    # "countDuration":Z
    .restart local v26    # "begin":J
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :catch_5
    move-exception v0

    goto/16 :goto_1a

    .line 1311
    .restart local v2    # "queryAsString":Ljava/lang/String;
    .restart local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v32    # "queryEndTime":J
    :catchall_7
    move-exception v0

    goto :goto_19

    .line 1376
    .end local v2    # "queryAsString":Ljava/lang/String;
    .end local v17    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v32    # "queryEndTime":J
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_8
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v1, v34

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_1b

    .line 1369
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_6
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_1a

    .line 1376
    .end local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v9, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_9
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object v1, v9

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_1b

    .line 1369
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_7
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v34, v9

    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto :goto_1a

    .line 1376
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v3, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v5, "endPosition":I
    .local v6, "nullBitsBuffer":[B
    .restart local v7    # "nullBitsPosition":I
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_a
    move-exception v0

    move-object v9, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object v1, v9

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v5    # "endPosition":I
    .end local v6    # "nullBitsBuffer":[B
    .end local v7    # "nullBitsPosition":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto :goto_1b

    .line 1369
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v5    # "endPosition":I
    .restart local v6    # "nullBitsBuffer":[B
    .restart local v7    # "nullBitsPosition":I
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_8
    move-exception v0

    move-object v9, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v34, v9

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v5    # "endPosition":I
    .end local v6    # "nullBitsBuffer":[B
    .end local v7    # "nullBitsPosition":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto :goto_1a

    .line 1376
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v5    # "endPosition":I
    .restart local v6    # "nullBitsBuffer":[B
    .restart local v7    # "nullBitsPosition":I
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_b
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    .end local v5    # "endPosition":I
    .end local v6    # "nullBitsBuffer":[B
    .end local v7    # "nullBitsPosition":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    goto :goto_1b

    .line 1369
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v5    # "endPosition":I
    .restart local v6    # "nullBitsBuffer":[B
    .restart local v7    # "nullBitsPosition":I
    .local v11, "nullCount":I
    .restart local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_9
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v37, v11

    move-object/from16 v38, v13

    move-object v11, v14

    move-object/from16 v34, v1

    .line 1370
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v5    # "endPosition":I
    .end local v6    # "nullBitsBuffer":[B
    .end local v7    # "nullBitsPosition":I
    .end local v13    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v14    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .local v0, "sqlEx":Ljava/sql/SQLException;
    .local v11, "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    :goto_1a
    :try_start_16
    invoke-virtual {v11}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1371
    iget-object v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v3, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1374
    :cond_2a
    nop

    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v23    # "logSlowQueries":Z
    .end local v24    # "gatherPerformanceMetrics":Z
    .end local v25    # "countDuration":Z
    .end local v26    # "begin":J
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 1376
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v23    # "logSlowQueries":Z
    .restart local v24    # "gatherPerformanceMetrics":Z
    .restart local v25    # "countDuration":Z
    .restart local v26    # "begin":J
    .restart local v29    # "endPosition":I
    .restart local v30    # "nullBitsBuffer":[B
    .restart local v31    # "nullBitsPosition":I
    .restart local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v37    # "nullCount":I
    .restart local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :catchall_c
    move-exception v0

    move-object/from16 v1, v34

    .line 1380
    .end local v34    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_1b
    :try_start_17
    iget-object v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1378
    if-eqz v1, :cond_2b

    .line 1379
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1380
    iget-object v2, v15, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    :cond_2b
    nop

    .line 1376
    nop

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "createStreamingResultSet":Z
    .end local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    throw v0

    .line 1383
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v11    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v23    # "logSlowQueries":Z
    .end local v24    # "gatherPerformanceMetrics":Z
    .end local v25    # "countDuration":Z
    .end local v26    # "begin":J
    .end local v29    # "endPosition":I
    .end local v30    # "nullBitsBuffer":[B
    .end local v31    # "nullBitsPosition":I
    .end local v37    # "nullCount":I
    .end local v38    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "createStreamingResultSet":Z
    .restart local p3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :catchall_d
    move-exception v0

    monitor-exit v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    throw v0
.end method

.method private serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 11
    .param p1, "parameterIndex"    # I
    .param p2, "longData"    # Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1412
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    .line 1415
    .local v1, "mysql":Lcom/mysql/jdbc/MysqlIO;
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    move-object v9, v2

    .line 1417
    .local v9, "packet":Lcom/mysql/jdbc/Buffer;
    iget-object v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    move-object v10, v2

    .line 1419
    .local v10, "value":Ljava/lang/Object;
    nop

    instance-of v2, v10, [B

    if-eqz v2, :cond_0

    .line 1420
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1421
    const/16 v2, 0x18

    invoke-virtual {v9, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1422
    iget-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v9, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1423
    invoke-virtual {v9, p1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1425
    iget-object v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v9, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1427
    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    goto :goto_0

    .line 1428
    :cond_0
    instance-of v2, v10, Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 1429
    move-object v2, v10

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {p0, v1, p1, v9, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1430
    :cond_1
    instance-of v2, v10, Ljava/sql/Blob;

    if-eqz v2, :cond_2

    .line 1431
    move-object v2, v10

    check-cast v2, Ljava/sql/Blob;

    invoke-interface {v2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, p1, v9, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1432
    :cond_2
    instance-of v2, v10, Ljava/io/Reader;

    if-eqz v2, :cond_3

    .line 1433
    move-object v2, v10

    check-cast v2, Ljava/io/Reader;

    invoke-direct {p0, v1, p1, v9, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V

    .line 1438
    .end local v1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v9    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "value":Ljava/lang/Object;
    :goto_0
    monitor-exit v0

    .line 1439
    return-void

    .line 1435
    .restart local v1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local v9    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.18"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "longData":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    throw v2

    .line 1438
    .end local v1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local v9    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "value":Ljava/lang/Object;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "longData":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private serverPrepare(Ljava/lang/String;)V
    .locals 21
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1442
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1443
    :try_start_0
    iget-object v0, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    move-object v12, v0

    .line 1445
    .local v12, "mysql":Lcom/mysql/jdbc/MysqlIO;
    iget-object v0, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpPrepareForTestcase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1450
    :cond_0
    :try_start_1
    iget-object v0, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "begin":J
    goto :goto_0

    .end local v2    # "begin":J
    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 1452
    .local v13, "begin":J
    const-string v0, "LOAD DATA"
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p1

    :try_start_2
    invoke-static {v15, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    .line 1454
    const/4 v0, 0x0

    .line 1455
    .local v0, "characterEncoding":Ljava/lang/String;
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 1457
    .local v16, "connectionEncoding":Ljava/lang/String;
    iget-boolean v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez v1, :cond_2

    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v16, :cond_2

    .line 1458
    move-object/from16 v0, v16

    .line 1461
    :cond_2
    const/16 v2, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v12

    move-object/from16 v3, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    move-object v9, v1

    .line 1463
    .local v9, "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v8, 0x4

    const/4 v6, 0x1

    invoke-interface {v1, v8, v6, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    .line 1465
    invoke-virtual {v9, v6}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 1468
    :cond_3
    invoke-virtual {v9, v7}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1471
    :goto_1
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    .line 1472
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    iput v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    .line 1473
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    iput v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    .line 1474
    iget v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v1, v1, [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v1, v2, :cond_4

    .line 1477
    iget-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v3, v2, v1

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1480
    .end local v1    # "i":I
    :cond_4
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPrepares()V

    .line 1482
    iget-boolean v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v1, :cond_5

    .line 1483
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    new-instance v19, Ljava/lang/Throwable;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Throwable;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, p0

    move-wide/from16 v6, v17

    move-object/from16 v8, v19

    move-object/from16 v17, v9

    .end local v9    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    .local v17, "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    move-object/from16 v9, v20

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 1482
    .end local v17    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    :cond_5
    move-object/from16 v17, v9

    .line 1487
    .end local v9    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v17    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    :goto_3
    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    move v1, v6

    .line 1489
    .local v1, "checkEOF":Z
    iget v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v2, :cond_8

    iget-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3, v3}, Lcom/mysql/jdbc/MysqlIO;->isVersion(III)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1490
    iget v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    iput-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1493
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget v4, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v4, :cond_7

    .line 1494
    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1495
    .local v4, "metaDataPacket":Lcom/mysql/jdbc/Buffer;
    iget-object v5, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v12, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1493
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1497
    .end local v2    # "i":I
    .end local v4    # "metaDataPacket":Lcom/mysql/jdbc/Buffer;
    :cond_7
    if-eqz v1, :cond_9

    .line 1498
    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    goto :goto_6

    .line 1489
    :cond_8
    const/4 v3, 0x0

    .line 1503
    :cond_9
    :goto_6
    iget v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-lez v2, :cond_b

    .line 1504
    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    iput-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1507
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget v4, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-ge v2, v4, :cond_a

    .line 1508
    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1509
    .local v4, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    iget-object v5, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v12, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1507
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1511
    .end local v2    # "i":I
    .end local v4    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    :cond_a
    if-eqz v1, :cond_b

    .line 1512
    invoke-virtual {v12}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1515
    .end local v0    # "characterEncoding":Ljava/lang/String;
    .end local v1    # "checkEOF":Z
    .end local v13    # "begin":J
    .end local v16    # "connectionEncoding":Ljava/lang/String;
    .end local v17    # "prepareResultPacket":Lcom/mysql/jdbc/Buffer;
    :cond_b
    nop

    .line 1530
    :try_start_3
    iget-object v0, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1528
    nop

    .line 1529
    .end local v12    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1530
    return-void

    .line 1515
    .restart local v12    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 1527
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_9

    .line 1515
    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    .line 1516
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :goto_8
    :try_start_4
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1518
    .local v1, "messageBuf":Ljava/lang/StringBuilder;
    const-string v2, "\n\nQuery being prepared when exception was thrown:\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v2, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    move-object v0, v2

    .line 1524
    .end local v1    # "messageBuf":Ljava/lang/StringBuilder;
    :cond_c
    nop

    .end local v12    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local p1    # "sql":Ljava/lang/String;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1527
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 1530
    :goto_9
    :try_start_5
    iget-object v1, v10, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1527
    nop

    .end local p1    # "sql":Ljava/lang/String;
    throw v0

    .line 1529
    .end local v12    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    :goto_a
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_a
.end method

.method private serverResetStatement()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1553
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    .line 1555
    .local v2, "mysql":Lcom/mysql/jdbc/MysqlIO;
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    .line 1557
    .local v1, "packet":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1558
    const/16 v3, 0x1a

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1559
    iget-wide v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v1, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1562
    const/16 v3, 0x1a

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-interface {v5, v6, v8, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    nop

    .line 1574
    :try_start_2
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1572
    nop

    .line 1573
    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1574
    return-void

    .line 1571
    .restart local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1565
    :catch_0
    move-exception v3

    .line 1566
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 1567
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1569
    nop

    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    throw v4

    .line 1563
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catch_1
    move-exception v3

    .line 1564
    .local v3, "sqlEx":Ljava/sql/SQLException;
    nop

    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1574
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1571
    throw v3

    .line 1573
    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v2    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 9
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1995
    if-nez p2, :cond_0

    .line 1996
    const/16 v0, 0x5c

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1998
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1999
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2001
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    .line 2002
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2003
    if-eqz p3, :cond_2

    .line 2004
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    goto :goto_0

    .line 2007
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 2009
    .local v1, "sessionCalendar":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v7

    move-object v3, v1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2013
    .end local v0    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v1    # "sessionCalendar":Ljava/util/Calendar;
    :cond_2
    :goto_0
    return-void
.end method

.method private setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 9
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2056
    if-nez p2, :cond_0

    .line 2057
    const/16 v0, 0x5d

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_2

    .line 2059
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 2060
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2062
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendFractionalSeconds:Z

    if-nez v1, :cond_1

    .line 2063
    invoke-static {p2}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object p2

    .line 2066
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_2

    .line 2067
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_1

    .line 2069
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 2072
    .local v1, "sessionCalendar":Ljava/util/Calendar;
    :goto_0
    invoke-static {v1, p3}, Lcom/mysql/jdbc/TimeUtil;->setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    .line 2074
    .end local v1    # "sessionCalendar":Ljava/util/Calendar;
    .local v8, "sessionCalendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2077
    .end local v8    # "sessionCalendar":Ljava/util/Calendar;
    :goto_1
    if-eqz p3, :cond_4

    .line 2078
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    .line 2081
    .end local v0    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :cond_4
    :goto_2
    return-void
.end method

.method private storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V
    .locals 10
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "bindValue"    # Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .param p3, "mysql"    # Lcom/mysql/jdbc/MysqlIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2143
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2145
    :try_start_0
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2150
    .local v1, "value":Ljava/lang/Object;
    iget v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const/16 v3, 0x8

    const/4 v4, 0x4

    sparse-switch v2, :sswitch_data_0

    .line 2203
    .end local v1    # "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2176
    .restart local v1    # "value":Ljava/lang/Object;
    :sswitch_0
    move-object v2, v1

    check-cast v2, Ljava/sql/Time;

    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2164
    :sswitch_1
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2165
    iget-wide v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2166
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 2181
    :sswitch_2
    :try_start_4
    move-object v4, v1

    check-cast v4, Ljava/util/Date;

    iget v6, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iget-object v7, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;ILjava/util/Calendar;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2182
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 2172
    :sswitch_3
    :try_start_6
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2173
    iget-wide v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeDouble(D)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2174
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 2168
    :sswitch_4
    :try_start_8
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2169
    iget v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeFloat(F)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2170
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    .line 2160
    :sswitch_5
    :try_start_a
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2161
    iget-wide v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v2

    int-to-long v2, v3

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2162
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-void

    .line 2156
    :sswitch_6
    const/4 v2, 0x2

    :try_start_c
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2157
    iget-wide v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2158
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-void

    .line 2153
    :sswitch_7
    :try_start_e
    iget-wide v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2154
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-void

    .line 2188
    :sswitch_8
    :try_start_10
    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    .line 2189
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V

    goto :goto_0

    .line 2190
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez v2, :cond_1

    .line 2191
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    iget-object v9, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_0

    .line 2194
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2197
    :goto_0
    :try_start_11
    monitor-exit v0

    return-void

    .line 2204
    .end local v1    # "value":Ljava/lang/Object;
    :goto_1
    monitor-exit v0

    .line 2205
    return-void

    .line 2204
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2200
    :catch_0
    move-exception v1

    .line 2201
    .local v1, "uEE":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.22"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local p3    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    throw v2

    .line 2204
    .end local v1    # "uEE":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local p3    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    :goto_2
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xf -> :sswitch_8
        0xf6 -> :sswitch_8
        0xfd -> :sswitch_8
        0xfe -> :sswitch_8
    .end sparse-switch
.end method

.method private storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;ILjava/util/Calendar;)V
    .locals 5
    .param p1, "intoBuf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "dt"    # Ljava/util/Date;
    .param p3, "mysql"    # Lcom/mysql/jdbc/MysqlIO;
    .param p4, "bufferType"    # I
    .param p5, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2261
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2262
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2263
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;ILjava/util/Calendar;)V

    goto :goto_0

    .line 2265
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V

    .line 2267
    :goto_0
    monitor-exit v0

    .line 2268
    return-void

    .line 2267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V
    .locals 7
    .param p1, "intoBuf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "dt"    # Ljava/util/Date;
    .param p3, "bufferType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2208
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2209
    const/4 v1, 0x0

    .line 2211
    .local v1, "sessionCalendar":Ljava/util/Calendar;
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v2, :cond_1

    .line 2212
    const/16 v2, 0xa

    if-ne p3, v2, :cond_0

    .line 2213
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 2215
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 2218
    :cond_1
    instance-of v2, p2, Ljava/sql/Timestamp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 2222
    :goto_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2225
    .local v2, "oldTime":Ljava/util/Date;
    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2226
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2228
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2230
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2231
    .local v4, "year":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 2232
    .local v5, "month":I
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2234
    .local v3, "date":I
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2235
    int-to-byte v6, v5

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2236
    int-to-byte v6, v3

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2238
    instance-of v6, p2, Ljava/sql/Date;

    if-eqz v6, :cond_3

    .line 2239
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2240
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2241
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_2

    .line 2243
    :cond_3
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2244
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2245
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    .end local v3    # "date":I
    .end local v4    # "year":I
    .end local v5    # "month":I
    :goto_2
    nop

    .line 2251
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2249
    nop

    .line 2250
    .end local v1    # "sessionCalendar":Ljava/util/Calendar;
    .end local v2    # "oldTime":Ljava/util/Date;
    monitor-exit v0

    .line 2251
    return-void

    .line 2248
    .restart local v1    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v2    # "oldTime":Ljava/util/Date;
    :catchall_0
    move-exception v3

    .line 2251
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2248
    nop

    .end local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "dt":Ljava/util/Date;
    .end local p3    # "bufferType":I
    throw v3

    .line 2250
    .end local v1    # "sessionCalendar":Ljava/util/Calendar;
    .end local v2    # "oldTime":Ljava/util/Date;
    .restart local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "dt":Ljava/util/Date;
    .restart local p3    # "bufferType":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;ILjava/util/Calendar;)V
    .locals 16
    .param p1, "intoBuf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "dt"    # Ljava/util/Date;
    .param p3, "bufferType"    # I
    .param p4, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2271
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2272
    move-object/from16 v0, p4

    .line 2274
    .local v0, "sessionCalendar":Ljava/util/Calendar;
    if-nez p4, :cond_3

    .line 2275
    :try_start_0
    iget-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 2276
    const/16 v5, 0xa

    move/from16 v6, p3

    if-ne v6, v5, :cond_0

    .line 2277
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 2279
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 2282
    :cond_1
    move/from16 v6, p3

    instance-of v5, v3, Ljava/sql/Timestamp;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v5

    :goto_0
    move-object v0, v5

    goto :goto_1

    .line 2334
    .end local v0    # "sessionCalendar":Ljava/util/Calendar;
    :catchall_0
    move-exception v0

    move/from16 v6, p3

    goto/16 :goto_3

    .line 2274
    .restart local v0    # "sessionCalendar":Ljava/util/Calendar;
    :cond_3
    move/from16 v6, p3

    move-object v5, v0

    .line 2287
    .end local v0    # "sessionCalendar":Ljava/util/Calendar;
    .local v5, "sessionCalendar":Ljava/util/Calendar;
    :goto_1
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v0

    .line 2290
    .local v7, "oldTime":Ljava/util/Date;
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2292
    instance-of v0, v3, Ljava/sql/Date;

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    .line 2293
    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 2294
    invoke-virtual {v5, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 2295
    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 2298
    :cond_4
    const/4 v0, 0x7

    .line 2300
    .local v0, "length":B
    instance-of v12, v3, Ljava/sql/Timestamp;

    if-eqz v12, :cond_5

    .line 2301
    const/16 v0, 0xb

    .line 2304
    :cond_5
    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2306
    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2308
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 2309
    .local v13, "year":I
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v12

    .line 2310
    .local v14, "month":I
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 2312
    .local v12, "date":I
    invoke-virtual {v2, v13}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2313
    int-to-byte v15, v14

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2314
    int-to-byte v15, v12

    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2316
    instance-of v15, v3, Ljava/sql/Date;

    if-eqz v15, :cond_6

    .line 2317
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2318
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2319
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_2

    .line 2321
    :cond_6
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-byte v11, v11

    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2322
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2323
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v2, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2326
    :goto_2
    if-ne v0, v10, :cond_7

    .line 2328
    move-object v8, v3

    check-cast v8, Ljava/sql/Timestamp;

    invoke-virtual {v8}, Ljava/sql/Timestamp;->getNanos()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v2, v8, v9}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2331
    .end local v0    # "length":B
    .end local v12    # "date":I
    .end local v13    # "year":I
    .end local v14    # "month":I
    :cond_7
    nop

    .line 2335
    :try_start_3
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2333
    nop

    .line 2334
    .end local v5    # "sessionCalendar":Ljava/util/Calendar;
    .end local v7    # "oldTime":Ljava/util/Date;
    monitor-exit v4

    .line 2335
    return-void

    .line 2332
    .restart local v5    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v7    # "oldTime":Ljava/util/Date;
    :catchall_1
    move-exception v0

    .line 2335
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2332
    nop

    .end local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "dt":Ljava/util/Date;
    .end local p3    # "bufferType":I
    .end local p4    # "cal":Ljava/util/Calendar;
    throw v0

    .line 2334
    .end local v5    # "sessionCalendar":Ljava/util/Calendar;
    .end local v7    # "oldTime":Ljava/util/Date;
    .restart local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "dt":Ljava/util/Date;
    .restart local p3    # "bufferType":I
    .restart local p4    # "cal":Ljava/util/Calendar;
    :catchall_2
    move-exception v0

    :goto_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V
    .locals 27
    .param p1, "mysql"    # Lcom/mysql/jdbc/MysqlIO;
    .param p2, "parameterIndex"    # I
    .param p3, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p4, "inStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2361
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 2362
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2364
    .local v13, "forcedEncoding":Ljava/lang/String;
    if-nez v13, :cond_0

    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    move-object v9, v0

    .line 2366
    .local v9, "clobEncoding":Ljava/lang/String;
    const/4 v0, 0x2

    .line 2368
    .local v0, "maxBytesChar":I
    if-eqz v9, :cond_3

    .line 2369
    const-string v3, "UTF-16"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2370
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v9}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 2372
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2373
    const/4 v0, 0x2

    move/from16 v22, v0

    goto :goto_1

    .line 2372
    :cond_1
    move/from16 v22, v0

    goto :goto_1

    .line 2376
    :cond_2
    const/4 v0, 0x4

    move/from16 v22, v0

    goto :goto_1

    .line 2368
    :cond_3
    move/from16 v22, v0

    .line 2380
    .end local v0    # "maxBytesChar":I
    .local v22, "maxBytesChar":I
    :goto_1
    const/16 v0, 0x2000

    div-int v0, v0, v22

    new-array v0, v0, [C

    move-object v8, v0

    .line 2382
    .local v8, "buf":[C
    const/4 v3, 0x0

    .line 2384
    .local v3, "numRead":I
    const/4 v4, 0x0

    .line 2385
    .local v4, "bytesInPacket":I
    const/4 v5, 0x0

    .line 2386
    .local v5, "totalBytesRead":I
    const/4 v6, 0x0

    .line 2387
    .local v6, "bytesReadAtLastSend":I
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move v7, v0

    .line 2390
    .local v7, "packetIsFullAt":I
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2391
    const/16 v0, 0x18

    invoke-virtual {v10, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2392
    iget-wide v14, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v10, v14, v15}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2393
    invoke-virtual {v10, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 2395
    const/4 v14, 0x0

    move/from16 v23, v4

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    .line 2397
    .end local v4    # "bytesInPacket":I
    .local v5, "bytesReadAtLastSend":I
    .local v6, "totalBytesRead":I
    .local v14, "readAny":Z
    .local v23, "bytesInPacket":I
    :goto_2
    :try_start_2
    invoke-virtual {v11, v8}, Ljava/io/Reader;->read([C)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v19, v4

    .end local v3    # "numRead":I
    .local v19, "numRead":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_5

    .line 2398
    const/16 v24, 0x1

    .line 2400
    .end local v14    # "readAny":Z
    .local v24, "readAny":Z
    const/4 v15, 0x0

    :try_start_3
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v21

    move-object v14, v8

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v21}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v3

    move-object v14, v3

    .line 2403
    .local v14, "valueAsBytes":[B
    const/4 v3, 0x0

    array-length v4, v14

    invoke-virtual {v10, v14, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 2405
    array-length v3, v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int v15, v23, v3

    .line 2406
    .end local v23    # "bytesInPacket":I
    .local v15, "bytesInPacket":I
    :try_start_4
    array-length v3, v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int v16, v6, v3

    .line 2408
    .end local v6    # "totalBytesRead":I
    .local v16, "totalBytesRead":I
    if-lt v15, v7, :cond_4

    .line 2409
    move/from16 v17, v16

    .line 2411
    .end local v5    # "bytesReadAtLastSend":I
    .local v17, "bytesReadAtLastSend":I
    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v25, v7

    .end local v7    # "packetIsFullAt":I
    .local v25, "packetIsFullAt":I
    move/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "buf":[C
    .local v18, "buf":[C
    move-object/from16 v8, v20

    move-object/from16 v20, v9

    .end local v9    # "clobEncoding":Ljava/lang/String;
    .local v20, "clobEncoding":Ljava/lang/String;
    move/from16 v9, v21

    :try_start_5
    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2413
    const/4 v4, 0x0

    .line 2414
    .end local v15    # "bytesInPacket":I
    .restart local v4    # "bytesInPacket":I
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2415
    invoke-virtual {v10, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2416
    iget-wide v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v10, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2417
    invoke-virtual {v10, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v23, v4

    move/from16 v5, v17

    goto :goto_3

    .line 2435
    .end local v14    # "valueAsBytes":[B
    .end local v24    # "readAny":Z
    :catchall_0
    move-exception v0

    move-object v7, v0

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v3, v19

    goto/16 :goto_7

    .line 2428
    :catch_0
    move-exception v0

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v3, v19

    goto/16 :goto_6

    .line 2435
    .end local v4    # "bytesInPacket":I
    .restart local v15    # "bytesInPacket":I
    :catchall_1
    move-exception v0

    move-object v7, v0

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v3, v19

    goto/16 :goto_7

    .line 2428
    :catch_1
    move-exception v0

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v3, v19

    goto/16 :goto_6

    .line 2408
    .end local v17    # "bytesReadAtLastSend":I
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v5    # "bytesReadAtLastSend":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v14    # "valueAsBytes":[B
    .restart local v24    # "readAny":Z
    :cond_4
    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    move/from16 v23, v15

    .line 2419
    .end local v14    # "valueAsBytes":[B
    .end local v15    # "bytesInPacket":I
    .restart local v23    # "bytesInPacket":I
    :goto_3
    move/from16 v6, v16

    move-object/from16 v8, v18

    move/from16 v3, v19

    move-object/from16 v9, v20

    move/from16 v14, v24

    move/from16 v7, v25

    goto/16 :goto_2

    .line 2435
    .end local v16    # "totalBytesRead":I
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v23    # "bytesInPacket":I
    .end local v24    # "readAny":Z
    .end local v25    # "packetIsFullAt":I
    .restart local v6    # "totalBytesRead":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v15    # "bytesInPacket":I
    :catchall_2
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v7, v0

    move v4, v15

    move/from16 v3, v19

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto/16 :goto_7

    .line 2428
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move v4, v15

    move/from16 v3, v19

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto/16 :goto_6

    .line 2435
    .end local v15    # "bytesInPacket":I
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v23    # "bytesInPacket":I
    :catchall_3
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v7, v0

    move/from16 v3, v19

    move/from16 v4, v23

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto/16 :goto_7

    .line 2428
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 v3, v19

    move/from16 v4, v23

    move/from16 v26, v6

    move v6, v5

    move/from16 v5, v26

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto/16 :goto_6

    .line 2421
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    .local v14, "readAny":Z
    :cond_5
    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    if-eq v6, v5, :cond_6

    .line 2422
    const/16 v4, 0x18

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move v15, v5

    .end local v5    # "bytesReadAtLastSend":I
    .local v15, "bytesReadAtLastSend":I
    move-object v5, v0

    move/from16 v16, v6

    .end local v6    # "totalBytesRead":I
    .restart local v16    # "totalBytesRead":I
    move-object/from16 v6, p3

    :try_start_7
    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    goto :goto_4

    .line 2435
    .end local v14    # "readAny":Z
    :catchall_4
    move-exception v0

    move-object v7, v0

    move v6, v15

    move/from16 v5, v16

    move/from16 v3, v19

    move/from16 v4, v23

    goto/16 :goto_7

    .line 2428
    :catch_4
    move-exception v0

    move v6, v15

    move/from16 v5, v16

    move/from16 v3, v19

    move/from16 v4, v23

    goto/16 :goto_6

    .line 2421
    .end local v15    # "bytesReadAtLastSend":I
    .end local v16    # "totalBytesRead":I
    .restart local v5    # "bytesReadAtLastSend":I
    .restart local v6    # "totalBytesRead":I
    .restart local v14    # "readAny":Z
    :cond_6
    move v15, v5

    move/from16 v16, v6

    .line 2425
    .end local v5    # "bytesReadAtLastSend":I
    .end local v6    # "totalBytesRead":I
    .restart local v15    # "bytesReadAtLastSend":I
    .restart local v16    # "totalBytesRead":I
    :goto_4
    if-nez v14, :cond_7

    .line 2426
    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2428
    .end local v14    # "readAny":Z
    :cond_7
    nop

    .line 2446
    :try_start_8
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v0, :cond_8

    .line 2436
    if-eqz v11, :cond_8

    .line 2438
    :try_start_9
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 2441
    goto :goto_5

    .line 2439
    :catch_5
    move-exception v0

    .line 2441
    :cond_8
    :goto_5
    nop

    .line 2444
    nop

    .line 2445
    .end local v13    # "forcedEncoding":Ljava/lang/String;
    .end local v15    # "bytesReadAtLastSend":I
    .end local v16    # "totalBytesRead":I
    .end local v18    # "buf":[C
    .end local v19    # "numRead":I
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v22    # "maxBytesChar":I
    .end local v23    # "bytesInPacket":I
    .end local v25    # "packetIsFullAt":I
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 2446
    return-void

    .line 2435
    .restart local v3    # "numRead":I
    .restart local v5    # "bytesReadAtLastSend":I
    .restart local v6    # "totalBytesRead":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v13    # "forcedEncoding":Ljava/lang/String;
    .restart local v22    # "maxBytesChar":I
    .restart local v23    # "bytesInPacket":I
    :catchall_5
    move-exception v0

    move v15, v5

    move/from16 v16, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v7, v0

    move v6, v15

    move/from16 v5, v16

    move/from16 v4, v23

    .end local v5    # "bytesReadAtLastSend":I
    .end local v6    # "totalBytesRead":I
    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v15    # "bytesReadAtLastSend":I
    .restart local v16    # "totalBytesRead":I
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto :goto_7

    .line 2428
    .end local v15    # "bytesReadAtLastSend":I
    .end local v16    # "totalBytesRead":I
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v5    # "bytesReadAtLastSend":I
    .restart local v6    # "totalBytesRead":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    :catch_6
    move-exception v0

    move v15, v5

    move/from16 v16, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move v6, v15

    move/from16 v5, v16

    move/from16 v4, v23

    .end local v5    # "bytesReadAtLastSend":I
    .end local v6    # "totalBytesRead":I
    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v15    # "bytesReadAtLastSend":I
    .restart local v16    # "totalBytesRead":I
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto :goto_6

    .line 2435
    .end local v15    # "bytesReadAtLastSend":I
    .end local v16    # "totalBytesRead":I
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v23    # "bytesInPacket":I
    .end local v25    # "packetIsFullAt":I
    .restart local v4    # "bytesInPacket":I
    .local v5, "totalBytesRead":I
    .local v6, "bytesReadAtLastSend":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v7, v0

    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    goto :goto_7

    .line 2428
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v25    # "packetIsFullAt":I
    .restart local v7    # "packetIsFullAt":I
    .restart local v8    # "buf":[C
    .restart local v9    # "clobEncoding":Ljava/lang/String;
    :catch_7
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    .line 2429
    .end local v7    # "packetIsFullAt":I
    .end local v8    # "buf":[C
    .end local v9    # "clobEncoding":Ljava/lang/String;
    .local v0, "ioEx":Ljava/io/IOException;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v25    # "packetIsFullAt":I
    :goto_6
    :try_start_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServerPreparedStatement.24"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v7

    .line 2431
    .local v7, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v7, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2433
    nop

    .end local v3    # "numRead":I
    .end local v4    # "bytesInPacket":I
    .end local v5    # "totalBytesRead":I
    .end local v6    # "bytesReadAtLastSend":I
    .end local v13    # "forcedEncoding":Ljava/lang/String;
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v22    # "maxBytesChar":I
    .end local v25    # "packetIsFullAt":I
    .end local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local p2    # "parameterIndex":I
    .end local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "inStream":Ljava/io/Reader;
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2435
    .end local v0    # "ioEx":Ljava/io/IOException;
    .end local v7    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "numRead":I
    .restart local v4    # "bytesInPacket":I
    .restart local v5    # "totalBytesRead":I
    .restart local v6    # "bytesReadAtLastSend":I
    .restart local v13    # "forcedEncoding":Ljava/lang/String;
    .restart local v18    # "buf":[C
    .restart local v20    # "clobEncoding":Ljava/lang/String;
    .restart local v22    # "maxBytesChar":I
    .restart local v25    # "packetIsFullAt":I
    .restart local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p2    # "parameterIndex":I
    .restart local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "inStream":Ljava/io/Reader;
    :catchall_7
    move-exception v0

    move-object v7, v0

    .line 2441
    :goto_7
    :try_start_c
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v0, :cond_9

    .line 2436
    if-eqz v11, :cond_a

    .line 2438
    :try_start_d
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_8

    .line 2439
    :catch_8
    move-exception v0

    goto :goto_9

    .line 2441
    :cond_9
    :goto_8
    nop

    :cond_a
    :goto_9
    nop

    .line 2435
    nop

    .end local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local p2    # "parameterIndex":I
    .end local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "inStream":Ljava/io/Reader;
    :try_start_e
    throw v7

    .line 2445
    .end local v3    # "numRead":I
    .end local v4    # "bytesInPacket":I
    .end local v5    # "totalBytesRead":I
    .end local v6    # "bytesReadAtLastSend":I
    .end local v13    # "forcedEncoding":Ljava/lang/String;
    .end local v18    # "buf":[C
    .end local v20    # "clobEncoding":Ljava/lang/String;
    .end local v22    # "maxBytesChar":I
    .end local v25    # "packetIsFullAt":I
    .restart local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p2    # "parameterIndex":I
    .restart local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "inStream":Ljava/io/Reader;
    :catchall_8
    move-exception v0

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v0
.end method

.method private storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V
    .locals 21
    .param p1, "mysql"    # Lcom/mysql/jdbc/MysqlIO;
    .param p2, "parameterIndex"    # I
    .param p3, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p4, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2449
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 2450
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v13, v0

    .line 2452
    .local v13, "buf":[B
    const/4 v3, 0x0

    .line 2455
    .local v3, "numRead":I
    const/4 v0, 0x0

    .line 2456
    .local v0, "bytesInPacket":I
    const/4 v4, 0x0

    .line 2457
    .local v4, "totalBytesRead":I
    const/4 v5, 0x0

    .line 2458
    .local v5, "bytesReadAtLastSend":I
    :try_start_1
    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v6

    move v14, v6

    .line 2460
    .local v14, "packetIsFullAt":I
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2461
    const/16 v15, 0x18

    invoke-virtual {v10, v15}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2462
    iget-wide v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v10, v6, v7}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2463
    invoke-virtual {v10, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2465
    const/4 v6, 0x0

    move v9, v4

    move v8, v5

    move/from16 v16, v6

    .line 2467
    .end local v4    # "totalBytesRead":I
    .end local v5    # "bytesReadAtLastSend":I
    .local v8, "bytesReadAtLastSend":I
    .local v9, "totalBytesRead":I
    .local v16, "readAny":Z
    :goto_0
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v7, v4

    .end local v3    # "numRead":I
    .local v7, "numRead":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    .line 2469
    const/16 v16, 0x1

    .line 2471
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v10, v13, v3, v7}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2472
    add-int/2addr v0, v7

    .line 2473
    add-int v17, v9, v7

    .line 2475
    .end local v9    # "totalBytesRead":I
    .local v17, "totalBytesRead":I
    if-lt v0, v14, :cond_0

    .line 2476
    move/from16 v18, v17

    .line 2478
    .end local v8    # "bytesReadAtLastSend":I
    .local v18, "bytesReadAtLastSend":I
    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v20, v7

    .end local v7    # "numRead":I
    .local v20, "numRead":I
    move v7, v8

    move-object v8, v9

    move/from16 v9, v19

    :try_start_3
    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2480
    const/4 v0, 0x0

    .line 2481
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2482
    invoke-virtual {v10, v15}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2483
    iget-wide v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v10, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2484
    invoke-virtual {v10, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move/from16 v9, v17

    move/from16 v8, v18

    move/from16 v3, v20

    goto :goto_0

    .line 2475
    .end local v18    # "bytesReadAtLastSend":I
    .end local v20    # "numRead":I
    .restart local v7    # "numRead":I
    .restart local v8    # "bytesReadAtLastSend":I
    :cond_0
    move/from16 v20, v7

    .end local v7    # "numRead":I
    .restart local v20    # "numRead":I
    move/from16 v9, v17

    move/from16 v3, v20

    goto :goto_0

    .line 2502
    .end local v0    # "bytesInPacket":I
    .end local v8    # "bytesReadAtLastSend":I
    .end local v14    # "packetIsFullAt":I
    .end local v16    # "readAny":Z
    .end local v17    # "totalBytesRead":I
    .end local v20    # "numRead":I
    .restart local v7    # "numRead":I
    :catchall_0
    move-exception v0

    move/from16 v20, v7

    move-object v4, v0

    move/from16 v3, v20

    .end local v7    # "numRead":I
    .restart local v20    # "numRead":I
    goto/16 :goto_4

    .line 2495
    .end local v20    # "numRead":I
    .restart local v7    # "numRead":I
    :catch_0
    move-exception v0

    move/from16 v20, v7

    move/from16 v3, v20

    .end local v7    # "numRead":I
    .restart local v20    # "numRead":I
    goto :goto_3

    .line 2488
    .end local v20    # "numRead":I
    .restart local v0    # "bytesInPacket":I
    .restart local v7    # "numRead":I
    .restart local v8    # "bytesReadAtLastSend":I
    .restart local v9    # "totalBytesRead":I
    .restart local v14    # "packetIsFullAt":I
    .restart local v16    # "readAny":Z
    :cond_1
    move/from16 v20, v7

    .end local v7    # "numRead":I
    .restart local v20    # "numRead":I
    if-eq v9, v8, :cond_2

    .line 2489
    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v18, v8

    .end local v8    # "bytesReadAtLastSend":I
    .restart local v18    # "bytesReadAtLastSend":I
    move-object v8, v15

    move v15, v9

    .end local v9    # "totalBytesRead":I
    .local v15, "totalBytesRead":I
    move/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    goto :goto_1

    .line 2502
    .end local v0    # "bytesInPacket":I
    .end local v14    # "packetIsFullAt":I
    .end local v15    # "totalBytesRead":I
    .end local v16    # "readAny":Z
    .end local v18    # "bytesReadAtLastSend":I
    :catchall_1
    move-exception v0

    move-object v4, v0

    move/from16 v3, v20

    goto :goto_4

    .line 2495
    :catch_1
    move-exception v0

    move/from16 v3, v20

    goto :goto_3

    .line 2488
    .restart local v0    # "bytesInPacket":I
    .restart local v8    # "bytesReadAtLastSend":I
    .restart local v9    # "totalBytesRead":I
    .restart local v14    # "packetIsFullAt":I
    .restart local v16    # "readAny":Z
    :cond_2
    move/from16 v18, v8

    move v15, v9

    .line 2492
    .end local v8    # "bytesReadAtLastSend":I
    .end local v9    # "totalBytesRead":I
    .restart local v15    # "totalBytesRead":I
    .restart local v18    # "bytesReadAtLastSend":I
    :goto_1
    if-nez v16, :cond_3

    .line 2493
    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2495
    .end local v0    # "bytesInPacket":I
    .end local v14    # "packetIsFullAt":I
    .end local v15    # "totalBytesRead":I
    .end local v16    # "readAny":Z
    .end local v18    # "bytesReadAtLastSend":I
    :cond_3
    nop

    .line 2513
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_4

    .line 2503
    if-eqz v11, :cond_4

    .line 2505
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2508
    goto :goto_2

    .line 2506
    :catch_2
    move-exception v0

    .line 2508
    :cond_4
    :goto_2
    nop

    .line 2511
    nop

    .line 2512
    .end local v13    # "buf":[B
    .end local v20    # "numRead":I
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2513
    return-void

    .line 2502
    .restart local v3    # "numRead":I
    .restart local v13    # "buf":[B
    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_4

    .line 2495
    :catch_3
    move-exception v0

    .line 2496
    .local v0, "ioEx":Ljava/io/IOException;
    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerPreparedStatement.25"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 2498
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2500
    nop

    .end local v3    # "numRead":I
    .end local v13    # "buf":[B
    .end local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local p2    # "parameterIndex":I
    .end local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2508
    .end local v0    # "ioEx":Ljava/io/IOException;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "numRead":I
    .restart local v13    # "buf":[B
    .restart local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p2    # "parameterIndex":I
    .restart local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "inStream":Ljava/io/InputStream;
    :goto_4
    :try_start_8
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_5

    .line 2503
    if-eqz v11, :cond_6

    .line 2505
    :try_start_9
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    .line 2506
    :catch_4
    move-exception v0

    goto :goto_6

    .line 2508
    :cond_5
    :goto_5
    nop

    :cond_6
    :goto_6
    nop

    .line 2502
    nop

    .end local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .end local p2    # "parameterIndex":I
    .end local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "inStream":Ljava/io/InputStream;
    :try_start_a
    throw v4

    .line 2512
    .end local v3    # "numRead":I
    .end local v13    # "buf":[B
    .restart local p1    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    .restart local p2    # "parameterIndex":I
    .restart local p3    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "inStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method private storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    .locals 3
    .param p1, "intoBuf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "tm"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 259
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 260
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 262
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 264
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    .line 266
    .local v0, "sessionCalendar":Ljava/util/Calendar;
    monitor-enter v0

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    .local v1, "oldTime":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 270
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 271
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 272
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    nop

    .line 279
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    nop

    .line 278
    .end local v1    # "oldTime":Ljava/util/Date;
    monitor-exit v0

    .line 279
    return-void

    .line 276
    .restart local v1    # "oldTime":Ljava/util/Date;
    :catchall_0
    move-exception v2

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 276
    nop

    .end local v0    # "sessionCalendar":Ljava/util/Calendar;
    .end local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "tm":Ljava/sql/Time;
    throw v2

    .line 278
    .end local v1    # "oldTime":Ljava/util/Date;
    .restart local v0    # "sessionCalendar":Ljava/util/Calendar;
    .restart local p1    # "intoBuf":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "tm":Ljava/sql/Time;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1533
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1534
    const/4 v1, 0x0

    .line 1536
    .local v1, "query":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1537
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1538
    .local v2, "queryBuf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    const-string v3, "MysqlIO.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1542
    .end local v2    # "queryBuf":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 1543
    :cond_0
    move-object v1, p1

    .line 1546
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1547
    .end local v1    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v2, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;-><init>([Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 9
    .param p1, "quoteStreamsAndUnknowns"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 444
    const/4 v1, 0x0

    .line 447
    .local v1, "pStmtForSub":Lcom/mysql/jdbc/PreparedStatement;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 449
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 450
    .local v2, "numParameters":I
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    .line 452
    .local v3, "ourNumParameters":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    if-ge v4, v3, :cond_2

    .line 453
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v6, v5, v4

    if-eqz v6, :cond_1

    .line 454
    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v5, :cond_0

    .line 455
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_2

    .line 457
    :cond_0
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v5, v5, v4

    .line 462
    .local v5, "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    iget v6, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    packed-switch v6, :pswitch_data_0

    .line 483
    :pswitch_0
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    goto :goto_1

    .line 474
    :pswitch_1
    add-int/lit8 v6, v4, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {v1, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 475
    goto :goto_2

    .line 480
    :pswitch_2
    add-int/lit8 v6, v4, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {v1, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 481
    goto :goto_2

    .line 477
    :pswitch_3
    add-int/lit8 v6, v4, 0x1

    iget v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {v1, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 478
    goto :goto_2

    .line 471
    :pswitch_4
    add-int/lit8 v6, v4, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v8, v7

    invoke-virtual {v1, v6, v8}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 472
    goto :goto_2

    .line 468
    :pswitch_5
    add-int/lit8 v6, v4, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v8, v7

    int-to-short v7, v8

    invoke-virtual {v1, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    .line 469
    goto :goto_2

    .line 465
    :pswitch_6
    add-int/lit8 v6, v4, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v1, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    .line 466
    goto :goto_2

    .line 483
    :goto_1
    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 452
    .end local v5    # "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 490
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v2    # "numParameters":I
    .end local v3    # "ourNumParameters":I
    if-eqz v1, :cond_3

    .line 494
    :try_start_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    goto :goto_3

    .line 495
    :catch_0
    move-exception v5

    .line 497
    :cond_3
    :goto_3
    nop

    .line 490
    .restart local v2    # "numParameters":I
    .restart local v3    # "ourNumParameters":I
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v4

    .line 492
    .end local v2    # "numParameters":I
    .end local v3    # "ourNumParameters":I
    :catchall_0
    move-exception v2

    .line 497
    if-eqz v1, :cond_4

    .line 494
    :try_start_3
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 500
    .end local v1    # "pStmtForSub":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 495
    .restart local v1    # "pStmtForSub":Lcom/mysql/jdbc/PreparedStatement;
    :catch_1
    move-exception v3

    goto :goto_5

    .line 497
    :cond_4
    :goto_4
    nop

    :goto_5
    nop

    .line 492
    nop

    .end local p1    # "quoteStreamsAndUnknowns":Z
    :try_start_4
    throw v2

    .line 500
    .end local v1    # "pStmtForSub":Lcom/mysql/jdbc/PreparedStatement;
    .restart local p1    # "quoteStreamsAndUnknowns":Z
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2545
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2546
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    if-nez v1, :cond_0

    .line 2547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2548
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isOnDuplicateKeyUpdate()Z

    move-result v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    .line 2550
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 2553
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    monitor-exit v0

    return v1

    .line 2554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 510
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    if-nez v0, :cond_0

    .line 514
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    throw v0
.end method

.method public clearParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 523
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

    .line 524
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 566
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 571
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    if-nez v2, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParameters()V

    .line 573
    iput-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 574
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/MySQLConnection;->recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 575
    monitor-exit v1

    return-void

    .line 578
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 579
    invoke-virtual {p0, v3, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 580
    monitor-exit v1

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected computeMaxParameterSetSizeAndBatchSize(I)[J
    .locals 17
    .param p1, "numBatchedArgs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2585
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2586
    const-wide/16 v3, 0xa

    .line 2587
    .local v3, "sizeOfEntireBatch":J
    const-wide/16 v5, 0x0

    .line 2589
    .local v5, "maxSizeOfParameterSet":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v7, 0x2

    move/from16 v8, p1

    if-ge v0, v8, :cond_4

    .line 2590
    :try_start_0
    iget-object v9, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v9, v9, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 2592
    .local v9, "paramArg":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const-wide/16 v10, 0x0

    .line 2594
    .local v10, "sizeOfParameterSet":J
    iget v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v12, v12, 0x7

    div-int/lit8 v12, v12, 0x8

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 2596
    iget v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    mul-int/lit8 v12, v12, 0x2

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 2598
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v12, v12

    if-ge v7, v12, :cond_2

    .line 2599
    aget-object v12, v9, v7

    iget-boolean v12, v12, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v12, :cond_1

    .line 2601
    aget-object v12, v9, v7

    invoke-virtual {v12}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->getBoundLength()J

    move-result-wide v12

    .line 2603
    .local v12, "size":J
    aget-object v14, v9, v7

    iget-boolean v14, v14, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v14, :cond_0

    .line 2604
    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-eqz v16, :cond_1

    .line 2605
    add-long/2addr v10, v12

    goto :goto_2

    .line 2608
    :cond_0
    add-long/2addr v10, v12

    .line 2598
    .end local v12    # "size":J
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2613
    .end local v7    # "j":I
    :cond_2
    add-long/2addr v3, v10

    .line 2615
    cmp-long v7, v10, v5

    if-lez v7, :cond_3

    .line 2616
    move-wide v5, v10

    .line 2589
    .end local v9    # "paramArg":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v10    # "sizeOfParameterSet":J
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2620
    .end local v0    # "i":I
    :cond_4
    new-array v0, v7, [J

    const/4 v7, 0x0

    aput-wide v5, v0, v7

    const/4 v7, 0x1

    aput-wide v3, v0, v7

    monitor-exit v2

    return-object v0

    .line 2621
    .end local v3    # "sizeOfEntireBatch":J
    .end local v5    # "maxSizeOfParameterSet":J
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected containsOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 2708
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected executeBatchSerially(I)[J
    .locals 21
    .param p1, "batchTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 661
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 662
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v4, v0

    .line 664
    .local v4, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearWarnings()V

    .line 673
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v5, v0

    .line 676
    .local v5, "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v0, 0x0

    .line 678
    .local v0, "updateCounts":[J
    const/4 v6, 0x1

    :try_start_1
    iget-object v7, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    .line 679
    iget-object v7, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 680
    .local v7, "nbrCommands":I
    new-array v9, v7, [J

    .line 682
    .end local v0    # "updateCounts":[J
    .local v9, "updateCounts":[J
    iget-boolean v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 686
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const-wide/16 v10, -0x3

    if-ge v0, v7, :cond_1

    .line 687
    aput-wide v10, v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_1
    const/4 v12, 0x0

    .line 692
    .local v12, "sqlEx":Ljava/sql/SQLException;
    const/4 v13, 0x0

    .line 694
    .local v13, "commandIndex":I
    const/4 v14, 0x0

    .line 696
    .local v14, "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v15, 0x0

    .line 699
    .local v15, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_2
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    invoke-interface {v4, v0, v8, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v1, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v15, v0

    .line 701
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    int-to-long v10, v2

    invoke-virtual {v0, v15, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 704
    :cond_2
    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v7, :cond_9

    .line 705
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v0

    .line 708
    .local v10, "arg":Ljava/lang/Object;
    :try_start_3
    nop

    instance-of v0, v10, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 709
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    iget-boolean v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v1, v0, v6, v11}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v18

    aput-wide v18, v9, v13

    .line 712
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v0

    const/16 v11, 0x49

    if-ne v0, v11, :cond_3

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V

    goto :goto_6

    .line 714
    :cond_4
    move-object v0, v10

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 718
    if-eqz v14, :cond_6

    .line 719
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3
    iget-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v8, v11

    if-ge v0, v8, :cond_6

    .line 720
    aget-object v8, v11, v0

    iget v8, v8, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    aget-object v11, v14, v0

    iget v11, v11, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v8, v11, :cond_5

    .line 721
    iput-boolean v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 723
    goto :goto_4

    .line 719
    :cond_5
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 729
    .end local v0    # "j":I
    :cond_6
    :goto_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v1, v8, v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v19

    aput-wide v19, v9, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 730
    nop

    .line 773
    :try_start_5
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-object v14, v0

    .line 732
    nop

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V

    .line 749
    :goto_6
    const-wide/16 v16, -0x3

    goto :goto_7

    .line 731
    :catchall_0
    move-exception v0

    .line 773
    iget-object v8, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-object v14, v8

    .line 731
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v7    # "nbrCommands":I
    .end local v9    # "updateCounts":[J
    .end local v10    # "arg":Ljava/lang/Object;
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "commandIndex":I
    .end local v14    # "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 737
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local v7    # "nbrCommands":I
    .restart local v9    # "updateCounts":[J
    .restart local v10    # "arg":Ljava/lang/Object;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "commandIndex":I
    .restart local v14    # "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catch_0
    move-exception v0

    .line 738
    .local v0, "ex":Ljava/sql/SQLException;
    const-wide/16 v16, -0x3

    :try_start_6
    aput-wide v16, v9, v13

    .line 740
    iget-boolean v8, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->continueBatchOnError:Z

    if-eqz v8, :cond_8

    instance-of v8, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v8, :cond_8

    instance-of v8, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v8, :cond_8

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 742
    move-object v8, v0

    move-object v12, v8

    .line 704
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v10    # "arg":Ljava/lang/Object;
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 744
    .restart local v0    # "ex":Ljava/sql/SQLException;
    .restart local v10    # "arg":Ljava/lang/Object;
    :cond_8
    new-array v8, v13, [J

    .line 745
    .local v8, "newUpdateCounts":[J
    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v11

    invoke-static {v0, v8, v11}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v11

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v7    # "nbrCommands":I
    .end local v9    # "updateCounts":[J
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "commandIndex":I
    .end local v14    # "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 751
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v8    # "newUpdateCounts":[J
    .end local v10    # "arg":Ljava/lang/Object;
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local v7    # "nbrCommands":I
    .restart local v9    # "updateCounts":[J
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "commandIndex":I
    .restart local v14    # "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :cond_9
    nop

    .line 773
    if-eqz v15, :cond_a

    .line 753
    :try_start_7
    invoke-virtual {v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 755
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 758
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 759
    nop

    .line 761
    if-nez v12, :cond_b

    move-object v0, v9

    goto :goto_8

    .line 762
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v12, v9, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local p1    # "batchTimeout":I
    throw v0

    .line 752
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local p1    # "batchTimeout":I
    :catchall_1
    move-exception v0

    .line 758
    if-eqz v15, :cond_c

    .line 753
    invoke-virtual {v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 755
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Timer;->purge()I

    .line 758
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 752
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local p1    # "batchTimeout":I
    throw v0

    .line 766
    .end local v7    # "nbrCommands":I
    .end local v9    # "updateCounts":[J
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "commandIndex":I
    .end local v14    # "previousBindValuesForBatch":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "updateCounts":[J
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local p1    # "batchTimeout":I
    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    move-object v7, v0

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    new-array v7, v7, [J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 758
    .end local v0    # "updateCounts":[J
    :goto_9
    :try_start_8
    iput-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 769
    iput-boolean v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 766
    .restart local v0    # "updateCounts":[J
    monitor-exit v3

    return-object v7

    .line 768
    .end local v0    # "updateCounts":[J
    :catchall_2
    move-exception v0

    .line 771
    iput-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 769
    iput-boolean v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 768
    nop

    .end local p1    # "batchTimeout":I
    throw v0

    .line 665
    .end local v5    # "oldBindValues":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local p1    # "batchTimeout":I
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerPreparedStatement.2"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ServerPreparedStatement.3"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "batchTimeout":I
    throw v0

    .line 773
    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "batchTimeout":I
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .param p1, "maxRowsToRetrieve"    # I
    .param p2, "sendPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "createStreamingResultSet"    # Z
    .param p4, "queryIsSelectOnly"    # Z
    .param p5, "metadataFromCache"    # [Lcom/mysql/jdbc/Field;
    .param p6, "isBatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 782
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 783
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :try_start_1
    invoke-direct {p0, p1, p3, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 810
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 812
    .local v2, "sqlEx":Ljava/sql/SQLException;
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, "extractedSql":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 815
    .local v4, "messageBuf":Ljava/lang/StringBuilder;
    const-string v5, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    move-object v2, v5

    .line 822
    .end local v3    # "extractedSql":Ljava/lang/String;
    .end local v4    # "messageBuf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 824
    nop

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v2

    .line 788
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :catch_1
    move-exception v1

    .line 790
    .local v1, "sqlEx":Ljava/sql/SQLException;
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 794
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "extractedSql":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 797
    .local v3, "messageBuf":Ljava/lang/StringBuilder;
    const-string v4, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    move-object v1, v4

    .line 804
    .end local v2    # "extractedSql":Ljava/lang/String;
    .end local v3    # "messageBuf":Ljava/lang/StringBuilder;
    :cond_3
    nop

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v1

    .line 826
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 1
    .param p1, "batchedParameterStrings"    # [[B
    .param p2, "batchedParameterStreams"    # [Ljava/io/InputStream;
    .param p3, "batchedIsStream"    # [Z
    .param p4, "batchedStreamLengths"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "forLongData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 864
    add-int/lit8 p1, p1, -0x1

    .line 866
    if-ltz p1, :cond_2

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 872
    aget-object v2, v1, p1

    if-nez v2, :cond_0

    .line 873
    new-instance v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v2}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v2, v1, p1

    goto :goto_0

    .line 875
    :cond_0
    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 876
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 880
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    .line 867
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.9"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ServerPreparedStatement.10"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "forLongData":Z
    throw v1

    .line 860
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "forLongData":Z
    :cond_3
    const-string v1, "ServerPreparedStatement.8"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "forLongData":Z
    throw v1

    .line 881
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "forLongData":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBytes(I)[B
    .locals 8
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 900
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 902
    .local v2, "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    iget-boolean v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v3, :cond_0

    .line 903
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 904
    :cond_0
    iget-boolean v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-nez v3, :cond_2

    .line 907
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    if-nez v3, :cond_1

    .line 908
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getNetBufferLength()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    .line 911
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 913
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 915
    .local v3, "originalPosition":I
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v5

    invoke-direct {p0, v4, v2, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    .line 917
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    .line 919
    .local v4, "newPosition":I
    sub-int v5, v4, v3

    .line 921
    .local v5, "length":I
    new-array v6, v5, [B

    .line 923
    .local v6, "valueAsBytes":[B
    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    invoke-static {v7, v3, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    monitor-exit v0

    return-object v6

    .line 905
    .end local v3    # "originalPosition":I
    .end local v4    # "newPosition":I
    .end local v5    # "length":I
    .end local v6    # "valueAsBytes":[B
    :cond_2
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    throw v1

    .line 927
    .end local v2    # "bindValue":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .restart local p1    # "parameterIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2561
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2562
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 2563
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 2567
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    monitor-exit v0

    return v1

    .line 2568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-nez v1, :cond_0

    .line 938
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 941
    :cond_0
    new-instance v2, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    monitor-exit v0

    return-object v2

    .line 943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParameterBindValues()[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    return-object v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 951
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v1, :cond_0

    .line 954
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v0

    return-object v1

    .line 958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServerStatementId()J
    .locals 2

    .line 2537
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    return-wide v0
.end method

.method isCursorRequired()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetType()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetConcurrency()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getFetchSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNull(I)Z
    .locals 2
    .param p1, "paramIndex"    # I

    .line 966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ServerPreparedStatement.7"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isOnDuplicateKeyUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2572
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2573
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;
    .locals 5
    .param p1, "localConn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "numBatches"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2713
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2715
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    invoke-interface {p1, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Wrapper;

    const-class v2, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    .line 2717
    .local v1, "pstmt":Lcom/mysql/jdbc/PreparedStatement;
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2719
    :try_start_1
    monitor-exit v0

    return-object v1

    .line 2727
    .end local v1    # "pstmt":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2720
    :catch_0
    move-exception v1

    .line 2721
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unable to prepare batch statement"

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2723
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2725
    nop

    .end local p1    # "localConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p2    # "numBatches":I
    throw v2

    .line 2727
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "localConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p2    # "numBatches":I
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected rePrepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1047
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1048
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    :goto_0
    goto :goto_1

    .line 1055
    :catch_0
    move-exception v2

    .line 1056
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    .line 1057
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_1

    .line 1052
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1054
    .local v2, "sqlEx":Ljava/sql/SQLException;
    iput-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    goto :goto_0

    .line 1060
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    if-eqz v2, :cond_2

    .line 1061
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 1063
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1065
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1066
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1068
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 1070
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1072
    goto :goto_2

    .line 1071
    :catch_2
    move-exception v1

    .line 1075
    :cond_0
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 1077
    :try_start_5
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1079
    goto :goto_3

    .line 1078
    :catch_3
    move-exception v1

    .line 1083
    :cond_1
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->closeAllOpenResults()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1085
    goto :goto_4

    .line 1084
    :catch_4
    move-exception v1

    .line 1087
    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1089
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 1093
    :cond_2
    monitor-exit v0

    .line 1094
    return-void

    .line 1093
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method protected realClose(ZZ)V
    .locals 12
    .param p1, "calledExplicitly"    # Z
    .param p2, "closeOpenResults"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 982
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 983
    return-void

    .line 986
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 988
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v2, :cond_5

    .line 989
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpCloseForTestcase()V

    .line 1000
    :cond_1
    const/4 v2, 0x0

    .line 1002
    .local v2, "exceptionDuringClose":Ljava/sql/SQLException;
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1003
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1006
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v5

    .line 1008
    .local v5, "mysql":Lcom/mysql/jdbc/MysqlIO;
    invoke-virtual {v5}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1010
    .local v4, "packet":Lcom/mysql/jdbc/Buffer;
    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1011
    iget-wide v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v4, v6, v7}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1013
    const/16 v6, 0x19

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v11}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    .end local v4    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v5    # "mysql":Lcom/mysql/jdbc/MysqlIO;
    goto :goto_0

    .line 1017
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1014
    :catch_0
    move-exception v4

    .line 1015
    .local v4, "sqlEx":Ljava/sql/SQLException;
    move-object v2, v4

    .line 1017
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    :try_start_2
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    .end local p2    # "closeOpenResults":Z
    :try_start_3
    throw v4

    .line 1020
    .restart local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    .restart local p2    # "closeOpenResults":Z
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1021
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 1022
    iput-boolean v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 1024
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V

    .line 1026
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

    .line 1027
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1029
    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1030
    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1032
    if-nez v2, :cond_4

    goto :goto_3

    .line 1033
    :cond_4
    nop

    .end local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    .end local p2    # "closeOpenResults":Z
    throw v2

    .line 1036
    .end local v2    # "exceptionDuringClose":Ljava/sql/SQLException;
    .restart local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    .restart local p2    # "closeOpenResults":Z
    :cond_5
    :goto_3
    monitor-exit v1

    .line 1037
    return-void

    .line 1036
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V
    .locals 3
    .param p1, "oldValue"    # Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .param p2, "bufferType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2087
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2089
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    .line 2091
    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    iget v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2093
    :cond_0
    iget v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v1, p2, :cond_1

    .line 2094
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 2095
    iput p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 2099
    :cond_1
    :goto_0
    iput-boolean v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 2100
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    int-to-long v1, v1

    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 2101
    monitor-exit v0

    .line 2102
    return-void

    .line 2101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "x"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1581
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1589
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1590
    if-nez p2, :cond_0

    .line 1591
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1593
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 1594
    .local v2, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v3, 0xfc

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1596
    iput-object p2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1597
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1599
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    int-to-long v3, p3

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1602
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1605
    .end local v2    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    monitor-exit v0

    .line 1606
    return-void

    .line 1605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 6
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1613
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1615
    const/4 v1, 0x3

    if-nez p2, :cond_0

    .line 1616
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_1

    .line 1619
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v3

    .line 1621
    .local v3, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1622
    const/16 v1, 0xf6

    invoke-virtual {p0, v3, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    goto :goto_0

    .line 1624
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, v3, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1627
    :goto_0
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1629
    .end local v3    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_1
    monitor-exit v0

    .line 1630
    return-void

    .line 1629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1637
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1639
    if-nez p2, :cond_0

    .line 1640
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1642
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 1643
    .local v2, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v3, 0xfc

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1645
    iput-object p2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1646
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1648
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1649
    int-to-long v3, p3

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1651
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1654
    .end local v2    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    monitor-exit v0

    .line 1655
    return-void

    .line 1654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1664
    if-nez p2, :cond_0

    .line 1665
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1667
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 1668
    .local v2, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v3, 0xfc

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1670
    iput-object p2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1671
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1673
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1676
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1679
    .end local v2    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    monitor-exit v0

    .line 1680
    return-void

    .line 1679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBoolean(IZ)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1687
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setByte(IB)V

    .line 1688
    return-void
.end method

.method public setByte(IB)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1695
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1698
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1700
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1701
    return-void
.end method

.method public setBytes(I[B)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1708
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1710
    if-nez p2, :cond_0

    .line 1711
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1713
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1714
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v1, 0xfd

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1716
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1718
    .end local v0    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1725
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1727
    if-nez p2, :cond_0

    .line 1728
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1730
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 1731
    .local v2, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v3, 0xfc

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1733
    iput-object p2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1734
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1736
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1737
    int-to-long v3, p3

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1739
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1742
    .end local v2    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    monitor-exit v0

    .line 1743
    return-void

    .line 1742
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1750
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1752
    if-nez p2, :cond_0

    .line 1753
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1755
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 1756
    .local v2, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v3, 0xfc

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1758
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    iput-object v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1759
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1761
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1764
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1767
    .end local v2    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    monitor-exit v0

    .line 1768
    return-void

    .line 1767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setClosed(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 556
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 557
    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 1785
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1803
    if-nez p2, :cond_0

    .line 1804
    const/16 v0, 0x5b

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1806
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1807
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1809
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1810
    if-eqz p3, :cond_1

    .line 1811
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    .line 1814
    .end local v0    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :cond_1
    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1821
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAllowNanAndInf()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, p2, v1

    if-eqz v3, :cond_0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v3, p2, v1

    if-eqz v3, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1824
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid numeric or approximate numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":D
    throw v1

    .line 1829
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":D
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v1

    .line 1830
    .local v1, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1832
    iput-wide p2, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 1833
    .end local v1    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFloat(IF)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1841
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1844
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1846
    iput p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 1847
    return-void
.end method

.method public setInt(II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1856
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1857
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1859
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1860
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1867
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1869
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1870
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1872
    iput-wide p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1873
    return-void
.end method

.method public setNull(II)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1880
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1882
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1883
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1885
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 1886
    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1893
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1895
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1896
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1898
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 1899
    return-void
.end method

.method protected setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    .locals 7
    .param p1, "batchedStatement"    # Ljava/sql/PreparedStatement;
    .param p2, "batchedParamIndex"    # I
    .param p3, "paramSet"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2626
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 2628
    .local v0, "paramArg":[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 2629
    aget-object v3, v0, v1

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2630
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .local v3, "batchedParamIndex":I
    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setNull(II)V

    move p2, v3

    goto/16 :goto_3

    .line 2632
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :cond_0
    aget-object v3, v0, v1

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v3, :cond_2

    .line 2633
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2635
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 2636
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    aget-object v5, v0, v1

    iget-wide v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v6, v5

    invoke-interface {p1, p2, v4, v6}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_1

    .line 2638
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    move-object v4, v2

    check-cast v4, Ljava/io/Reader;

    aget-object v5, v0, v1

    iget-wide v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v6, v5

    invoke-interface {p1, p2, v4, v6}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 2640
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    move p2, v3

    goto/16 :goto_3

    .line 2642
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :cond_2
    aget-object v3, v0, v1

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    sparse-switch v3, :sswitch_data_0

    .line 2696
    .restart local v2    # "value":Ljava/lang/Object;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type when re-binding parameter into batched statement for parameter index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2663
    .end local v2    # "value":Ljava/lang/Object;
    :sswitch_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v4, Ljava/sql/Time;

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 2664
    move p2, v3

    goto/16 :goto_3

    .line 2666
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v4, Ljava/sql/Date;

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 2667
    move p2, v3

    goto/16 :goto_3

    .line 2654
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_2
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-interface {p1, p2, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 2655
    move p2, v3

    goto/16 :goto_3

    .line 2670
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v4, Ljava/sql/Timestamp;

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2671
    move p2, v3

    goto/16 :goto_3

    .line 2660
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_4
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-interface {p1, p2, v4, v5}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 2661
    move p2, v3

    goto :goto_3

    .line 2657
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_5
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    .line 2658
    move p2, v3

    goto :goto_3

    .line 2651
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_6
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v4

    invoke-interface {p1, p2, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2652
    move p2, v3

    goto :goto_3

    .line 2648
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_7
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v4

    int-to-short v4, v5

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setShort(IS)V

    .line 2649
    move p2, v3

    goto :goto_3

    .line 2645
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_8
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v3    # "batchedParamIndex":I
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-interface {p1, p2, v4}, Ljava/sql/PreparedStatement;->setByte(IB)V

    .line 2646
    move p2, v3

    goto :goto_3

    .line 2677
    .end local v3    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :sswitch_9
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2679
    .restart local v2    # "value":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_3

    .line 2680
    move-object v3, v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_2

    .line 2682
    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2687
    :goto_2
    instance-of v3, p1, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v3, :cond_4

    .line 2688
    move-object v3, p1

    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v3, p2, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v3

    .line 2689
    .local v3, "asBound":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    aget-object v4, v0, v1

    iget v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v4, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 2692
    .end local v3    # "asBound":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 2694
    nop

    .line 2628
    .end local v2    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2703
    .end local v1    # "j":I
    :cond_5
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xf -> :sswitch_9
        0xf6 -> :sswitch_9
        0xfd -> :sswitch_9
        0xfe -> :sswitch_9
    .end sparse-switch
.end method

.method public setPoolable(Z)V
    .locals 1
    .param p1, "poolable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2732
    if-nez p1, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 2735
    :cond_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->setPoolable(Z)V

    .line 2736
    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "x"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1906
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setShort(IS)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1914
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1917
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1919
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1920
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1927
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1929
    if-nez p2, :cond_0

    .line 1930
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    .line 1932
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1933
    .local v0, "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1935
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1937
    .end local v0    # "binding":Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1952
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1953
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 1954
    monitor-exit v0

    .line 1955
    return-void

    .line 1954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1974
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1975
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 1976
    monitor-exit v0

    .line 1977
    return-void

    .line 1976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2029
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2030
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2031
    monitor-exit v0

    .line 2032
    return-void

    .line 2031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2050
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2051
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2052
    monitor-exit v0

    .line 2053
    return-void

    .line 2052
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2128
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2130
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setString(ILjava/lang/String;)V

    .line 2131
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2118
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2120
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2522
    .local v0, "toStringBuf":Ljava/lang/StringBuilder;
    const-string v1, "com.mysql.jdbc.ServerPreparedStatement["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    iget-wide v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2524
    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    goto :goto_0

    .line 2528
    :catch_0
    move-exception v1

    .line 2529
    .local v1, "sqlEx":Ljava/sql/SQLException;
    const-string v2, "ServerPreparedStatement.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2533
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
