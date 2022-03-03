.class public Lcom/mysql/jdbc/StatementImpl;
.super Ljava/lang/Object;
.source "StatementImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/Statement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StatementImpl$CancelTask;
    }
.end annotation


# static fields
.field protected static final ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

.field protected static final PING_MARKER:Ljava/lang/String; = "/* ping */"

.field public static final USES_VARIABLES_FALSE:B = 0x0t

.field public static final USES_VARIABLES_TRUE:B = 0x1t

.field public static final USES_VARIABLES_UNKNOWN:B = -0x1t

.field static statementCounter:I


# instance fields
.field protected batchedArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected batchedGeneratedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation
.end field

.field protected cancelTimeoutMutex:Ljava/lang/Object;

.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field protected charEncoding:Ljava/lang/String;

.field protected clearWarningsCalled:Z

.field private closeOnCompletion:Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected continueBatchOnError:Z

.field protected currentCatalog:Ljava/lang/String;

.field protected doEscapeProcessing:Z

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private fetchSize:I

.field protected generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected holdResultsOpenOverClose:Z

.field protected isClosed:Z

.field private isImplicitlyClosingResults:Z

.field private isPoolable:Z

.field protected lastInsertId:J

.field protected lastQueryIsOnDupKeyUpdate:Z

.field private localInfileInputStream:Ljava/io/InputStream;

.field protected maxFieldSize:I

.field protected maxRows:I

.field protected openResults:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/ResultSetInternalMethods;",
            ">;"
        }
    .end annotation
.end field

.field private originalFetchSize:I

.field private originalResultSetType:I

.field protected pedantic:Z

.field protected physicalConnection:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected pingTarget:Lcom/mysql/jdbc/PingTarget;

.field protected profileSQL:Z

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected results:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected retrieveGeneratedKeys:Z

.field protected sendFractionalSeconds:Z

.field protected final statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected statementId:I

.field protected timeoutInMillis:I

.field protected updateCount:J

.field protected useLegacyDatetimeCode:Z

.field protected useUsageAdvisor:Z

.field protected final version5013OrNewer:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasCancelled:Z

.field protected wasCancelledByTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    const-string v0, "ON"

    const-string v1, "DUPLICATE"

    const-string v2, "KEY"

    const-string v3, "UPDATE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    sput v0, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 7
    .param p1, "c"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 184
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 193
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 199
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    .line 202
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 208
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 211
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    .line 214
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 217
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 223
    const/4 v5, -0x1

    iput v5, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 226
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 229
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 232
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 235
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 237
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 240
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 243
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 249
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 252
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 255
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 258
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 261
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 267
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 269
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 271
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 273
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 275
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 284
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 287
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 290
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 674
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 675
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    .line 2468
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    .line 2558
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    .line 304
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 308
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 309
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 311
    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 313
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getContinueBatchOnError()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 314
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->useLegacyDatetimeCode:Z

    .line 315
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getSendFractionalSeconds()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->sendFractionalSeconds:Z

    .line 316
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEnableEscapeProcessing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 318
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/MySQLConnection;->registerStatement(Lcom/mysql/jdbc/Statement;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 324
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultFetchSize()I

    move-result v1

    .line 325
    .local v1, "defaultFetchSize":I
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 331
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 335
    .local v2, "profiling":Z
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 336
    :cond_5
    sget v3, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    iput v3, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    .line 338
    :cond_6
    if-eqz v2, :cond_7

    .line 339
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 340
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 343
    :cond_7
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxRows()I

    move-result v3

    .line 344
    .local v3, "maxRowsConn":I
    if-eq v3, v5, :cond_8

    .line 345
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/StatementImpl;->setMaxRows(I)V

    .line 348
    :cond_8
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 350
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    const/16 v6, 0xd

    invoke-interface {v4, v5, v0, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    .line 351
    return-void

    .line 305
    .end local v1    # "defaultFetchSize":I
    .end local v2    # "profiling":Z
    .end local v3    # "maxRowsConn":I
    :cond_9
    const-string v0, "Statement.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "08003"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private checkAndPerformCloseOnCompletionAction()V
    .locals 2

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->isCloseOnCompletion()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getOpenResultSetCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 627
    :cond_2
    monitor-exit v0

    .line 629
    goto :goto_0

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 628
    :catch_0
    move-exception v0

    .line 630
    :goto_0
    return-void
.end method

.method private createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v2, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v3, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-interface {v1, p1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 639
    .local v1, "pStmt":Ljava/sql/PreparedStatement;
    iget v2, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    invoke-interface {v1, v2}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    .line 641
    iget v2, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 642
    invoke-interface {v1, v2}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 647
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 652
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl;->getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2

    .line 654
    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v3, v1

    check-cast v3, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V

    .line 656
    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 658
    monitor-exit v0

    return-object v2

    .line 659
    .end local v1    # "pStmt":Ljava/sql/PreparedStatement;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeBatchUsingMultiQueries(ZII)[J
    .locals 19
    .param p1, "multiQueriesEnabled"    # Z
    .param p2, "nbrCommands"    # I
    .param p3, "individualStatementTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1104
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v4

    .line 1106
    .local v4, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1107
    if-nez p1, :cond_0

    .line 1108
    :try_start_0
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1225
    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 1111
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1113
    .local v6, "batchStmt":Ljava/sql/Statement;
    const/4 v7, 0x0

    .line 1116
    .local v7, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_1
    new-array v0, v2, [J

    move-object v8, v0

    .line 1118
    .local v8, "updateCounts":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1119
    const-wide/16 v9, -0x3

    aput-wide v9, v8, v0

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1122
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 1124
    .local v0, "commandIndex":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1126
    .local v9, "queryBuf":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v10

    move-object v6, v10

    .line 1128
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v3, :cond_2

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1129
    new-instance v10, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v11, v6

    check-cast v11, Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {v10, v1, v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v7, v10

    .line 1130
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v10

    int-to-long v11, v3

    invoke-virtual {v10, v7, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1133
    :cond_2
    const/4 v10, 0x0

    .line 1135
    .local v10, "counter":I
    const/4 v11, 0x1

    .line 1137
    .local v11, "numberOfBytesPerChar":I
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v12

    .line 1139
    .local v12, "connectionEncoding":Ljava/lang/String;
    const-string v13, "utf"

    invoke-static {v12, v13}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1140
    const/4 v11, 0x3

    goto :goto_2

    .line 1141
    :cond_3
    invoke-static {v12}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1142
    const/4 v11, 0x2

    .line 1145
    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 1147
    .local v13, "escapeAdjust":I
    iget-boolean v14, v1, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    invoke-interface {v6, v14}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 1149
    iget-boolean v14, v1, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v14, :cond_5

    .line 1150
    const/4 v13, 0x2

    .line 1153
    :cond_5
    const/4 v14, 0x0

    .line 1155
    .local v14, "sqlEx":Ljava/sql/SQLException;
    const/4 v15, 0x0

    .line 1157
    .local v15, "argumentSetsInBatchSoFar":I
    const/4 v0, 0x0

    move v3, v15

    move-object v15, v14

    move v14, v10

    move-object v10, v9

    move v9, v0

    .end local v0    # "commandIndex":I
    .local v3, "argumentSetsInBatchSoFar":I
    .local v9, "commandIndex":I
    .local v10, "queryBuf":Ljava/lang/StringBuilder;
    .local v14, "counter":I
    .local v15, "sqlEx":Ljava/sql/SQLException;
    :goto_3
    move-object/from16 v16, v15

    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .local v16, "sqlEx":Ljava/sql/SQLException;
    const/4 v15, 0x1

    if-ge v9, v2, :cond_7

    .line 1158
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1160
    .local v17, "nextQuery":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    add-int v0, v0, v18

    mul-int v0, v0, v11

    add-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x4

    mul-int v0, v0, v13

    add-int/lit8 v0, v0, 0x20

    iget-object v15, v1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-le v0, v15, :cond_6

    .line 1163
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    invoke-interface {v6, v0, v15}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1166
    move-object/from16 v15, v16

    goto :goto_4

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "ex":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {v1, v9, v3, v8, v0}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v15

    .line 1168
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_4
    move-object v0, v6

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v14, v8}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    .line 1170
    .end local v14    # "counter":I
    .local v0, "counter":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v14

    .line 1171
    const/4 v3, 0x0

    move v14, v0

    goto :goto_5

    .line 1160
    .end local v0    # "counter":I
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v14    # "counter":I
    .restart local v16    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    move-object/from16 v15, v16

    .line 1174
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_5
    move-object/from16 v2, v17

    .end local v17    # "nextQuery":Ljava/lang/String;
    .local v2, "nextQuery":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v0, ";"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const/4 v2, 0x1

    .end local v2    # "nextQuery":Ljava/lang/String;
    add-int/2addr v3, v2

    .line 1157
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    goto :goto_3

    .line 1179
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v16    # "sqlEx":Ljava/sql/SQLException;
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v0, :cond_8

    .line 1181
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v6, v0, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1184
    move-object/from16 v15, v16

    goto :goto_6

    .line 1182
    :catch_1
    move-exception v0

    .line 1183
    .local v0, "ex":Ljava/sql/SQLException;
    add-int/lit8 v2, v9, -0x1

    :try_start_5
    invoke-virtual {v1, v2, v3, v8, v0}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v2

    move-object v15, v2

    .line 1186
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_6
    move-object v0, v6

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v14, v8}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    move v14, v0

    goto :goto_7

    .line 1179
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v16    # "sqlEx":Ljava/sql/SQLException;
    :cond_8
    move-object/from16 v15, v16

    .line 1189
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_7
    if-eqz v7, :cond_a

    .line 1190
    iget-object v0, v7, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_9

    .line 1194
    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1196
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1198
    const/4 v0, 0x0

    move-object v7, v0

    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_8

    .line 1191
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_9
    iget-object v0, v7, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v6    # "batchStmt":Ljava/sql/Statement;
    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "multiQueriesEnabled":Z
    .end local p2    # "nbrCommands":I
    .end local p3    # "individualStatementTimeout":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1201
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v6    # "batchStmt":Ljava/sql/Statement;
    .restart local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "multiQueriesEnabled":Z
    .restart local p2    # "nbrCommands":I
    .restart local p3    # "individualStatementTimeout":I
    :cond_a
    :goto_8
    if-nez v15, :cond_f

    .line 1205
    nop

    .line 1225
    .end local v3    # "argumentSetsInBatchSoFar":I
    .end local v8    # "updateCounts":[J
    .end local v9    # "commandIndex":I
    .end local v10    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v11    # "numberOfBytesPerChar":I
    .end local v12    # "connectionEncoding":Ljava/lang/String;
    .end local v13    # "escapeAdjust":I
    .end local v14    # "counter":I
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    if-eqz v7, :cond_b

    .line 1208
    :try_start_6
    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1210
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1213
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1216
    if-eqz v6, :cond_d

    .line 1217
    :try_start_7
    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_a

    .line 1220
    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 1221
    if-nez p1, :cond_c

    :try_start_8
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1220
    :cond_c
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "multiQueriesEnabled":Z
    .end local p2    # "nbrCommands":I
    .end local p3    # "individualStatementTimeout":I
    :goto_9
    throw v2

    .line 1219
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "multiQueriesEnabled":Z
    .restart local p2    # "nbrCommands":I
    .restart local p3    # "individualStatementTimeout":I
    :cond_d
    :goto_a
    nop

    .line 1220
    if-nez p1, :cond_e

    .line 1221
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    :cond_e
    nop

    .line 1223
    nop

    .line 1220
    move-object v0, v15

    .local v0, "sqlEx":Ljava/sql/SQLException;
    move v2, v13

    .local v2, "escapeAdjust":I
    .restart local v11    # "numberOfBytesPerChar":I
    .restart local v12    # "connectionEncoding":Ljava/lang/String;
    move-object v13, v8

    .line 1205
    .restart local v3    # "argumentSetsInBatchSoFar":I
    .restart local v9    # "commandIndex":I
    .restart local v10    # "queryBuf":Ljava/lang/StringBuilder;
    .local v13, "updateCounts":[J
    .restart local v14    # "counter":I
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v8

    .line 1202
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "escapeAdjust":I
    .restart local v8    # "updateCounts":[J
    .local v13, "escapeAdjust":I
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :cond_f
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v15, v8, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v6    # "batchStmt":Ljava/sql/Statement;
    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "multiQueriesEnabled":Z
    .end local p2    # "nbrCommands":I
    .end local p3    # "individualStatementTimeout":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1207
    .end local v3    # "argumentSetsInBatchSoFar":I
    .end local v8    # "updateCounts":[J
    .end local v9    # "commandIndex":I
    .end local v10    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v11    # "numberOfBytesPerChar":I
    .end local v12    # "connectionEncoding":Ljava/lang/String;
    .end local v13    # "escapeAdjust":I
    .end local v14    # "counter":I
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v6    # "batchStmt":Ljava/sql/Statement;
    .restart local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "multiQueriesEnabled":Z
    .restart local p2    # "nbrCommands":I
    .restart local p3    # "individualStatementTimeout":I
    :catchall_2
    move-exception v0

    .line 1220
    if-eqz v7, :cond_10

    .line 1208
    :try_start_a
    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1210
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1213
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1216
    if-eqz v6, :cond_12

    .line 1217
    :try_start_b
    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_b

    .line 1220
    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 1221
    if-nez p1, :cond_11

    :try_start_c
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1220
    :cond_11
    goto :goto_9

    .line 1219
    :cond_12
    :goto_b
    nop

    .line 1221
    if-nez p1, :cond_13

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1223
    :cond_13
    nop

    .line 1220
    nop

    .line 1207
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "multiQueriesEnabled":Z
    .end local p2    # "nbrCommands":I
    .end local p3    # "individualStatementTimeout":I
    throw v0

    .line 1225
    .end local v6    # "batchStmt":Ljava/sql/Statement;
    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "multiQueriesEnabled":Z
    .restart local p2    # "nbrCommands":I
    .restart local p3    # "individualStatementTimeout":I
    :goto_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method private executeInternal(Ljava/lang/String;Z)Z
    .locals 29
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "returnGeneratedKeys"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 733
    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v13

    .line 735
    .local v13, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 736
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 738
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 744
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    const/4 v10, 0x1

    if-ne v0, v2, :cond_0

    .line 745
    const-string v0, "/* ping */"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 748
    monitor-exit v14

    return v10

    .line 752
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v0

    move v9, v0

    .line 753
    .local v9, "firstNonWsChar":C
    const/16 v0, 0x53

    if-ne v9, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 755
    .local v16, "maybeSelect":Z
    iput-boolean v12, v11, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 757
    if-eqz v12, :cond_2

    const/16 v0, 0x49

    if-ne v9, v0, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 759
    if-nez v16, :cond_4

    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 760
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.27"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Statement.28"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "returnGeneratedKeys":Z
    throw v0

    .line 764
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "returnGeneratedKeys":Z
    :cond_4
    :goto_2
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    move v8, v0

    .line 765
    .local v8, "readInfoMsgState":Z
    if-eqz v12, :cond_5

    const/16 v0, 0x52

    if-ne v9, v0, :cond_5

    .line 768
    invoke-interface {v13, v10}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_19

    .line 772
    :cond_5
    :try_start_1
    invoke-virtual {v11, v13}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 774
    iget-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_17

    if-eqz v0, :cond_7

    .line 775
    :try_start_2
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v0

    invoke-static {v1, v0, v13}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 777
    .local v0, "escapedSqlResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 778
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    move-object v7, v1

    .end local p1    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    goto :goto_3

    .line 780
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_6
    move-object v2, v0

    check-cast v2, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v2, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    move-object v7, v1

    .end local p1    # "sql":Ljava/lang/String;
    .restart local v1    # "sql":Ljava/lang/String;
    goto :goto_3

    .line 888
    .end local v0    # "escapedSqlResult":Ljava/lang/Object;
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v5, v1

    move v6, v8

    move v4, v9

    goto/16 :goto_11

    .line 774
    :cond_7
    move-object v7, v1

    .line 784
    .end local p1    # "sql":Ljava/lang/String;
    .local v7, "sql":Ljava/lang/String;
    :goto_3
    const/4 v1, 0x0

    .line 786
    .local v1, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    const/16 v17, 0x0

    .line 788
    .local v17, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_16

    if-eqz v2, :cond_8

    .line 791
    :try_start_4
    invoke-direct {v11, v7}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    const/16 v20, 0x1

    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto/16 :goto_b

    .line 888
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_1
    move-exception v0

    move-object v5, v7

    move v6, v8

    move v4, v9

    goto/16 :goto_11

    .line 793
    .restart local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_8
    const/4 v2, 0x0

    .line 795
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v3, 0x0

    .line 798
    .local v3, "oldCatalog":Ljava/lang/String;
    :try_start_5
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    if-eqz v4, :cond_9

    :try_start_6
    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    invoke-interface {v13, v4, v15, v15}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 799
    new-instance v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v4, v11, v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v2, v4

    .line 800
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    iget v5, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v2

    goto :goto_4

    .line 857
    :catchall_2
    move-exception v0

    move-object v5, v7

    move v6, v8

    move v4, v9

    goto/16 :goto_f

    .line 803
    :cond_9
    move-object v6, v2

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_4
    :try_start_7
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    if-nez v2, :cond_a

    .line 804
    :try_start_8
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 805
    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v5, v3

    goto :goto_5

    .line 857
    :catchall_3
    move-exception v0

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    goto/16 :goto_f

    .line 803
    :cond_a
    move-object v5, v3

    .line 812
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .local v5, "oldCatalog":Ljava/lang/String;
    :goto_5
    const/4 v2, 0x0

    .line 814
    .local v2, "cachedFields":[Lcom/mysql/jdbc/Field;
    :try_start_9
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    if-eqz v3, :cond_c

    .line 815
    :try_start_a
    invoke-interface {v13, v7}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v3

    move-object v1, v3

    .line 817
    if-eqz v1, :cond_b

    .line 818
    iget-object v3, v1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    goto :goto_6

    .line 817
    :cond_b
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    goto :goto_6

    .line 857
    .end local v2    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :catchall_4
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    goto/16 :goto_f

    .line 814
    .restart local v2    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :cond_c
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 825
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .local v18, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v19, "cachedFields":[Lcom/mysql/jdbc/Field;
    :goto_6
    if-eqz v16, :cond_d

    :try_start_b
    iget v1, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    .line 857
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :catchall_5
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    move-object/from16 v1, v18

    goto/16 :goto_f

    .line 825
    .restart local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :cond_d
    const/4 v1, -0x1

    :goto_7
    :try_start_c
    invoke-interface {v13, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 829
    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/16 v20, 0x0

    iget v3, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v2, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v21

    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    move-object/from16 v22, v1

    move-object v1, v13

    move/from16 v23, v2

    move-object/from16 v2, p0

    move/from16 v24, v3

    move-object v3, v7

    move-object v15, v5

    .end local v5    # "oldCatalog":Ljava/lang/String;
    .local v15, "oldCatalog":Ljava/lang/String;
    move-object/from16 v5, v20

    move-object/from16 v25, v6

    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v25, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move/from16 v6, v24

    move-object/from16 v26, v7

    .end local v7    # "sql":Ljava/lang/String;
    .local v26, "sql":Ljava/lang/String;
    move/from16 v7, v23

    move/from16 v27, v8

    .end local v8    # "readInfoMsgState":Z
    .local v27, "readInfoMsgState":Z
    move/from16 v8, v21

    move/from16 v28, v9

    .end local v9    # "firstNonWsChar":C
    .local v28, "firstNonWsChar":C
    move-object/from16 v9, v22

    const/16 v20, 0x1

    move-object/from16 v10, v19

    :try_start_d
    invoke-interface/range {v1 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    move-object/from16 v17, v1

    .line 832
    move-object/from16 v2, v25

    .end local v25    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    if-eqz v2, :cond_f

    .line 833
    :try_start_e
    iget-object v1, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v1, :cond_e

    .line 837
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 838
    const/4 v1, 0x0

    move-object v2, v1

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_8

    .line 834
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_e
    iget-object v0, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v16    # "maybeSelect":Z
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "readInfoMsgState":Z
    .end local v28    # "firstNonWsChar":C
    .end local p2    # "returnGeneratedKeys":Z
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 857
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v16    # "maybeSelect":Z
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "readInfoMsgState":Z
    .restart local v28    # "firstNonWsChar":C
    .restart local p2    # "returnGeneratedKeys":Z
    :catchall_6
    move-exception v0

    move-object v3, v15

    move-object/from16 v1, v18

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    goto/16 :goto_f

    .line 841
    .restart local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :cond_f
    :goto_8
    :try_start_f
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 842
    :try_start_10
    iget-boolean v3, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v3, :cond_11

    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, "cause":Ljava/sql/SQLException;
    :try_start_11
    iget-boolean v3, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_10

    .line 846
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v3

    goto :goto_9

    .line 848
    :cond_10
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v3

    .line 851
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 853
    nop

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v16    # "maybeSelect":Z
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "readInfoMsgState":Z
    .end local v28    # "firstNonWsChar":C
    .end local p2    # "returnGeneratedKeys":Z
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 855
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v16    # "maybeSelect":Z
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "readInfoMsgState":Z
    .restart local v28    # "firstNonWsChar":C
    .restart local p2    # "returnGeneratedKeys":Z
    :catchall_7
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    goto/16 :goto_e

    :cond_11
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 856
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    nop

    .line 892
    if-eqz v2, :cond_12

    .line 858
    :try_start_13
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 859
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    goto :goto_a

    .line 888
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    :catchall_8
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    goto/16 :goto_11

    .line 862
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    :cond_12
    :goto_a
    if-eqz v15, :cond_13

    .line 863
    invoke-interface {v13, v15}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :cond_13
    nop

    .line 865
    move-object/from16 v2, v17

    move-object/from16 v1, v18

    .line 868
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v1, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :goto_b
    if-eqz v2, :cond_16

    .line 869
    :try_start_14
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 871
    iput-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 873
    move/from16 v4, v28

    .end local v28    # "firstNonWsChar":C
    .local v4, "firstNonWsChar":C
    :try_start_15
    invoke-interface {v2, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 875
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 876
    if-eqz v1, :cond_14

    .line 877
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v5, v26

    .end local v26    # "sql":Ljava/lang/String;
    .local v5, "sql":Ljava/lang/String;
    :try_start_16
    invoke-interface {v13, v5, v1, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_c

    .line 879
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v26    # "sql":Ljava/lang/String;
    :cond_14
    move-object/from16 v5, v26

    .end local v26    # "sql":Ljava/lang/String;
    .restart local v5    # "sql":Ljava/lang/String;
    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 880
    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v13, v5, v0, v3}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_c

    .line 875
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v26    # "sql":Ljava/lang/String;
    :cond_15
    move-object/from16 v5, v26

    .end local v26    # "sql":Ljava/lang/String;
    .restart local v5    # "sql":Ljava/lang/String;
    goto :goto_c

    .line 888
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v26    # "sql":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v6, v27

    .end local v26    # "sql":Ljava/lang/String;
    .restart local v5    # "sql":Ljava/lang/String;
    goto/16 :goto_11

    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v28    # "firstNonWsChar":C
    :catchall_a
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, v28

    move/from16 v6, v27

    .end local v26    # "sql":Ljava/lang/String;
    .end local v28    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    goto/16 :goto_11

    .line 868
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v28    # "firstNonWsChar":C
    :cond_16
    move-object/from16 v5, v26

    move/from16 v4, v28

    .line 886
    .end local v26    # "sql":Ljava/lang/String;
    .end local v28    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_17
    :goto_c
    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v0, :cond_18

    const/4 v10, 0x1

    goto :goto_d

    .line 888
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_b
    move-exception v0

    move/from16 v6, v27

    goto/16 :goto_11

    .line 886
    .restart local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_18
    const/4 v10, 0x0

    .line 863
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :goto_d
    move/from16 v6, v27

    .end local v27    # "readInfoMsgState":Z
    .local v6, "readInfoMsgState":Z
    :try_start_17
    invoke-interface {v13, v6}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 890
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, v1

    .local v0, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    move-object v1, v2

    .line 886
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_18

    return v10

    .line 855
    .end local v0    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "readInfoMsgState":Z
    .restart local v28    # "firstNonWsChar":C
    :catchall_c
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "readInfoMsgState":Z
    .end local v28    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    :goto_e
    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v16    # "maybeSelect":Z
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local p2    # "returnGeneratedKeys":Z
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 857
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v16    # "maybeSelect":Z
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local p2    # "returnGeneratedKeys":Z
    :catchall_d
    move-exception v0

    move-object v3, v15

    move-object/from16 v1, v18

    goto :goto_f

    .line 855
    .restart local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :catchall_e
    move-exception v0

    goto :goto_e

    .line 857
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .end local v19    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "readInfoMsgState":Z
    .restart local v28    # "firstNonWsChar":C
    :catchall_f
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    move-object v3, v15

    move-object/from16 v1, v18

    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "readInfoMsgState":Z
    .end local v28    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    goto :goto_f

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .restart local v25    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "readInfoMsgState":Z
    .restart local v28    # "firstNonWsChar":C
    :catchall_10
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v4, v28

    move-object v3, v15

    move-object/from16 v1, v18

    .end local v25    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "readInfoMsgState":Z
    .end local v28    # "firstNonWsChar":C
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    goto :goto_f

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "firstNonWsChar":C
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .local v5, "oldCatalog":Ljava/lang/String;
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    :catchall_11
    move-exception v0

    move-object v15, v5

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    move-object v3, v15

    move-object/from16 v1, v18

    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "firstNonWsChar":C
    .local v5, "sql":Ljava/lang/String;
    .local v6, "readInfoMsgState":Z
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    goto :goto_f

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "firstNonWsChar":C
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .end local v18    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v1, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v5, "oldCatalog":Ljava/lang/String;
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    :catchall_12
    move-exception v0

    move-object v15, v5

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    move-object v3, v15

    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "firstNonWsChar":C
    .local v5, "sql":Ljava/lang/String;
    .local v6, "readInfoMsgState":Z
    .restart local v15    # "oldCatalog":Ljava/lang/String;
    goto :goto_f

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v15    # "oldCatalog":Ljava/lang/String;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    :catchall_13
    move-exception v0

    move-object v2, v6

    move-object v5, v7

    move v6, v8

    move v4, v9

    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .local v6, "readInfoMsgState":Z
    goto :goto_f

    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    :catchall_14
    move-exception v0

    move-object v5, v7

    move v6, v8

    move v4, v9

    .line 863
    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    :goto_f
    if-eqz v2, :cond_19

    .line 858
    :try_start_1a
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 859
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Timer;->purge()I

    goto :goto_10

    .line 888
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_15
    move-exception v0

    goto :goto_11

    .line 862
    .restart local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_19
    :goto_10
    if-eqz v3, :cond_1a

    .line 863
    invoke-interface {v13, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_1a
    nop

    .line 857
    nop

    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v16    # "maybeSelect":Z
    .end local p2    # "returnGeneratedKeys":Z
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    .line 888
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v17    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v16    # "maybeSelect":Z
    .restart local p2    # "returnGeneratedKeys":Z
    :catchall_16
    move-exception v0

    move-object v5, v7

    move v6, v8

    move v4, v9

    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    goto :goto_11

    .end local v4    # "firstNonWsChar":C
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "readInfoMsgState":Z
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "firstNonWsChar":C
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move v6, v8

    move v4, v9

    move-object v5, v1

    .line 890
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "firstNonWsChar":C
    .end local p1    # "sql":Ljava/lang/String;
    .restart local v4    # "firstNonWsChar":C
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "readInfoMsgState":Z
    :goto_11
    :try_start_1b
    invoke-interface {v13, v6}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 888
    nop

    .end local v5    # "sql":Ljava/lang/String;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p2    # "returnGeneratedKeys":Z
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    .line 892
    .end local v4    # "firstNonWsChar":C
    .end local v6    # "readInfoMsgState":Z
    .end local v16    # "maybeSelect":Z
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p2    # "returnGeneratedKeys":Z
    :catchall_18
    move-exception v0

    move-object v1, v5

    goto :goto_12

    .end local v5    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_19
    move-exception v0

    .end local p1    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    :goto_12
    :try_start_1c
    monitor-exit v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1a
    move-exception v0

    goto :goto_12
.end method

.method protected static findStartOfStatement(Ljava/lang/String;)I
    .locals 3
    .param p0, "sql"    # Ljava/lang/String;

    .line 2501
    const/4 v0, 0x0

    .line 2503
    .local v0, "statementStartPos":I
    const-string v1, "/*"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 2504
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2506
    if-ne v0, v2, :cond_0

    .line 2507
    const/4 v0, 0x0

    goto :goto_0

    .line 2509
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2511
    :cond_1
    const-string v1, "--"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2512
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2514
    if-ne v0, v2, :cond_3

    .line 2515
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2517
    if-ne v0, v2, :cond_3

    .line 2518
    const/4 v0, 0x0

    .line 2523
    :cond_3
    :goto_0
    return v0
.end method

.method protected static getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I
    .locals 7
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "dontCheckOnDuplicateKeyUpdateInSQL"    # Z
    .param p2, "rewriteBatchedStatements"    # Z
    .param p3, "noBackslashEscapes"    # Z

    .line 2553
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    sget-object v3, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_0
    move-object v6, v0

    const-string v4, "\"\'`"

    const-string v5, "\"\'`"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    :goto_1
    return v0
.end method

.method private getRecordCountFromInfo(Ljava/lang/String;)J
    .locals 11
    .param p1, "serverInfo"    # Ljava/lang/String;

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    .local v0, "recordsBuf":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    .line 1977
    .local v1, "recordsCount":J
    const-wide/16 v3, 0x0

    .line 1979
    .local v3, "duplicatesCount":J
    const/4 v5, 0x0

    .line 1981
    .local v5, "c":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1982
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1984
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 1985
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1987
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1988
    goto :goto_1

    .line 1984
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1992
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1993
    add-int/lit8 v7, v7, 0x1

    .line 1995
    :goto_2
    if-ge v7, v6, :cond_3

    .line 1996
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1998
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1999
    goto :goto_3

    .line 2002
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1995
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2005
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2009
    .local v8, "duplicatesBuf":Ljava/lang/StringBuilder;
    :goto_4
    if-ge v7, v6, :cond_5

    .line 2010
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2012
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2013
    goto :goto_5

    .line 2009
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2017
    :cond_5
    :goto_5
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2018
    add-int/lit8 v7, v7, 0x1

    .line 2020
    :goto_6
    if-ge v7, v6, :cond_7

    .line 2021
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2023
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2024
    goto :goto_7

    .line 2027
    :cond_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2020
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2030
    :cond_7
    :goto_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2032
    sub-long v9, v1, v3

    return-wide v9
.end method

.method private useServerFetch()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2452
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2453
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v2, 0x3ef

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "cancelConn":Lcom/mysql/jdbc/Connection;
    const/4 v1, 0x0

    .line 397
    .local v1, "cancelStmt":Ljava/sql/Statement;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;

    move-result-object v2

    move-object v0, v2

    .line 398
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object v1, v2

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    nop

    .line 412
    if-eqz v1, :cond_1

    .line 403
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 406
    :cond_1
    if-eqz v0, :cond_2

    .line 407
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V

    :cond_2
    nop

    .line 409
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v2

    .line 407
    if-eqz v1, :cond_3

    .line 403
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 406
    :cond_3
    if-eqz v0, :cond_4

    .line 407
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V

    :cond_4
    nop

    .line 402
    throw v2

    .line 412
    .end local v0    # "cancelConn":Lcom/mysql/jdbc/Connection;
    .end local v1    # "cancelStmt":Ljava/sql/Statement;
    :cond_5
    :goto_0
    return-void
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 425
    .local v0, "c":Lcom/mysql/jdbc/MySQLConnection;
    if-eqz v0, :cond_0

    .line 429
    return-object v0

    .line 426
    :cond_0
    const-string v1, "Statement.49"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected checkForDml(Ljava/lang/String;C)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "firstStatementChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 445
    const/16 v0, 0x49

    if-eq p2, v0, :cond_0

    const/16 v0, 0x55

    if-eq p2, v0, :cond_0

    const/16 v0, 0x44

    if-eq p2, v0, :cond_0

    const/16 v0, 0x41

    if-eq p2, v0, :cond_0

    const/16 v0, 0x43

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 447
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v2, "\'\""

    const-string v3, "\'\""

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "noCommentSql":Ljava/lang/String;
    const-string v1, "INSERT"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "UPDATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DELETE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DROP"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CREATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ALTER"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TRUNCATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "RENAME"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    .end local v0    # "noCommentSql":Ljava/lang/String;
    :cond_1
    return-void

    .line 453
    .restart local v0    # "noCommentSql":Ljava/lang/String;
    :cond_2
    const-string v1, "Statement.57"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected checkNullOrEmptyQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 468
    const-string v0, "S1009"

    if-eqz p1, :cond_1

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    return-void

    .line 473
    :cond_0
    const-string v1, "Statement.61"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 469
    :cond_1
    const-string v1, "Statement.59"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    :cond_0
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearWarnings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 502
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 504
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 523
    return-void
.end method

.method protected closeAllOpenResults()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 531
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 532
    return-void

    .line 535
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 537
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .local v3, "element":Lcom/mysql/jdbc/ResultSetInternalMethods;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    goto :goto_1

    .line 540
    :catch_0
    move-exception v4

    .line 541
    .local v4, "sqlEx":Ljava/sql/SQLException;
    :try_start_2
    invoke-static {v4}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 542
    .end local v3    # "element":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_1
    goto :goto_0

    .line 545
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 547
    :cond_2
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public closeOnCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2561
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2562
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    .line 2563
    monitor-exit v0

    .line 2564
    return-void

    .line 2563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected containsOnDuplicateKeyInString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 2547
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v1

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createStreamingResultSet()Z
    .locals 2

    .line 670
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public disableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 694
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    .line 695
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 696
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 698
    :cond_0
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected doPingInstead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1424
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1425
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    if-eqz v1, :cond_0

    .line 1426
    invoke-interface {v1}, Lcom/mysql/jdbc/PingTarget;->doPing()V

    goto :goto_0

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->ping()V

    .line 1431
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1432
    .local v1, "fakeSelectOneResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1433
    .end local v1    # "fakeSelectOneResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    monitor-exit v0

    .line 1434
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableStreamingResults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 683
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 684
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 685
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    .line 687
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 688
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 689
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "returnGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 923
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "generatedKeyIndices"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 930
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "generatedKeyNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 937
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public executeBatch()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v0

    return-object v0
.end method

.method protected executeBatchInternal()[J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 958
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    .line 960
    .local v2, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 961
    :try_start_0
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 968
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 973
    :cond_0
    iget v0, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    move v5, v0

    .line 974
    .local v5, "individualStatementTimeout":I
    iput v4, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 976
    const/4 v6, 0x0

    .line 979
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 984
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, v1, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 986
    const/4 v0, 0x0

    .line 988
    .local v0, "updateCounts":[J
    iget-object v8, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v8, :cond_c

    .line 989
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 991
    .local v8, "nbrCommands":I
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v1, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 993
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v9

    .line 995
    .local v9, "multiQueriesEnabled":Z
    const/4 v10, 0x4

    invoke-interface {v2, v10, v7, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v9, :cond_1

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v11

    if-eqz v11, :cond_3

    if-le v8, v10, :cond_3

    .line 997
    :cond_1
    invoke-direct {v1, v9, v8, v5}, Lcom/mysql/jdbc/StatementImpl;->executeBatchUsingMultiQueries(ZII)[J

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    .end local v0    # "updateCounts":[J
    .end local v8    # "nbrCommands":I
    .end local v9    # "multiQueriesEnabled":Z
    :try_start_3
    iget-object v10, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v4, v8

    .local v4, "nbrCommands":I
    move v8, v9

    .line 997
    .restart local v0    # "updateCounts":[J
    .local v8, "multiQueriesEnabled":Z
    nop

    .line 1077
    .end local v0    # "updateCounts":[J
    .end local v4    # "nbrCommands":I
    .end local v8    # "multiQueriesEnabled":Z
    if-eqz v6, :cond_2

    .line 1066
    :try_start_4
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1068
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Timer;->purge()I

    .line 1071
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1073
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 997
    .restart local v0    # "updateCounts":[J
    .restart local v4    # "nbrCommands":I
    .restart local v8    # "multiQueriesEnabled":Z
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v7

    .line 1000
    .end local v4    # "nbrCommands":I
    .local v8, "nbrCommands":I
    .restart local v9    # "multiQueriesEnabled":Z
    :cond_3
    :try_start_5
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v5, :cond_4

    const/4 v10, 0x5

    invoke-interface {v2, v10, v4, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1001
    new-instance v10, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v10, v1, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v6, v10

    .line 1002
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v10

    int-to-long v11, v5

    invoke-virtual {v10, v6, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1005
    :cond_4
    new-array v10, v8, [J

    .line 1007
    .end local v0    # "updateCounts":[J
    .local v10, "updateCounts":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const-wide/16 v11, -0x3

    if-ge v0, v8, :cond_5

    .line 1008
    aput-wide v11, v10, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .line 1013
    .local v0, "sqlEx":Ljava/sql/SQLException;
    const/4 v13, 0x0

    .line 1015
    .local v13, "commandIndex":I
    const/4 v13, 0x0

    move v14, v13

    move-object v13, v0

    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .local v13, "sqlEx":Ljava/sql/SQLException;
    .local v14, "commandIndex":I
    :goto_1
    if-ge v14, v8, :cond_a

    .line 1017
    :try_start_6
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1018
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {v1, v0, v7, v7}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v15

    aput-wide v15, v10, v14

    .line 1020
    iget-object v15, v1, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v15}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v15

    const/16 v7, 0x49

    if-ne v15, v7, :cond_6

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/StatementImpl;->getBatchedGeneratedKeys(I)V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1040
    .end local v0    # "sql":Ljava/lang/String;
    goto :goto_3

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "ex":Ljava/sql/SQLException;
    :try_start_7
    aput-wide v11, v10, v14

    .line 1024
    iget-boolean v7, v1, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz v7, :cond_7

    instance-of v7, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v7, :cond_7

    instance-of v7, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v7, :cond_7

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1026
    move-object v7, v0

    move-object v13, v7

    .line 1015
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 1028
    .restart local v0    # "ex":Ljava/sql/SQLException;
    :cond_7
    new-array v7, v14, [J

    .line 1030
    .local v7, "newUpdateCounts":[J
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1031
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    array-length v4, v7

    if-ge v15, v4, :cond_8

    .line 1032
    aput-wide v11, v7, v15

    .line 1031
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .end local v15    # "i":I
    :cond_8
    goto :goto_5

    .line 1035
    :cond_9
    const/4 v4, 0x0

    invoke-static {v10, v4, v7, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "individualStatementTimeout":I
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    throw v4

    .line 1043
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v7    # "newUpdateCounts":[J
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "individualStatementTimeout":I
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_a
    if-nez v13, :cond_b

    move-object v0, v10

    goto :goto_6

    .line 1044
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v13, v10, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "individualStatementTimeout":I
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    throw v0

    .line 1048
    .end local v8    # "nbrCommands":I
    .end local v9    # "multiQueriesEnabled":Z
    .end local v10    # "updateCounts":[J
    .end local v13    # "sqlEx":Ljava/sql/SQLException;
    .end local v14    # "commandIndex":I
    .local v0, "updateCounts":[J
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "individualStatementTimeout":I
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_c
    :goto_6
    if-eqz v6, :cond_e

    .line 1049
    iget-object v4, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v4, :cond_d

    .line 1053
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1055
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1056
    const/4 v4, 0x0

    move-object v6, v4

    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v4, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_7

    .line 1050
    .end local v4    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_d
    iget-object v4, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "individualStatementTimeout":I
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    throw v4

    .line 1059
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "individualStatementTimeout":I
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_e
    :goto_7
    if-eqz v0, :cond_f

    move-object v7, v0

    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    new-array v7, v4, [J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1075
    .end local v0    # "updateCounts":[J
    :goto_8
    :try_start_8
    iget-object v8, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1059
    .restart local v0    # "updateCounts":[J
    nop

    .line 1075
    .end local v0    # "updateCounts":[J
    if-eqz v6, :cond_10

    .line 1066
    :try_start_9
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1068
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1071
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1073
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1059
    .restart local v0    # "updateCounts":[J
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-object v7

    .line 1061
    .end local v0    # "updateCounts":[J
    :catchall_0
    move-exception v0

    .line 1075
    :try_start_a
    iget-object v4, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1061
    nop

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "individualStatementTimeout":I
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1065
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "individualStatementTimeout":I
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_1
    move-exception v0

    .line 1075
    if-eqz v6, :cond_11

    .line 1066
    :try_start_b
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1068
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1071
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1073
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1065
    nop

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    throw v0

    .line 969
    .end local v5    # "individualStatementTimeout":I
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :cond_12
    :goto_9
    const/4 v4, 0x0

    new-array v0, v4, [J

    monitor-exit v3

    return-object v0

    .line 962
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Statement.34"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Statement.35"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    throw v0

    .line 1077
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method public executeLargeBatch()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2577
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2593
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2601
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2609
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 21
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1289
    move-object/from16 v11, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1290
    :try_start_0
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v13, v0

    .line 1292
    .local v13, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1294
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1300
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    .line 1301
    const-string v0, "/* ping */"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 1304
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v12

    return-object v0

    .line 1308
    :cond_0
    invoke-virtual {v11, v13}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1310
    iget-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v0, :cond_2

    .line 1311
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v0

    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 1313
    .local v0, "escapedSqlResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1314
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    move-object v15, v1

    .end local p1    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    goto :goto_0

    .line 1316
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v2, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move-object v1, v2

    move-object v15, v1

    .end local p1    # "sql":Ljava/lang/String;
    .restart local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 1310
    .end local v0    # "escapedSqlResult":Ljava/lang/Object;
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_2
    move-object v15, v1

    .line 1320
    .end local p1    # "sql":Ljava/lang/String;
    .local v15, "sql":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-static {v15}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v0

    invoke-static {v15, v0}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v0

    move v10, v0

    .line 1322
    .local v10, "firstStatementChar":C
    invoke-virtual {v11, v15, v10}, Lcom/mysql/jdbc/StatementImpl;->checkForDml(Ljava/lang/String;C)V

    .line 1324
    const/4 v1, 0x0

    .line 1326
    .local v1, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    invoke-direct {v11, v15}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1329
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    return-object v0

    .line 1332
    :cond_3
    const/4 v2, 0x0

    .line 1334
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v3, 0x0

    .line 1337
    .local v3, "oldCatalog":Ljava/lang/String;
    :try_start_2
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    if-eqz v0, :cond_4

    :try_start_3
    iget v0, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {v13, v0, v14, v14}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1338
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v11, v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v2, v0

    .line 1339
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v4, v4

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v2

    goto :goto_1

    .line 1396
    :catchall_0
    move-exception v0

    move/from16 v18, v10

    goto/16 :goto_8

    .line 1342
    :cond_4
    move-object v9, v2

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v9, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_1
    :try_start_4
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-nez v0, :cond_5

    .line 1343
    :try_start_5
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1344
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v13, v0}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v8, v3

    goto :goto_2

    .line 1396
    :catchall_1
    move-exception v0

    move-object v2, v9

    move/from16 v18, v10

    goto/16 :goto_8

    .line 1342
    :cond_5
    move-object v8, v3

    .line 1351
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .local v8, "oldCatalog":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    .line 1353
    .local v0, "cachedFields":[Lcom/mysql/jdbc/Field;
    :try_start_6
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    if-eqz v2, :cond_7

    .line 1354
    :try_start_7
    invoke-interface {v13, v15}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v2

    move-object v1, v2

    .line 1356
    if-eqz v1, :cond_6

    .line 1357
    iget-object v2, v1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v0, v2

    move-object/from16 v16, v0

    move-object v7, v1

    goto :goto_3

    .line 1356
    :cond_6
    move-object/from16 v16, v0

    move-object v7, v1

    goto :goto_3

    .line 1396
    .end local v0    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :catchall_2
    move-exception v0

    move-object v3, v8

    move-object v2, v9

    move/from16 v18, v10

    goto/16 :goto_8

    .line 1353
    .restart local v0    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :cond_7
    move-object/from16 v16, v0

    move-object v7, v1

    .line 1361
    .end local v0    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v7, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v16, "cachedFields":[Lcom/mysql/jdbc/Field;
    :goto_3
    :try_start_8
    iget v0, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    invoke-interface {v13, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 1365
    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v5, 0x0

    iget v6, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v0, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v17

    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v15

    move-object/from16 v19, v7

    .end local v7    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v19, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    move v7, v0

    move-object/from16 v20, v8

    .end local v8    # "oldCatalog":Ljava/lang/String;
    .local v20, "oldCatalog":Ljava/lang/String;
    move/from16 v8, v17

    move-object v14, v9

    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v14, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move-object/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "firstStatementChar":C
    .local v18, "firstStatementChar":C
    move-object/from16 v10, v16

    :try_start_9
    invoke-interface/range {v1 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1368
    if-eqz v14, :cond_9

    .line 1369
    :try_start_a
    iget-object v0, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_8

    .line 1373
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1375
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1377
    const/4 v0, 0x0

    move-object v2, v0

    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_4

    .line 1370
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_8
    iget-object v0, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "sql":Ljava/lang/String;
    .end local v18    # "firstStatementChar":C
    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v20    # "oldCatalog":Ljava/lang/String;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1396
    .end local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "sql":Ljava/lang/String;
    .restart local v18    # "firstStatementChar":C
    .restart local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v20    # "oldCatalog":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v2, v14

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    goto/16 :goto_8

    .line 1368
    .restart local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :cond_9
    move-object v2, v14

    .line 1380
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_4
    :try_start_b
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1381
    :try_start_c
    iget-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v0, :cond_b

    .line 1382
    const/4 v0, 0x0

    .line 1384
    .local v0, "cause":Ljava/sql/SQLException;
    :try_start_d
    iget-boolean v3, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_a

    .line 1385
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v3

    goto :goto_5

    .line 1387
    :cond_a
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v3

    .line 1390
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1392
    nop

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "sql":Ljava/lang/String;
    .end local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .end local v18    # "firstStatementChar":C
    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v20    # "oldCatalog":Ljava/lang/String;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1394
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "sql":Ljava/lang/String;
    .restart local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v18    # "firstStatementChar":C
    .restart local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v20    # "oldCatalog":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    goto :goto_7

    :cond_b
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1395
    .end local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    nop

    .line 1420
    :try_start_f
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1398
    if-eqz v2, :cond_c

    .line 1399
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1401
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1404
    :cond_c
    move-object/from16 v3, v20

    .end local v20    # "oldCatalog":Ljava/lang/String;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 1405
    invoke-interface {v13, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_d
    nop

    .line 1407
    nop

    .line 1409
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1411
    move-object/from16 v4, v19

    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v4, "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    if-eqz v4, :cond_e

    .line 1412
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v13, v15, v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_6

    .line 1414
    :cond_e
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1415
    const/4 v0, 0x0

    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v13, v15, v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1419
    :cond_f
    :goto_6
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    return-object v0

    .line 1394
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v20    # "oldCatalog":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v20    # "oldCatalog":Ljava/lang/String;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    :goto_7
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "sql":Ljava/lang/String;
    .end local v18    # "firstStatementChar":C
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1396
    .end local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "sql":Ljava/lang/String;
    .restart local v18    # "firstStatementChar":C
    :catchall_6
    move-exception v0

    move-object v1, v4

    goto :goto_8

    .line 1394
    .restart local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    :catchall_7
    move-exception v0

    goto :goto_7

    .line 1396
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v16    # "cachedFields":[Lcom/mysql/jdbc/Field;
    .restart local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v20    # "oldCatalog":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object v1, v4

    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v20    # "oldCatalog":Ljava/lang/String;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    goto :goto_8

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v20    # "oldCatalog":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object v1, v4

    move-object v2, v14

    .end local v19    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v20    # "oldCatalog":Ljava/lang/String;
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    goto :goto_8

    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v18    # "firstStatementChar":C
    .restart local v7    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v8    # "oldCatalog":Ljava/lang/String;
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v10    # "firstStatementChar":C
    :catchall_a
    move-exception v0

    move-object v4, v7

    move-object v3, v8

    move-object v14, v9

    move/from16 v18, v10

    move-object v1, v4

    move-object v2, v14

    .end local v7    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v8    # "oldCatalog":Ljava/lang/String;
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v10    # "firstStatementChar":C
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v18    # "firstStatementChar":C
    goto :goto_8

    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v18    # "firstStatementChar":C
    .restart local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .restart local v8    # "oldCatalog":Ljava/lang/String;
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v10    # "firstStatementChar":C
    :catchall_b
    move-exception v0

    move-object v3, v8

    move-object v14, v9

    move/from16 v18, v10

    move-object v2, v14

    .end local v8    # "oldCatalog":Ljava/lang/String;
    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v10    # "firstStatementChar":C
    .restart local v3    # "oldCatalog":Ljava/lang/String;
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v18    # "firstStatementChar":C
    goto :goto_8

    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v18    # "firstStatementChar":C
    .restart local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v10    # "firstStatementChar":C
    :catchall_c
    move-exception v0

    move-object v14, v9

    move/from16 v18, v10

    move-object v2, v14

    .end local v9    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v10    # "firstStatementChar":C
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v18    # "firstStatementChar":C
    goto :goto_8

    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v18    # "firstStatementChar":C
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v10    # "firstStatementChar":C
    :catchall_d
    move-exception v0

    move/from16 v18, v10

    .line 1405
    .end local v10    # "firstStatementChar":C
    .restart local v18    # "firstStatementChar":C
    :goto_8
    :try_start_12
    iget-object v4, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1398
    if-eqz v2, :cond_10

    .line 1399
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1401
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1404
    :cond_10
    if-eqz v3, :cond_11

    .line 1405
    invoke-interface {v13, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_11
    nop

    .line 1396
    nop

    .end local v15    # "sql":Ljava/lang/String;
    throw v0

    .line 1420
    .end local v1    # "cachedMetaData":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .end local v13    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v18    # "firstStatementChar":C
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object v15, v1

    .end local p1    # "sql":Ljava/lang/String;
    .restart local v15    # "sql":Ljava/lang/String;
    :goto_9
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_9
.end method

.method protected executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 11
    .param p1, "c"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "nonQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1449
    iget-object v8, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V

    .line 1450
    return-void
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1464
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGeneratedKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1600
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1607
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected executeUpdateInternal(Ljava/lang/String;ZZ)J
    .locals 24
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "isBatch"    # Z
    .param p3, "returnGeneratedKeys"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1468
    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v13, p3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1469
    :try_start_0
    iget-object v0, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v15, v0

    .line 1471
    .local v15, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1475
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v0

    move v11, v0

    .line 1477
    .local v11, "firstStatementChar":C
    iput-boolean v13, v12, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1479
    const/4 v0, 0x1

    const/4 v10, 0x0

    if-eqz v13, :cond_0

    const/16 v2, 0x49

    if-ne v11, v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v12, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 1481
    const/16 v16, 0x0

    .line 1483
    .local v16, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    iget-boolean v2, v12, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v2, :cond_2

    .line 1484
    iget-object v2, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v2

    iget-object v3, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v2

    .line 1486
    .local v2, "escapedSqlResult":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1487
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    move-object v9, v1

    .end local p1    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    goto :goto_1

    .line 1489
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v3, v3, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move-object v1, v3

    move-object v9, v1

    .end local p1    # "sql":Ljava/lang/String;
    .restart local v1    # "sql":Ljava/lang/String;
    goto :goto_1

    .line 1483
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "escapedSqlResult":Ljava/lang/Object;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_2
    move-object v9, v1

    .line 1493
    .end local p1    # "sql":Ljava/lang/String;
    .local v9, "sql":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-interface {v15, v10}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1498
    const-string v1, "select"

    invoke-static {v9, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1506
    const/4 v1, 0x0

    .line 1508
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v2, 0x0

    .line 1510
    .local v2, "oldCatalog":Ljava/lang/String;
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    move v8, v3

    .line 1511
    .local v8, "readInfoMsgState":Z
    if-eqz v13, :cond_3

    const/16 v3, 0x52

    if-ne v11, v3, :cond_3

    .line 1514
    :try_start_2
    invoke-interface {v15, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1593
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "oldCatalog":Ljava/lang/String;
    .end local v8    # "readInfoMsgState":Z
    .end local v11    # "firstStatementChar":C
    .end local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v16    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_9

    .line 1518
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "oldCatalog":Ljava/lang/String;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v11    # "firstStatementChar":C
    .restart local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v16    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_4

    :try_start_4
    iget v0, v12, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {v15, v0, v10, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1519
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v12, v12}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v1, v0

    .line 1520
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v3, v12, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v1

    goto :goto_3

    .line 1567
    :catchall_1
    move-exception v0

    move v4, v8

    move-object/from16 v17, v9

    move v13, v11

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1523
    :cond_4
    move-object v7, v1

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v7, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_3
    :try_start_5
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-nez v0, :cond_5

    .line 1524
    :try_start_6
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1525
    iget-object v0, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v15, v0}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v2

    goto :goto_4

    .line 1567
    :catchall_2
    move-exception v0

    move-object v1, v7

    move v4, v8

    move-object/from16 v17, v9

    move v13, v11

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1523
    :cond_5
    move-object v6, v2

    .line 1531
    .end local v2    # "oldCatalog":Ljava/lang/String;
    .local v6, "oldCatalog":Ljava/lang/String;
    :goto_4
    const/4 v0, -0x1

    :try_start_7
    invoke-interface {v15, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 1536
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v0, 0x3eb

    const/16 v17, 0x3ef

    const/16 v18, 0x0

    iget-object v3, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const/16 v19, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move-object v3, v9

    move-object/from16 v21, v6

    .end local v6    # "oldCatalog":Ljava/lang/String;
    .local v21, "oldCatalog":Ljava/lang/String;
    move v6, v0

    move-object/from16 v22, v7

    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v22, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move/from16 v7, v17

    move/from16 v23, v8

    .end local v8    # "readInfoMsgState":Z
    .local v23, "readInfoMsgState":Z
    move/from16 v8, v18

    move-object/from16 v17, v9

    .end local v9    # "sql":Ljava/lang/String;
    .local v17, "sql":Ljava/lang/String;
    move-object/from16 v9, v20

    move-object/from16 v10, v19

    move v13, v11

    .end local v11    # "firstStatementChar":C
    .local v13, "firstStatementChar":C
    move/from16 v11, p2

    :try_start_8
    invoke-interface/range {v1 .. v11}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object v1, v0

    .line 1539
    .end local v16    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object/from16 v3, v22

    .end local v22    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v3, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    if-eqz v3, :cond_7

    .line 1540
    :try_start_9
    iget-object v0, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_6

    .line 1544
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1546
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1548
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_5

    .line 1541
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_6
    iget-object v0, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "firstStatementChar":C
    .end local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v17    # "sql":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v23    # "readInfoMsgState":Z
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1567
    .restart local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v13    # "firstStatementChar":C
    .restart local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v17    # "sql":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v23    # "readInfoMsgState":Z
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object/from16 v2, v21

    move/from16 v4, v23

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1551
    :cond_7
    :goto_5
    :try_start_a
    iget-object v2, v12, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1552
    :try_start_b
    iget-boolean v0, v12, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_9

    .line 1553
    const/4 v0, 0x0

    .line 1555
    .local v0, "cause":Ljava/sql/SQLException;
    :try_start_c
    iget-boolean v4, v12, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v4, :cond_8

    .line 1556
    new-instance v4, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v4}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v4

    goto :goto_6

    .line 1558
    :cond_8
    new-instance v4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v4}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v4

    .line 1561
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1563
    nop

    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "firstStatementChar":C
    .end local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v17    # "sql":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v23    # "readInfoMsgState":Z
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1565
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v13    # "firstStatementChar":C
    .restart local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v17    # "sql":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v23    # "readInfoMsgState":Z
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :catchall_4
    move-exception v0

    move-object/from16 v5, v21

    move/from16 v4, v23

    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1566
    nop

    .line 1593
    move/from16 v4, v23

    .end local v23    # "readInfoMsgState":Z
    .local v4, "readInfoMsgState":Z
    :try_start_e
    invoke-interface {v15, v4}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1569
    if-eqz v3, :cond_a

    .line 1570
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1572
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1575
    :cond_a
    move-object/from16 v5, v21

    .end local v21    # "oldCatalog":Ljava/lang/String;
    .local v5, "oldCatalog":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 1576
    invoke-interface {v15, v5}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1579
    :cond_b
    if-nez p2, :cond_c

    .line 1580
    iget-object v0, v12, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_c
    nop

    .line 1582
    nop

    .line 1584
    iput-object v1, v12, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1586
    invoke-interface {v1, v13}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 1588
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v6

    iput-wide v6, v12, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1590
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v6

    iput-wide v6, v12, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1592
    iget-wide v6, v12, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    return-wide v6

    .line 1565
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v23    # "readInfoMsgState":Z
    :catchall_5
    move-exception v0

    move-object/from16 v5, v21

    move/from16 v4, v23

    const/4 v6, 0x0

    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v23    # "readInfoMsgState":Z
    .restart local v4    # "readInfoMsgState":Z
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    :goto_7
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .end local v13    # "firstStatementChar":C
    .end local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v17    # "sql":Ljava/lang/String;
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1567
    .restart local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "readInfoMsgState":Z
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v13    # "firstStatementChar":C
    .restart local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v17    # "sql":Ljava/lang/String;
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :catchall_6
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v2, v5

    goto :goto_8

    .line 1565
    :catchall_7
    move-exception v0

    goto :goto_7

    .line 1567
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v23    # "readInfoMsgState":Z
    :catchall_8
    move-exception v0

    move-object/from16 v5, v21

    move/from16 v4, v23

    const/4 v6, 0x0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v2, v5

    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v23    # "readInfoMsgState":Z
    .restart local v4    # "readInfoMsgState":Z
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    goto :goto_8

    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v16    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v22    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v23    # "readInfoMsgState":Z
    :catchall_9
    move-exception v0

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    const/4 v6, 0x0

    move-object v1, v3

    move-object v2, v5

    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v22    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v23    # "readInfoMsgState":Z
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "readInfoMsgState":Z
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    goto :goto_8

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .end local v13    # "firstStatementChar":C
    .end local v17    # "sql":Ljava/lang/String;
    .restart local v6    # "oldCatalog":Ljava/lang/String;
    .restart local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local v11    # "firstStatementChar":C
    :catchall_a
    move-exception v0

    move-object v5, v6

    move-object v3, v7

    move v4, v8

    move-object/from16 v17, v9

    move v13, v11

    const/4 v6, 0x0

    move-object v1, v3

    move-object v2, v5

    .end local v6    # "oldCatalog":Ljava/lang/String;
    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "sql":Ljava/lang/String;
    .end local v11    # "firstStatementChar":C
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "readInfoMsgState":Z
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v13    # "firstStatementChar":C
    .restart local v17    # "sql":Ljava/lang/String;
    goto :goto_8

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "readInfoMsgState":Z
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .end local v13    # "firstStatementChar":C
    .end local v17    # "sql":Ljava/lang/String;
    .restart local v2    # "oldCatalog":Ljava/lang/String;
    .restart local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local v11    # "firstStatementChar":C
    :catchall_b
    move-exception v0

    move-object v3, v7

    move v4, v8

    move-object/from16 v17, v9

    move v13, v11

    const/4 v6, 0x0

    move-object v1, v3

    .end local v7    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "sql":Ljava/lang/String;
    .end local v11    # "firstStatementChar":C
    .restart local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v4    # "readInfoMsgState":Z
    .restart local v13    # "firstStatementChar":C
    .restart local v17    # "sql":Ljava/lang/String;
    goto :goto_8

    .end local v3    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v4    # "readInfoMsgState":Z
    .end local v13    # "firstStatementChar":C
    .end local v17    # "sql":Ljava/lang/String;
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v8    # "readInfoMsgState":Z
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local v11    # "firstStatementChar":C
    :catchall_c
    move-exception v0

    move v4, v8

    move-object/from16 v17, v9

    move v13, v11

    const/4 v6, 0x0

    .line 1580
    .end local v8    # "readInfoMsgState":Z
    .end local v9    # "sql":Ljava/lang/String;
    .end local v11    # "firstStatementChar":C
    .restart local v4    # "readInfoMsgState":Z
    .restart local v13    # "firstStatementChar":C
    .restart local v17    # "sql":Ljava/lang/String;
    :goto_8
    :try_start_11
    invoke-interface {v15, v4}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1569
    if-eqz v1, :cond_d

    .line 1570
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1572
    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1575
    :cond_d
    if-eqz v2, :cond_e

    .line 1576
    invoke-interface {v15, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1579
    :cond_e
    if-nez p2, :cond_f

    .line 1580
    iget-object v3, v12, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_f
    nop

    .line 1567
    nop

    .end local v17    # "sql":Ljava/lang/String;
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    throw v0

    .line 1499
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "oldCatalog":Ljava/lang/String;
    .end local v4    # "readInfoMsgState":Z
    .end local v13    # "firstStatementChar":C
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local v11    # "firstStatementChar":C
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :cond_10
    move-object/from16 v17, v9

    move v13, v11

    .end local v9    # "sql":Ljava/lang/String;
    .end local v11    # "firstStatementChar":C
    .restart local v13    # "firstStatementChar":C
    .restart local v17    # "sql":Ljava/lang/String;
    const-string v0, "Statement.46"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S03"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v17    # "sql":Ljava/lang/String;
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    throw v0

    .line 1494
    .end local v13    # "firstStatementChar":C
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local v11    # "firstStatementChar":C
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :cond_11
    move-object/from16 v17, v9

    move v13, v11

    .end local v9    # "sql":Ljava/lang/String;
    .end local v11    # "firstStatementChar":C
    .restart local v13    # "firstStatementChar":C
    .restart local v17    # "sql":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement.42"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Statement.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v17    # "sql":Ljava/lang/String;
    .end local p2    # "isBatch":Z
    .end local p3    # "returnGeneratedKeys":Z
    throw v0

    .line 1593
    .end local v13    # "firstStatementChar":C
    .end local v15    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v16    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v9    # "sql":Ljava/lang/String;
    .restart local p2    # "isBatch":Z
    .restart local p3    # "returnGeneratedKeys":Z
    :catchall_d
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "sql":Ljava/lang/String;
    .restart local v17    # "sql":Ljava/lang/String;
    goto :goto_9

    .end local v17    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object/from16 v17, v1

    .end local p1    # "sql":Ljava/lang/String;
    .restart local v17    # "sql":Ljava/lang/String;
    :goto_9
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_9
.end method

.method protected generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1437
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1438
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    new-instance v3, Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    const-string v5, "1"

    const/4 v6, -0x5

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1439
    .local v2, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v3, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    new-array v5, v1, [B

    const/16 v6, 0x31

    aput-byte v6, v5, v4

    .line 1442
    .local v5, "colVal":[B
    new-instance v6, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v1, v1, [[B

    aput-object v5, v1, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v6, v1, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1445
    .end local v2    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v3    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v5    # "colVal":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBatchedArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getBatchedGeneratedKeys(I)V
    .locals 8
    .param p1, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2423
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2424
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_4

    .line 2425
    const/4 v1, 0x0

    .line 2428
    .local v1, "rs":Ljava/sql/ResultSet;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 2429
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 2431
    :cond_0
    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v4

    move-object v1, v4

    .line 2434
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2435
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v2, [[B

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2437
    :cond_1
    nop

    .line 2449
    :try_start_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2440
    if-eqz v1, :cond_2

    .line 2441
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2444
    :catchall_0
    move-exception v2

    :try_start_4
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .end local p1    # "maxKeys":I
    :goto_1
    throw v2

    .line 2443
    .restart local p1    # "maxKeys":I
    :cond_2
    :goto_2
    nop

    .line 2444
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 2445
    nop

    .line 2444
    nop

    .line 2446
    goto :goto_4

    .line 2438
    :catchall_1
    move-exception v4

    .line 2444
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2440
    if-eqz v1, :cond_3

    .line 2441
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 2444
    :catchall_2
    move-exception v2

    :try_start_6
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    goto :goto_1

    .line 2443
    :cond_3
    :goto_3
    nop

    .line 2444
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 2445
    nop

    .line 2444
    nop

    .line 2438
    nop

    .end local p1    # "maxKeys":I
    throw v4

    .line 2448
    .end local v1    # "rs":Ljava/sql/ResultSet;
    .restart local p1    # "maxKeys":I
    :cond_4
    :goto_4
    monitor-exit v0

    .line 2449
    return-void

    .line 2448
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method protected getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    .locals 7
    .param p1, "batchedStatement"    # Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2403
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2404
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 2405
    const/4 v1, 0x0

    .line 2408
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 2410
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2411
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    const/4 v4, 0x1

    new-array v5, v4, [[B

    const/4 v6, 0x0

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2413
    :cond_0
    nop

    .line 2420
    if-eqz v1, :cond_1

    .line 2415
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_1
    nop

    .line 2417
    goto :goto_1

    .line 2414
    :catchall_0
    move-exception v2

    .line 2415
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2414
    :cond_2
    nop

    .end local p1    # "batchedStatement":Ljava/sql/Statement;
    throw v2

    .line 2419
    .end local v1    # "rs":Ljava/sql/ResultSet;
    .restart local p1    # "batchedStatement":Ljava/sql/Statement;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 2420
    return-void

    .line 2419
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1622
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1627
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1640
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1641
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    monitor-exit v0

    return-object v1

    .line 1642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1654
    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1666
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1667
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    monitor-exit v0

    return v1

    .line 1668
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1676
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    .line 1681
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1682
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    if-eqz v1, :cond_0

    .line 1683
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1688
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mysql/jdbc/Field;

    .line 1689
    .local v1, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "GENERATED_KEY"

    const/4 v5, -0x5

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1690
    aget-object v2, v1, v3

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1692
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v4, Lcom/mysql/jdbc/RowDataStatic;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1695
    monitor-exit v0

    return-object v2

    .line 1677
    .end local v1    # "fields":[Lcom/mysql/jdbc/Field;
    :cond_2
    const-string v1, "Statement.GeneratedKeysNotRequested"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1705
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    .line 1706
    .local v0, "numKeys":J
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2

    return-object v2
.end method

.method protected getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 20
    .param p1, "numKeys"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1710
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1711
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    move-object v9, v1

    .line 1712
    .local v9, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "GENERATED_KEY"

    const/4 v4, -0x5

    const/16 v5, 0x14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 1713
    aget-object v1, v9, v2

    iget-object v3, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1714
    aget-object v1, v9, v2

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 1716
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 1718
    .local v10, "rowSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v3

    .line 1720
    .local v3, "beginAt":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    .line 1721
    aget-object v1, v9, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->setUnsigned()V

    .line 1724
    :cond_0
    iget-object v1, v7, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_5

    .line 1725
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getServerInfo()Ljava/lang/String;

    move-result-object v1

    .line 1730
    .local v1, "serverInfo":Ljava/lang/String;
    cmp-long v11, p1, v5

    if-lez v11, :cond_1

    iget-object v11, v7, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v11}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v11

    const/16 v12, 0x52

    if-ne v11, v12, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1731
    invoke-direct {v7, v1}, Lcom/mysql/jdbc/StatementImpl;->getRecordCountFromInfo(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "numKeys":J
    .local v11, "numKeys":J
    goto :goto_0

    .line 1734
    .end local v11    # "numKeys":J
    .restart local p1    # "numKeys":J
    :cond_1
    move-wide/from16 v11, p1

    .end local p1    # "numKeys":J
    .restart local v11    # "numKeys":J
    :goto_0
    cmp-long v13, v3, v5

    if-eqz v13, :cond_4

    cmp-long v13, v11, v5

    if-lez v13, :cond_4

    .line 1735
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    int-to-long v14, v13

    cmp-long v16, v14, v11

    if-gez v16, :cond_3

    .line 1736
    :try_start_1
    new-array v14, v0, [[B

    .line 1737
    .local v14, "row":[[B
    cmp-long v15, v3, v5

    if-lez v15, :cond_2

    .line 1738
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v2

    move-object/from16 v19, v1

    const/4 v1, 0x1

    goto :goto_2

    .line 1740
    :cond_2
    const/16 v15, 0x8

    new-array v5, v15, [B

    .line 1741
    .local v5, "asBytes":[B
    const/4 v6, 0x7

    const-wide/16 v17, 0xff

    move-object/from16 v19, v1

    .end local v1    # "serverInfo":Ljava/lang/String;
    .local v19, "serverInfo":Ljava/lang/String;
    and-long v0, v3, v17

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, v5, v6

    .line 1742
    ushr-long v0, v3, v15

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x6

    aput-byte v0, v5, v1

    .line 1743
    const/16 v1, 0x10

    ushr-long v0, v3, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x5

    aput-byte v0, v5, v1

    .line 1744
    const/16 v1, 0x18

    ushr-long v0, v3, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x4

    aput-byte v0, v5, v1

    .line 1745
    const/16 v1, 0x20

    ushr-long v0, v3, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    aput-byte v0, v5, v1

    .line 1746
    const/16 v1, 0x28

    ushr-long v0, v3, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x2

    aput-byte v0, v5, v1

    .line 1747
    const/16 v0, 0x30

    ushr-long v0, v3, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x1

    aput-byte v0, v5, v1

    .line 1748
    const/16 v0, 0x38

    ushr-long v0, v3, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, v5, v2

    .line 1750
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1752
    .local v0, "val":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aput-object v6, v14, v2

    .line 1754
    .end local v0    # "val":Ljava/math/BigInteger;
    .end local v5    # "asBytes":[B
    :goto_2
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v0, v14, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    iget-object v0, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoIncrementIncrement()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 1735
    .end local v14    # "row":[[B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v19

    const/4 v0, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .end local v19    # "serverInfo":Ljava/lang/String;
    .restart local v1    # "serverInfo":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v1

    .end local v1    # "serverInfo":Ljava/lang/String;
    .restart local v19    # "serverInfo":Ljava/lang/String;
    move-wide v13, v3

    goto :goto_3

    .line 1734
    .end local v13    # "i":I
    .end local v19    # "serverInfo":Ljava/lang/String;
    .restart local v1    # "serverInfo":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v1

    .line 1760
    .end local v1    # "serverInfo":Ljava/lang/String;
    move-wide v13, v3

    goto :goto_3

    .line 1724
    .end local v11    # "numKeys":J
    .restart local p1    # "numKeys":J
    :cond_5
    move-wide/from16 v11, p1

    move-wide v13, v3

    .line 1760
    .end local v3    # "beginAt":J
    .end local p1    # "numKeys":J
    .restart local v11    # "numKeys":J
    .local v13, "beginAt":J
    :goto_3
    iget-object v1, v7, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v3, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v3, v10}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v4, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x0

    move-object v2, v9

    move-object/from16 v5, p0

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 1763
    .local v0, "gkRs":Lcom/mysql/jdbc/ResultSetImpl;
    monitor-exit v8

    return-object v0

    .line 1764
    .end local v0    # "gkRs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local v9    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v10    # "rowSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v11    # "numKeys":J
    .end local v13    # "beginAt":J
    .restart local p1    # "numKeys":J
    :catchall_0
    move-exception v0

    move-wide/from16 v11, p1

    .end local p1    # "numKeys":J
    .restart local v11    # "numKeys":J
    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public getId()I
    .locals 1

    .line 1768
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    return v0
.end method

.method public getLargeMaxRows()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2618
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLargeUpdateCount()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2626
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2627
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 2628
    monitor-exit v0

    return-wide v2

    .line 2631
    :cond_0
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2632
    monitor-exit v0

    return-wide v2

    .line 2635
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastInsertID()J
    .locals 3

    .line 1784
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :try_start_1
    iget-wide v1, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    monitor-exit v0

    return-wide v1

    .line 1786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocalInfileInputStream()Ljava/io/InputStream;
    .locals 1

    .line 2531
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLongUpdateCount()J
    .locals 4

    .line 1805
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 1807
    monitor-exit v0

    return-wide v2

    .line 1810
    :cond_0
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1811
    monitor-exit v0

    return-wide v2

    .line 1814
    :cond_1
    iget-wide v1, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v0

    return-wide v1

    .line 1815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxFieldSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1834
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    monitor-exit v0

    return v1

    .line 1835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxRows()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1849
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1850
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-gtz v1, :cond_0

    .line 1851
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1854
    :cond_0
    monitor-exit v0

    return v1

    .line 1855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults(I)Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 7
    .param p1, "current"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1875
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1876
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1877
    monitor-exit v0

    return v2

    .line 1880
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v1

    .line 1882
    .local v1, "streamingMode":Z
    if-eqz v1, :cond_1

    .line 1883
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1884
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 1892
    .local v3, "nextResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    packed-switch p1, :pswitch_data_0

    .line 1929
    const-string v2, "Statement.19"

    goto/16 :goto_3

    .line 1907
    :pswitch_0
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v4, :cond_3

    .line 1908
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1909
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1912
    :cond_2
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1915
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    .line 1917
    goto :goto_1

    .line 1920
    :pswitch_1
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1921
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1926
    goto :goto_1

    .line 1895
    :pswitch_2
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v4, :cond_6

    .line 1896
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1897
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1900
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1932
    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1934
    const-wide/16 v4, -0x1

    if-nez v3, :cond_7

    .line 1935
    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1936
    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    goto :goto_2

    .line 1937
    :cond_7
    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1938
    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1939
    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    goto :goto_2

    .line 1941
    :cond_8
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1942
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1945
    :goto_2
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, 0x1

    .line 1946
    .local v2, "moreResults":Z
    :cond_9
    if-nez v2, :cond_a

    .line 1947
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 1949
    :cond_a
    monitor-exit v0

    return v2

    .line 1929
    .end local v2    # "moreResults":Z
    :goto_3
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "current":I
    throw v2

    .line 1950
    .end local v1    # "streamingMode":Z
    .end local v3    # "nextResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local p1    # "current":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOpenResultSetCount()I
    .locals 3

    .line 601
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 603
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    monitor-exit v1

    return v2

    .line 606
    :cond_0
    monitor-exit v1

    return v0

    .line 607
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 608
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/sql/SQLException;
    return v0
.end method

.method public getQueryTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1964
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1965
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    div-int/lit16 v1, v1, 0x3e8

    monitor-exit v0

    return v1

    .line 1966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2045
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2046
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 2047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSetConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2059
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2060
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    monitor-exit v0

    return v1

    .line 2061
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2068
    const/4 v0, 0x1

    return v0
.end method

.method protected getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 2

    .line 2073
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 2075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    .local v0, "e":Ljava/sql/SQLException;
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object v1
.end method

.method public getResultSetType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2090
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2091
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    monitor-exit v0

    return v1

    .line 2092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2106
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2129
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2131
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    if-eqz v1, :cond_0

    .line 2132
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2135
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2136
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLWarning;

    move-result-object v1

    .line 2138
    .local v1, "pendingWarningsFromServer":Ljava/sql/SQLWarning;
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    if-eqz v2, :cond_1

    .line 2139
    invoke-virtual {v2, v1}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_0

    .line 2141
    :cond_1
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 2144
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v2

    .line 2147
    .end local v1    # "pendingWarningsFromServer":Ljava/sql/SQLWarning;
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v1

    .line 2148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 3
    .param p1, "endOfBatchIndex"    # I
    .param p2, "numValuesPerBatch"    # I
    .param p3, "updateCounts"    # [J
    .param p4, "ex"    # Ljava/sql/SQLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/BatchUpdateException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1262
    move v0, p1

    .local v0, "j":I
    :goto_0
    sub-int v1, p1, p2

    if-le v0, v1, :cond_0

    .line 1263
    const-wide/16 v1, -0x3

    aput-wide v1, p3, v0

    .line 1262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1266
    .end local v0    # "j":I
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz v0, :cond_1

    instance-of v0, p4, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1268
    return-object p4

    .line 1271
    :cond_1
    new-array v0, p1, [J

    .line 1272
    .local v0, "newUpdateCounts":[J
    const/4 v1, 0x0

    invoke-static {p3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected final hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z
    .locals 3
    .param p1, "ex"    # Ljava/sql/SQLException;

    .line 1081
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    .line 1083
    .local v0, "vendorCode":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1090
    const/4 v1, 0x0

    return v1

    .line 1086
    :sswitch_0
    return v1

    .line 1088
    :sswitch_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    xor-int/2addr v1, v2

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4b5 -> :sswitch_1
        0x4b6 -> :sswitch_0
        0x4bd -> :sswitch_0
    .end sparse-switch
.end method

.method protected implicitlyCloseAllOpenResults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 556
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    .line 558
    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_1

    .line 561
    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :cond_2
    nop

    .line 568
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 567
    nop

    .line 568
    return-void

    .line 566
    :catchall_0
    move-exception v1

    .line 568
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 566
    throw v1
.end method

.method public isCloseOnCompletion()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2567
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2568
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    monitor-exit v0

    return v1

    .line 2569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2459
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2460
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 2461
    const/4 v1, 0x1

    return v1

    .line 2463
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2464
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    monitor-exit v1

    return v2

    .line 2465
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isCursorRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2659
    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2471
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    return v0
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

    .line 2482
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2485
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I
    .locals 10
    .param p1, "batchedStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "updateCountCounter"    # I
    .param p3, "updateCounts"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1229
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1230
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "updateCountCounter":I
    .local v1, "updateCountCounter":I
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v2

    aput-wide v2, p3, p2

    .line 1232
    iget-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1234
    .local p2, "doGenKeys":Z
    :goto_0
    const/4 v4, 0x0

    check-cast v4, [[B

    .line 1236
    .local v4, "row":[[B
    if-eqz p2, :cond_1

    .line 1237
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v5

    .line 1239
    .local v5, "generatedKey":J
    new-array v7, v3, [[B

    move-object v4, v7

    .line 1240
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v4, v2

    .line 1241
    iget-object v7, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    .end local v5    # "generatedKey":J
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    goto :goto_2

    .line 1256
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    .line 1245
    :cond_3
    :goto_2
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "updateCountCounter":I
    .local v5, "updateCountCounter":I
    :try_start_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v6

    aput-wide v6, p3, v1

    .line 1247
    if-eqz p2, :cond_4

    .line 1248
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v6

    .line 1250
    .local v6, "generatedKey":J
    new-array v1, v3, [[B

    move-object v4, v1

    .line 1251
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v4, v2

    .line 1252
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    move v1, v5

    .end local v6    # "generatedKey":J
    goto :goto_1

    .line 1247
    :cond_4
    move v1, v5

    goto :goto_1

    .line 1257
    .end local v4    # "row":[[B
    .end local p2    # "doGenKeys":Z
    :catchall_0
    move-exception p2

    move v1, v5

    goto :goto_3

    .end local v5    # "updateCountCounter":I
    .restart local v1    # "updateCountCounter":I
    :catchall_1
    move-exception p2

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method protected realClose(ZZ)V
    .locals 11
    .param p1, "calledExplicitly"    # Z
    .param p2, "closeOpenResults"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2161
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2163
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2168
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2169
    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 2172
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_2

    .line 2173
    if-nez p1, :cond_2

    .line 2174
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Statement.63"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    invoke-interface/range {v2 .. v10}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2179
    :cond_2
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 2180
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move p2, v2

    .line 2183
    :cond_4
    if-eqz p2, :cond_7

    .line 2184
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_5

    .line 2187
    :try_start_0
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    goto :goto_1

    .line 2188
    :catch_0
    move-exception v2

    .line 2192
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_6

    .line 2195
    :try_start_1
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2197
    goto :goto_2

    .line 2196
    :catch_1
    move-exception v2

    .line 2200
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    .line 2203
    :cond_7
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    .line 2205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2206
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2207
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2208
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 2209
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 2210
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 2211
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    .line 2212
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 2213
    return-void

    .line 2164
    :cond_8
    :goto_3
    return-void
.end method

.method public removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 4
    .param p1, "rs"    # Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 574
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 580
    .local v1, "hasMoreResults":Z
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_2

    if-nez v1, :cond_2

    .line 581
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 583
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-ne v2, p1, :cond_3

    .line 584
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 590
    :cond_3
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 591
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 593
    .end local v1    # "hasMoreResults":Z
    :cond_4
    monitor-exit v0

    .line 596
    goto :goto_1

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 594
    .restart local p1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catch_0
    move-exception v0

    .line 597
    :goto_1
    return-void
.end method

.method protected resetCancelledState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 909
    monitor-exit v0

    return-void

    .line 912
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 913
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 914
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 915
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 917
    return-void

    .line 915
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 916
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2234
    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2247
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2248
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 2249
    monitor-exit v0

    .line 2250
    return-void

    .line 2249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFetchDirection(I)V
    .locals 3
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2266
    packed-switch p1, :pswitch_data_0

    .line 2273
    const-string v0, "Statement.5"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2270
    :pswitch_0
    nop

    .line 2275
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFetchSize(I)V
    .locals 4
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2292
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2293
    if-gez p1, :cond_0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_0

    .line 2294
    :cond_1
    const-string v1, "Statement.7"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "rows":I
    throw v1

    .line 2297
    .restart local p1    # "rows":I
    :cond_2
    :goto_0
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 2298
    monitor-exit v0

    .line 2299
    return-void

    .line 2298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHoldResultsOpenOverClose(Z)V
    .locals 2
    .param p1, "holdResultsOpenOverClose"    # Z

    .line 2303
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :try_start_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 2305
    monitor-exit v0

    .line 2308
    goto :goto_0

    .line 2305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "holdResultsOpenOverClose":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2306
    .restart local p1    # "holdResultsOpenOverClose":Z
    :catch_0
    move-exception v0

    .line 2309
    :goto_0
    return-void
.end method

.method public setLargeMaxRows(J)V
    .locals 4
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2644
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2645
    const-wide/32 v1, 0x2faf080

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 2650
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 2651
    const-wide/16 p1, -0x1

    .line 2654
    :cond_0
    long-to-int v1, p1

    :try_start_0
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 2655
    monitor-exit v0

    .line 2656
    return-void

    .line 2646
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.15"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x2faf080

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "max":J
    throw v1

    .line 2655
    .restart local p1    # "max":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocalInfileInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 2535
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    .line 2536
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 7
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2321
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2322
    if-ltz p1, :cond_2

    .line 2326
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v1

    .line 2328
    .local v1, "maxBuf":I
    :goto_0
    if-gt p1, v1, :cond_1

    .line 2333
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 2334
    .end local v1    # "maxBuf":I
    monitor-exit v0

    .line 2335
    return-void

    .line 2329
    .restart local v1    # "maxBuf":I
    :cond_1
    const-string v2, "Statement.13"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "max":I
    throw v2

    .line 2334
    .end local v1    # "maxBuf":I
    .restart local p1    # "max":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2323
    :cond_2
    const-string v1, "Statement.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "max":I
    throw v1

    .line 2334
    .restart local p1    # "max":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaxRows(I)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2349
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    .line 2350
    return-void
.end method

.method public setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    .locals 0
    .param p1, "pingTarget"    # Lcom/mysql/jdbc/PingTarget;

    .line 2539
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 2540
    return-void
.end method

.method public setPoolable(Z)V
    .locals 0
    .param p1, "poolable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2475
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    .line 2476
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 4
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2363
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2364
    if-ltz p1, :cond_0

    .line 2368
    mul-int/lit16 v1, p1, 0x3e8

    :try_start_0
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 2369
    monitor-exit v0

    .line 2370
    return-void

    .line 2369
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2365
    :cond_0
    const-string v1, "Statement.21"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "seconds":I
    throw v1

    .line 2369
    .restart local p1    # "seconds":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setResultSetConcurrency(I)V
    .locals 2
    .param p1, "concurrencyFlag"    # I

    .line 2379
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2380
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 2381
    monitor-exit v0

    .line 2384
    goto :goto_0

    .line 2381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "concurrencyFlag":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2382
    .restart local p1    # "concurrencyFlag":I
    :catch_0
    move-exception v0

    .line 2385
    :goto_0
    return-void
.end method

.method setResultSetType(I)V
    .locals 2
    .param p1, "typeFlag"    # I

    .line 2394
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2395
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 2396
    monitor-exit v0

    .line 2399
    goto :goto_0

    .line 2396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "typeFlag":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2397
    .restart local p1    # "typeFlag":I
    :catch_0
    move-exception v0

    .line 2400
    :goto_0
    return-void
.end method

.method protected setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .param p1, "con"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v0

    if-lez v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET net_write_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 712
    :cond_0
    return-void
.end method

.method protected statementBegins()V
    .locals 2

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 897
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 899
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    .line 900
    .local v0, "physicalConn":Lcom/mysql/jdbc/MySQLConnection;
    :goto_0
    instance-of v1, v0, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v1, :cond_0

    .line 901
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_0

    .line 903
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    .line 904
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

    .line 2494
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
