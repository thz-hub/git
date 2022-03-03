.class public Lcom/mysql/jdbc/CallableStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "CallableStatement.java"

# interfaces
.implements Ljava/sql/CallableStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;,
        Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    }
.end annotation


# static fields
.field protected static final JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NOT_OUTPUT_PARAMETER_INDICATOR:I = -0x80000000

.field private static final PARAMETER_NAMESPACE_PREFIX:Ljava/lang/String; = "@com_mysql_jdbc_outparam_"


# instance fields
.field protected callingStoredFunction:Z

.field private functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field private hasOutputParams:Z

.field protected outputParamWasNull:Z

.field private outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

.field private parameterIndexToRsIndex:[I

.field private placeholderToParameterIndexMap:[I

.field private returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42CallableStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4CallableStatement"

    .line 62
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;
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

    sput-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    .line 75
    sput-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    .line 77
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 2
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "paramInfo"    # Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    iget-object v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    iget-object v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 409
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 415
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 437
    iput-object p2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 438
    iget-boolean v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 440
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    .line 444
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->retrieveGeneratedKeys:Z

    .line 445
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "isFunctionCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 542
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 409
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 415
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 544
    iput-boolean p4, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 546
    const/4 v1, 0x1

    if-nez p4, :cond_1

    .line 547
    const-string v2, "CALL"

    invoke-static {p2, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/CallableStatement;->fakeParameterTypes(Z)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->determineParameterTypes()V

    .line 554
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->generateParameterMap()V

    goto :goto_1

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->determineParameterTypes()V

    .line 557
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    .line 559
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->generateParameterMap()V

    .line 562
    :goto_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->retrieveGeneratedKeys:Z

    .line 563
    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/CallableStatement;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mysql/jdbc/CallableStatement;

    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    return-object v0
.end method

.method private checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 13
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 580
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 581
    if-ne p1, v2, :cond_1

    .line 583
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    if-nez v1, :cond_0

    .line 584
    new-instance v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xc

    const-string v8, "VARCHAR"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x5

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;-><init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    monitor-exit v0

    return-object v1

    .line 592
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkParameterIndexBounds(I)V

    .line 594
    add-int/lit8 v1, p1, -0x1

    .line 596
    .local v1, "localParamIndex":I
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-eqz v3, :cond_2

    .line 597
    aget v3, v3, v1

    move v1, v3

    .line 600
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v3

    .line 604
    .local v3, "paramDescriptor":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 605
    iput-boolean v2, v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    .line 606
    iput-boolean v2, v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isIn:Z

    .line 607
    const/4 v4, 0x2

    iput v4, v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

    goto :goto_0

    .line 608
    :cond_3
    iget-boolean v4, v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v4, :cond_4

    .line 613
    :goto_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 615
    monitor-exit v0

    return-object v3

    .line 609
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallableStatement.9"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "CallableStatement.10"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "paramIndex":I
    throw v2

    .line 616
    .end local v1    # "localParamIndex":I
    .end local v3    # "paramDescriptor":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .restart local p1    # "paramIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkParameterIndexBounds(I)V
    .locals 2
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkReadOnlyProcedure()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2304
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2305
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2306
    monitor-exit v0

    return v2

    .line 2309
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    if-eqz v1, :cond_1

    .line 2310
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return v1

    .line 2313
    :cond_1
    const/4 v1, 0x0

    .line 2314
    .local v1, "rs":Ljava/sql/ResultSet;
    const/4 v3, 0x0

    .line 2317
    .local v3, "ps":Ljava/sql/PreparedStatement;
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v4

    .line 2319
    .local v4, "procName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    .line 2321
    .local v5, "catalog":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    .line 2322
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2324
    const-string v6, "`"

    invoke-static {v5, v6}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "`"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2325
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2328
    :cond_2
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2329
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "`"

    const-string v9, "`"

    invoke-static {v6, v7, v9}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2331
    :cond_3
    iget-object v6, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v7, "SELECT SQL_DATA_ACCESS FROM information_schema.routines WHERE routine_schema = ? AND routine_name = ?"

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    move-object v3, v6

    .line 2332
    invoke-interface {v3, v2}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 2333
    invoke-interface {v3, v2}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    .line 2335
    invoke-interface {v3, v8, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2336
    const/4 v6, 0x2

    invoke-interface {v3, v6, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2337
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    move-object v1, v6

    .line 2338
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2339
    invoke-interface {v1, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2340
    .local v6, "sqlDataAccess":Ljava/lang/String;
    const-string v7, "READS SQL DATA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "NO SQL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2341
    :cond_4
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    monitor-enter v7
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2342
    :try_start_2
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v8, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 2343
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v8, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 2344
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2345
    nop

    .line 2362
    .end local v4    # "procName":Ljava/lang/String;
    .end local v5    # "catalog":Ljava/lang/String;
    .end local v6    # "sqlDataAccess":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 2352
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2354
    :cond_5
    if-eqz v3, :cond_6

    .line 2355
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    :cond_6
    move-object v2, v6

    .line 2345
    .local v2, "sqlDataAccess":Ljava/lang/String;
    .restart local v4    # "procName":Ljava/lang/String;
    .restart local v5    # "catalog":Ljava/lang/String;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v8

    .line 2344
    .end local v2    # "sqlDataAccess":Ljava/lang/String;
    .restart local v6    # "sqlDataAccess":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "rs":Ljava/sql/ResultSet;
    .end local v3    # "ps":Ljava/sql/PreparedStatement;
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2348
    .end local v4    # "procName":Ljava/lang/String;
    .end local v5    # "catalog":Ljava/lang/String;
    .end local v6    # "sqlDataAccess":Ljava/lang/String;
    .restart local v1    # "rs":Ljava/sql/ResultSet;
    .restart local v3    # "ps":Ljava/sql/PreparedStatement;
    :cond_7
    nop

    .line 2355
    if-eqz v1, :cond_8

    .line 2352
    :try_start_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2354
    :cond_8
    if-eqz v3, :cond_c

    .line 2355
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_0

    .line 2351
    :catchall_1
    move-exception v2

    .line 2355
    if-eqz v1, :cond_9

    .line 2352
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2354
    :cond_9
    if-eqz v3, :cond_a

    .line 2355
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    :cond_a
    nop

    .line 2351
    throw v2

    .line 2348
    :catch_0
    move-exception v4

    .line 2350
    nop

    .line 2355
    if-eqz v1, :cond_b

    .line 2352
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2354
    :cond_b
    if-eqz v3, :cond_c

    .line 2355
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    :cond_c
    :goto_0
    nop

    .line 2358
    nop

    .line 2359
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v2, v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 2360
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v2, v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 2361
    .end local v1    # "rs":Ljava/sql/ResultSet;
    .end local v3    # "ps":Ljava/sql/PreparedStatement;
    monitor-exit v0

    .line 2362
    return v2

    .line 2361
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private checkStreamability()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 638
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->createStreamingResultSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    const-string v0, "CallableStatement.14"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1C00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 641
    :cond_1
    :goto_0
    return-void
.end method

.method private convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V
    .locals 2
    .param p1, "paramTypesRs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 805
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-direct {v1, p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;-><init>(Lcom/mysql/jdbc/CallableStatement;Ljava/sql/ResultSet;)V

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 806
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private determineParameterTypes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 732
    const/4 v1, 0x0

    .line 736
    .local v1, "paramTypesRs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, "procName":Ljava/lang/String;
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .local v3, "quotedId":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v3, v4

    .line 744
    goto :goto_1

    .line 740
    :catch_0
    move-exception v4

    .line 743
    .local v4, "sqlEx":Ljava/sql/SQLException;
    :try_start_2
    invoke-static {v4}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 746
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_1
    const-string v4, ""

    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    invoke-static {v2, v4, v3, v5}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 747
    .local v4, "parseList":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v5, ""

    .line 749
    .local v5, "tmpCatalog":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_1

    .line 750
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 751
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 755
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 757
    .local v6, "useCatalog":Z
    :goto_2
    iget-object v10, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v11, 0x5

    invoke-interface {v10, v11, v9, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, v5

    :goto_3
    invoke-virtual {p0, v7, v2}, Lcom/mysql/jdbc/CallableStatement;->getParamTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v7

    .line 759
    const/4 v7, 0x0

    .line 761
    .local v7, "hasResults":Z
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 762
    invoke-interface {v1}, Ljava/sql/ResultSet;->previous()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    const/4 v7, 0x1

    .line 767
    :cond_4
    goto :goto_4

    .line 765
    :catch_1
    move-exception v9

    .line 768
    :goto_4
    if-eqz v7, :cond_5

    .line 769
    :try_start_4
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V

    goto :goto_5

    .line 771
    :cond_5
    invoke-direct {p0, v8}, Lcom/mysql/jdbc/CallableStatement;->fakeParameterTypes(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 773
    .end local v2    # "procName":Ljava/lang/String;
    .end local v3    # "quotedId":Ljava/lang/String;
    .end local v4    # "parseList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "tmpCatalog":Ljava/lang/String;
    .end local v6    # "useCatalog":Z
    .end local v7    # "hasResults":Z
    :goto_5
    nop

    .line 791
    const/4 v2, 0x0

    .line 776
    .local v2, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v1, :cond_6

    .line 778
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 781
    goto :goto_6

    .line 779
    :catch_2
    move-exception v3

    .line 780
    .local v3, "sqlEx":Ljava/sql/SQLException;
    move-object v2, v3

    .line 783
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :goto_6
    const/4 v1, 0x0

    .line 786
    :cond_6
    if-nez v2, :cond_7

    .line 789
    .end local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    nop

    .line 790
    .end local v1    # "paramTypesRs":Ljava/sql/ResultSet;
    :try_start_6
    monitor-exit v0

    .line 791
    return-void

    .line 787
    .restart local v1    # "paramTypesRs":Ljava/sql/ResultSet;
    .restart local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    :cond_7
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 774
    .end local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    .line 789
    const/4 v3, 0x0

    .line 776
    .local v3, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v1, :cond_8

    .line 778
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 781
    goto :goto_7

    .line 790
    .end local v1    # "paramTypesRs":Ljava/sql/ResultSet;
    .end local v3    # "sqlExRethrow":Ljava/sql/SQLException;
    :catchall_1
    move-exception v1

    goto :goto_8

    .line 779
    .restart local v1    # "paramTypesRs":Ljava/sql/ResultSet;
    .restart local v3    # "sqlExRethrow":Ljava/sql/SQLException;
    :catch_3
    move-exception v4

    .line 780
    .local v4, "sqlEx":Ljava/sql/SQLException;
    move-object v3, v4

    .line 783
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_7
    const/4 v1, 0x0

    .line 786
    :cond_8
    if-eqz v3, :cond_9

    .line 787
    :try_start_8
    throw v3

    .line 789
    .end local v3    # "sqlExRethrow":Ljava/sql/SQLException;
    :cond_9
    nop

    .line 774
    throw v2

    .line 790
    .end local v1    # "paramTypesRs":Ljava/sql/ResultSet;
    :goto_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private extractProcedureName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v1, "`\"\'"

    const-string v2, "`\"\'"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "sanitizedSql":Ljava/lang/String;
    const-string v1, "CALL "

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 882
    .local v1, "endCallIndex":I
    const/4 v2, 0x5

    .line 884
    .local v2, "offset":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 885
    const-string v4, "SELECT "

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 886
    const/4 v2, 0x7

    .line 889
    :cond_0
    if-eq v1, v3, :cond_3

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v3, "nameBuf":Ljava/lang/StringBuilder;
    add-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, "trimmedStatement":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 896
    .local v5, "statementLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 897
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 899
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x28

    if-eq v7, v8, :cond_2

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_1

    .line 900
    goto :goto_1

    .line 902
    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    .end local v7    # "c":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 906
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 909
    .end local v3    # "nameBuf":Ljava/lang/StringBuilder;
    .end local v4    # "trimmedStatement":Ljava/lang/String;
    .end local v5    # "statementLength":I
    :cond_3
    const-string v3, "CallableStatement.1"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "S1000"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method private fakeParameterTypes(Z)V
    .locals 20
    .param p1, "isReallyProcedure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 666
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 667
    const/16 v3, 0xd

    :try_start_0
    new-array v0, v3, [Lcom/mysql/jdbc/Field;

    move-object v4, v0

    .line 669
    .local v4, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_CAT"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v4, v8

    .line 670
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_SCHEM"

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v4, v7

    .line 671
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_NAME"

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 672
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "COLUMN_NAME"

    invoke-direct {v0, v6, v9, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x3

    aput-object v0, v4, v6

    .line 673
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v9, ""

    const-string v10, "COLUMN_TYPE"

    invoke-direct {v0, v9, v10, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x4

    aput-object v0, v4, v9

    .line 674
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v11, "DATA_TYPE"

    const/4 v12, 0x5

    invoke-direct {v0, v10, v11, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v4, v12

    .line 675
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v11, "TYPE_NAME"

    invoke-direct {v0, v10, v11, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v0, v4, v10

    .line 676
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v13, "PRECISION"

    invoke-direct {v0, v11, v13, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x7

    aput-object v0, v4, v11

    .line 677
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v14, "LENGTH"

    invoke-direct {v0, v13, v14, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0x8

    aput-object v0, v4, v13

    .line 678
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v14, ""

    const-string v15, "SCALE"

    invoke-direct {v0, v14, v15, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0x9

    aput-object v0, v4, v14

    .line 679
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "RADIX"

    invoke-direct {v0, v15, v14, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xa

    aput-object v0, v4, v14

    .line 680
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "NULLABLE"

    invoke-direct {v0, v15, v14, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xb

    aput-object v0, v4, v14

    .line 681
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "REMARKS"

    invoke-direct {v0, v15, v14, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xc

    aput-object v0, v4, v14

    .line 683
    const/4 v15, 0x0

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v15

    :goto_0
    move-object/from16 v17, v0

    .line 685
    .local v17, "procName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 688
    .local v18, "procNameAsBytes":[B
    move-object/from16 v13, v17

    .end local v17    # "procName":Ljava/lang/String;
    .local v13, "procName":Ljava/lang/String;
    if-nez v13, :cond_1

    move-object v0, v15

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {v13, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    .end local v18    # "procNameAsBytes":[B
    .local v0, "procNameAsBytes":[B
    :goto_1
    goto :goto_2

    .line 689
    .end local v0    # "procNameAsBytes":[B
    .restart local v18    # "procNameAsBytes":[B
    :catch_0
    move-exception v0

    .line 690
    .local v0, "ueEx":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    iget-object v11, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v13, v11}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v11

    move-object v0, v11

    .line 693
    .end local v18    # "procNameAsBytes":[B
    .local v0, "procNameAsBytes":[B
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v11, "resultRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-boolean v10, v1, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v10, :cond_2

    iget v10, v1, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    add-int/2addr v10, v7

    goto :goto_3

    :cond_2
    iget v10, v1, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    .line 696
    .local v10, "numOfParameters":I
    :goto_3
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "i":I
    :goto_4
    if-ge v12, v10, :cond_4

    .line 697
    new-array v14, v3, [[B

    .line 698
    .local v14, "row":[[B
    aput-object v15, v14, v8

    .line 699
    aput-object v15, v14, v7

    .line 700
    aput-object v0, v14, v5

    .line 701
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v15, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v15}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    aput-object v3, v14, v6

    .line 703
    iget-boolean v3, v1, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v3, :cond_3

    if-nez v12, :cond_3

    .line 705
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v15, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v15}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    aput-object v3, v14, v9

    goto :goto_5

    .line 707
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v15, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v15}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    aput-object v3, v14, v9

    .line 710
    :goto_5
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iget-object v3, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v15, v3}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    const/4 v15, 0x5

    aput-object v3, v14, v15

    .line 711
    const-string v3, "VARCHAR"

    iget-object v6, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v6}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    const/4 v6, 0x6

    aput-object v3, v14, v6

    .line 712
    const v3, 0xffff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v6, v7}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v14, v7

    .line 713
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v6}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    const/16 v6, 0x8

    aput-object v3, v14, v6

    .line 714
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v6}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v3

    const/16 v6, 0x9

    aput-object v3, v14, v6

    .line 715
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v6, v7}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v6

    aput-object v6, v14, v3

    .line 717
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v6, v7}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v14, v7

    .line 719
    const/16 v6, 0xc

    const/16 v16, 0x0

    aput-object v16, v14, v6

    .line 721
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v14, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    nop

    .end local v14    # "row":[[B
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, v16

    const/16 v3, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v14, 0xc

    goto/16 :goto_4

    .line 724
    .end local v12    # "i":I
    :cond_4
    iget-object v3, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v4, v11, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 726
    .local v3, "paramTypesRs":Ljava/sql/ResultSet;
    invoke-direct {v1, v3}, Lcom/mysql/jdbc/CallableStatement;->convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V

    .line 727
    .end local v0    # "procNameAsBytes":[B
    .end local v3    # "paramTypesRs":Ljava/sql/ResultSet;
    .end local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v10    # "numOfParameters":I
    .end local v11    # "resultRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v13    # "procName":Ljava/lang/String;
    monitor-exit v2

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private generateParameterMap()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-nez v1, :cond_0

    .line 484
    monitor-exit v0

    return-void

    .line 489
    :cond_0
    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterCount()I

    move-result v1

    .line 491
    .local v1, "parameterCountFromMetaData":I
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    if-eq v2, v1, :cond_4

    .line 492
    iget v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, "startIndex":I
    iget-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v4, :cond_1

    .line 497
    const/4 v5, 0x0

    aput v5, v2, v5

    .line 498
    const/4 v3, 0x1

    .line 501
    :cond_1
    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v4, "SELECT"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v4, "CALL"

    :goto_0
    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 504
    .local v2, "startPos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 505
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const/16 v6, 0x28

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 507
    .local v5, "parenOpenPos":I
    if-eq v5, v4, :cond_4

    .line 508
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v8, ")"

    const-string v9, "\'"

    const-string v10, "\'"

    sget-object v11, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move v6, v5

    invoke-static/range {v6 .. v11}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v6

    .line 510
    .local v6, "parenClosePos":I
    if-eq v6, v4, :cond_4

    .line 511
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    const-string v8, "\'\""

    const-string v9, "\'\""

    const/4 v10, 0x1

    invoke-static {v4, v7, v8, v9, v10}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 513
    .local v4, "parsedParameters":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 515
    .local v7, "numParsedParameters":I
    move v8, v3

    .line 516
    .local v8, "placeholderCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_4

    .line 517
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 518
    iget-object v10, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "placeholderCount":I
    .local v11, "placeholderCount":I
    add-int v12, v3, v9

    aput v12, v10, v8

    move v8, v11

    .line 516
    .end local v11    # "placeholderCount":I
    .restart local v8    # "placeholderCount":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 525
    .end local v1    # "parameterCountFromMetaData":I
    .end local v2    # "startPos":I
    .end local v3    # "startIndex":I
    .end local v4    # "parsedParameters":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "parenOpenPos":I
    .end local v6    # "parenClosePos":I
    .end local v7    # "numParsedParameters":I
    .end local v8    # "placeholderCount":I
    .end local v9    # "i":I
    :cond_4
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)Lcom/mysql/jdbc/CallableStatement;
    .locals 3
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "paramInfo"    # Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 471
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    return-object v0

    .line 475
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement;

    return-object v0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mysql/jdbc/CallableStatement;
    .locals 4
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "isFunctionCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 455
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 459
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement;

    return-object v0
.end method

.method private hasParametersView()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2372
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2374
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2375
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 2376
    .local v2, "dbmd1":Ljava/sql/DatabaseMetaData;
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->gethasParametersView()Z

    move-result v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 2379
    .end local v2    # "dbmd1":Ljava/sql/DatabaseMetaData;
    :cond_0
    monitor-exit v0

    return v1

    .line 2383
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2380
    :catch_0
    move-exception v2

    .line 2381
    .local v2, "e":Ljava/sql/SQLException;
    monitor-exit v0

    return v1

    .line 2383
    .end local v2    # "e":Ljava/sql/SQLException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static mangleParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "origParameterName"    # Ljava/lang/String;

    .line 388
    if-nez p0, :cond_0

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 394
    .local v0, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 395
    const/4 v0, 0x1

    .line 398
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@com_mysql_jdbc_outparam_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v1, "paramNameBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private retrieveOutParams()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1842
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1843
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numberOfParameters()I

    move-result v1

    .line 1845
    .local v1, "numParameters":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    .line 1847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1848
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    const/high16 v4, -0x80000000

    aput v4, v3, v2

    .line 1847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1851
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 1853
    .local v2, "localParamIndex":I
    const/4 v3, 0x0

    if-lez v1, :cond_a

    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v4, "outParameterQuery":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 1857
    .local v5, "firstParam":Z
    const/4 v6, 0x0

    .line 1859
    .local v6, "hadOutputParams":Z
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v7}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1860
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 1862
    .local v8, "retrParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-boolean v9, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v9, :cond_4

    .line 1863
    const/4 v6, 0x1

    .line 1865
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    iget v10, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/lit8 v11, v2, 0x1

    .end local v2    # "localParamIndex":I
    .local v11, "localParamIndex":I
    aput v2, v9, v10

    .line 1867
    iget-object v2, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nullnp"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 1871
    :cond_1
    iget-object v2, v8, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v2}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, "outParameterName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1874
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1876
    :cond_2
    const/4 v5, 0x0

    .line 1879
    :goto_2
    const-string v9, "@"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1880
    const/16 v9, 0x40

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1883
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v11

    .line 1885
    .end local v8    # "retrParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .end local v11    # "localParamIndex":I
    .local v2, "localParamIndex":I
    :cond_4
    goto :goto_1

    .line 1887
    .end local v7    # "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :cond_5
    if-eqz v6, :cond_9

    .line 1889
    const/4 v7, 0x0

    .line 1890
    .local v7, "outParameterStmt":Ljava/sql/Statement;
    const/4 v8, 0x0

    .line 1893
    .local v8, "outParamRs":Ljava/sql/ResultSet;
    :try_start_1
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v9

    move-object v7, v9

    .line 1894
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v9

    move-object v8, v9

    .line 1895
    move-object v9, v8

    check-cast v9, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v9}, Lcom/mysql/jdbc/ResultSetInternalMethods;->copy()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v9

    iput-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1897
    invoke-interface {v9}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1898
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v9}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V

    .line 1899
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    :cond_6
    nop

    .line 1913
    if-eqz v7, :cond_7

    .line 1903
    :try_start_2
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    :cond_7
    nop

    .line 1905
    nop

    .line 1906
    .end local v7    # "outParameterStmt":Ljava/sql/Statement;
    .end local v8    # "outParamRs":Ljava/sql/ResultSet;
    goto :goto_3

    .line 1902
    .restart local v7    # "outParameterStmt":Ljava/sql/Statement;
    .restart local v8    # "outParamRs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 1903
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 1902
    :cond_8
    throw v3

    .line 1907
    .end local v7    # "outParameterStmt":Ljava/sql/Statement;
    .end local v8    # "outParamRs":Ljava/sql/ResultSet;
    :cond_9
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1909
    .end local v4    # "outParameterQuery":Ljava/lang/StringBuilder;
    .end local v5    # "firstParam":Z
    .end local v6    # "hadOutputParams":Z
    :goto_3
    goto :goto_4

    .line 1910
    :cond_a
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1912
    .end local v1    # "numParameters":I
    .end local v2    # "localParamIndex":I
    :goto_4
    monitor-exit v0

    .line 1913
    return-void

    .line 1912
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setInOutParamsOnServer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1993
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1994
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-lez v1, :cond_7

    .line 1995
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1997
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 2000
    .local v2, "inParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isIn:Z

    if-eqz v3, :cond_6

    .line 2001
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nullnp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 2005
    :cond_0
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2006
    .local v3, "inOutParameterName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    add-int/2addr v5, v7

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2007
    .local v4, "queryBuf":Ljava/lang/StringBuilder;
    const-string v5, "SET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2011
    const/4 v5, 0x0

    .line 2014
    .local v5, "setPstmt":Lcom/mysql/jdbc/PreparedStatement;
    :try_start_1
    iget-object v8, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Wrapper;

    const-class v9, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v8, v9}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/PreparedStatement;

    move-object v5, v8

    .line 2016
    iget-object v8, p0, Lcom/mysql/jdbc/CallableStatement;->isNull:[Z

    iget v9, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_1

    .line 2017
    const-string v6, "NULL"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_2

    .line 2020
    :cond_1
    iget v8, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/CallableStatement;->getBytesRepresentation(I)[B

    move-result-object v8

    .line 2022
    .local v8, "parameterAsBytes":[B
    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 2023
    array-length v10, v8

    const/16 v11, 0x8

    if-le v10, v11, :cond_2

    aget-byte v9, v8, v9

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_2

    aget-byte v9, v8, v7

    const/16 v10, 0x62

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    aget-byte v9, v8, v9

    const/16 v10, 0x69

    if-ne v9, v10, :cond_2

    const/4 v9, 0x3

    aget-byte v9, v8, v9

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_2

    aget-byte v6, v8, v6

    const/16 v9, 0x61

    if-ne v6, v9, :cond_2

    const/4 v6, 0x5

    aget-byte v6, v8, v6

    const/16 v9, 0x72

    if-ne v6, v9, :cond_2

    const/4 v6, 0x6

    aget-byte v6, v8, v6

    const/16 v9, 0x79

    if-ne v6, v9, :cond_2

    const/4 v6, 0x7

    aget-byte v6, v8, v6

    const/16 v9, 0x27

    if-ne v6, v9, :cond_2

    .line 2026
    invoke-virtual {v5, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_2

    .line 2028
    :cond_2
    iget v6, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    .line 2030
    .local v6, "sqlType":I
    sparse-switch v6, :sswitch_data_0

    .line 2041
    invoke-virtual {v5, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    goto :goto_1

    .line 2037
    :sswitch_0
    invoke-virtual {v5, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 2043
    .end local v6    # "sqlType":I
    :goto_1
    goto :goto_2

    .line 2045
    :cond_3
    invoke-virtual {v5, v7, v9}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2049
    .end local v8    # "parameterAsBytes":[B
    :goto_2
    invoke-virtual {v5}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    nop

    .line 2059
    if-eqz v5, :cond_4

    .line 2052
    :try_start_2
    invoke-virtual {v5}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    :cond_4
    nop

    .line 2054
    goto :goto_3

    .line 2051
    :catchall_0
    move-exception v6

    .line 2052
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 2051
    :cond_5
    throw v6

    .line 2056
    .end local v2    # "inParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .end local v3    # "inOutParameterName":Ljava/lang/String;
    .end local v4    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v5    # "setPstmt":Lcom/mysql/jdbc/PreparedStatement;
    :cond_6
    :goto_3
    goto/16 :goto_0

    .line 2058
    .end local v1    # "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :cond_7
    monitor-exit v0

    .line 2059
    return-void

    .line 2058
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method private setOutParams()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2110
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2111
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-lez v1, :cond_6

    .line 2112
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 2115
    .local v2, "outParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v3, :cond_5

    .line 2117
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nullnp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 2121
    :cond_0
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2123
    .local v4, "outParameterName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2125
    .local v3, "outParamIndex":I
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-nez v5, :cond_1

    .line 2126
    iget v5, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .end local v3    # "outParamIndex":I
    .local v5, "outParamIndex":I
    goto :goto_3

    .line 2129
    .end local v5    # "outParamIndex":I
    .restart local v3    # "outParamIndex":I
    :cond_1
    const/4 v5, 0x0

    .line 2131
    .local v5, "found":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 2132
    aget v7, v7, v6

    iget v8, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    if-ne v7, v8, :cond_2

    .line 2133
    add-int/lit8 v3, v6, 0x1

    .line 2134
    const/4 v5, 0x1

    .line 2135
    goto :goto_2

    .line 2131
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2139
    .end local v6    # "i":I
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 2146
    .end local v5    # "found":Z
    :goto_3
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v6, p0, Lcom/mysql/jdbc/CallableStatement;->charEncoding:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/mysql/jdbc/CallableStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_4

    .line 2140
    .restart local v5    # "found":Z
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallableStatement.21"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CallableStatement.22"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6

    .line 2149
    .end local v2    # "outParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .end local v3    # "outParamIndex":I
    .end local v4    # "outParameterName":Ljava/lang/String;
    .end local v5    # "found":Z
    :cond_5
    :goto_4
    goto/16 :goto_0

    .line 2151
    .end local v1    # "paramIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;>;"
    :cond_6
    monitor-exit v0

    .line 2152
    return-void

    .line 2151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBatch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 574
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->addBatch()V

    .line 575
    return-void
.end method

.method protected checkReadOnlySafeStatement()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2368
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkReadOnlySafeStatement()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkReadOnlyProcedure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 646
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 649
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_0

    .line 650
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    :cond_0
    nop

    .line 656
    :try_start_2
    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 654
    nop

    .line 655
    monitor-exit v0

    .line 656
    return-void

    .line 653
    :catchall_0
    move-exception v2

    .line 656
    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 653
    throw v2

    .line 655
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 817
    const/4 v1, 0x0

    .line 819
    .local v1, "returnVal":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 821
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 822
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 824
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->execute()Z

    move-result v2

    move v1, v2

    .line 826
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 828
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    .line 829
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 834
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-nez v2, :cond_1

    .line 835
    monitor-exit v0

    return v1

    .line 839
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 840
    .end local v1    # "returnVal":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeBatch()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2214
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->executeLargeBatch()[J

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v0

    return-object v0
.end method

.method public executeLargeBatch()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2415
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    if-nez v0, :cond_0

    .line 2420
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeBatch()[J

    move-result-object v0

    return-object v0

    .line 2416
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t call executeBatch() on CallableStatement with OUTPUT parameters"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeLargeUpdate()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2391
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2392
    const-wide/16 v1, -0x1

    .line 2394
    .local v1, "returnVal":J
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 2396
    iget-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v3, :cond_0

    .line 2397
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->execute()Z

    .line 2399
    const-wide/16 v3, -0x1

    monitor-exit v0

    return-wide v3

    .line 2402
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 2403
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 2405
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v3

    move-wide v1, v3

    .line 2407
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 2409
    monitor-exit v0

    return-wide v1

    .line 2410
    .end local v1    # "returnVal":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 852
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 854
    const/4 v1, 0x0

    .line 856
    .local v1, "execResults":Ljava/sql/ResultSet;
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 857
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 859
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 861
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 863
    monitor-exit v0

    return-object v1

    .line 864
    .end local v1    # "execResults":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 874
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->executeLargeUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected fixParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "paramNameIn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 924
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 926
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.0"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "CallableStatement.15"

    goto :goto_0

    :cond_1
    const-string v1, "CallableStatement.16"

    :goto_0
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramNameIn":Ljava/lang/String;
    throw v1

    .line 932
    .restart local p1    # "paramNameIn":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    const-string v1, "nullpn"

    move-object p1, v1

    .line 936
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    if-nez v1, :cond_4

    .line 941
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 937
    :cond_4
    const-string v1, "No access to parameters by name when connection has been configured not to access procedure bodies"

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramNameIn":Ljava/lang/String;
    throw v1

    .line 942
    .restart local p1    # "paramNameIn":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 952
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getArray(I)Ljava/sql/Array;

    move-result-object v2

    .line 954
    .local v2, "retValue":Ljava/sql/Array;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 956
    monitor-exit v0

    return-object v2

    .line 957
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Array;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 965
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 967
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object v2

    .line 969
    .local v2, "retValue":Ljava/sql/Array;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 971
    monitor-exit v0

    return-object v2

    .line 972
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Array;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 980
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 982
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 984
    .local v2, "retValue":Ljava/math/BigDecimal;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 986
    monitor-exit v0

    return-object v2

    .line 987
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/math/BigDecimal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1004
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1006
    .local v2, "retValue":Ljava/math/BigDecimal;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1008
    monitor-exit v0

    return-object v2

    .line 1009
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/math/BigDecimal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1017
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1019
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1021
    .local v2, "retValue":Ljava/math/BigDecimal;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1023
    monitor-exit v0

    return-object v2

    .line 1024
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/math/BigDecimal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1032
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1034
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBlob(I)Ljava/sql/Blob;

    move-result-object v2

    .line 1036
    .local v2, "retValue":Ljava/sql/Blob;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1038
    monitor-exit v0

    return-object v2

    .line 1039
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Blob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1047
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1049
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v2

    .line 1051
    .local v2, "retValue":Ljava/sql/Blob;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1053
    monitor-exit v0

    return-object v2

    .line 1054
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Blob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1062
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1064
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBoolean(I)Z

    move-result v2

    .line 1066
    .local v2, "retValue":Z
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1068
    monitor-exit v0

    return v2

    .line 1069
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1076
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1077
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1079
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1081
    .local v2, "retValue":Z
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1083
    monitor-exit v0

    return v2

    .line 1084
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getByte(I)B
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1091
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1092
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1094
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getByte(I)B

    move-result v2

    .line 1096
    .local v2, "retValue":B
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1098
    monitor-exit v0

    return v2

    .line 1099
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1107
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1109
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 1111
    .local v2, "retValue":B
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1113
    monitor-exit v0

    return v2

    .line 1114
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1121
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1122
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1124
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBytes(I)[B

    move-result-object v2

    .line 1126
    .local v2, "retValue":[B
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1128
    monitor-exit v0

    return-object v2

    .line 1129
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1137
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1139
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1141
    .local v2, "retValue":[B
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1143
    monitor-exit v0

    return-object v2

    .line 1144
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1152
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1154
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getClob(I)Ljava/sql/Clob;

    move-result-object v2

    .line 1156
    .local v2, "retValue":Ljava/sql/Clob;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1158
    monitor-exit v0

    return-object v2

    .line 1159
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Clob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1167
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1169
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object v2

    .line 1171
    .local v2, "retValue":Ljava/sql/Clob;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1173
    monitor-exit v0

    return-object v2

    .line 1174
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Clob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1182
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1184
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(I)Ljava/sql/Date;

    move-result-object v2

    .line 1186
    .local v2, "retValue":Ljava/sql/Date;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1188
    monitor-exit v0

    return-object v2

    .line 1189
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Date;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1197
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1199
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v2

    .line 1201
    .local v2, "retValue":Ljava/sql/Date;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1203
    monitor-exit v0

    return-object v2

    .line 1204
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Date;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1211
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1212
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1214
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v2

    .line 1216
    .local v2, "retValue":Ljava/sql/Date;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1218
    monitor-exit v0

    return-object v2

    .line 1219
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Date;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1227
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1229
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v2

    .line 1231
    .local v2, "retValue":Ljava/sql/Date;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1233
    monitor-exit v0

    return-object v2

    .line 1234
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Date;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(I)D
    .locals 5
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1242
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1244
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDouble(I)D

    move-result-wide v2

    .line 1246
    .local v2, "retValue":D
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1248
    monitor-exit v0

    return-wide v2

    .line 1249
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":D
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1257
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1259
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1261
    .local v2, "retValue":D
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1263
    monitor-exit v0

    return-wide v2

    .line 1264
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":D
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1271
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1274
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFloat(I)F

    move-result v2

    .line 1276
    .local v2, "retValue":F
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1278
    monitor-exit v0

    return v2

    .line 1279
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1287
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1289
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 1291
    .local v2, "retValue":F
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1293
    monitor-exit v0

    return v2

    .line 1294
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1301
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1304
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getInt(I)I

    move-result v2

    .line 1306
    .local v2, "retValue":I
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1308
    monitor-exit v0

    return v2

    .line 1309
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1316
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1317
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1319
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1321
    .local v2, "retValue":I
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1323
    monitor-exit v0

    return v2

    .line 1324
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(I)J
    .locals 5
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1332
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1334
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getLong(I)J

    move-result-wide v2

    .line 1336
    .local v2, "retValue":J
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1338
    monitor-exit v0

    return-wide v2

    .line 1339
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1347
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1349
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1351
    .local v2, "retValue":J
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1353
    monitor-exit v0

    return-wide v2

    .line 1354
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getNamedParamIndex(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "forOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1359
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1365
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1370
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v1

    move-object v2, v1

    .local v2, "namedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    if-eqz v1, :cond_5

    .line 1375
    if-eqz p2, :cond_1

    iget-boolean v1, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallableStatement.5"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CallableStatement.6"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramName":Ljava/lang/String;
    .end local p2    # "forOut":Z
    throw v1

    .line 1380
    .restart local p1    # "paramName":Ljava/lang/String;
    .restart local p2    # "forOut":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-nez v1, :cond_2

    .line 1381
    iget v1, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 1384
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 1385
    aget v3, v3, v1

    iget v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    if-ne v3, v4, :cond_3

    .line 1386
    add-int/lit8 v3, v1, 0x1

    monitor-exit v0

    return v3

    .line 1384
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1390
    .end local v1    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find local placeholder mapping for parameter named \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramName":Ljava/lang/String;
    .end local p2    # "forOut":Z
    throw v1

    .line 1371
    .end local v2    # "namedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .restart local p1    # "paramName":Ljava/lang/String;
    .restart local p2    # "forOut":Z
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CallableStatement.4"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramName":Ljava/lang/String;
    .end local p2    # "forOut":Z
    throw v1

    .line 1366
    .restart local p1    # "paramName":Ljava/lang/String;
    .restart local p2    # "forOut":Z
    :cond_6
    const-string v1, "CallableStatement.2"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramName":Ljava/lang/String;
    .end local p2    # "forOut":Z
    throw v1

    .line 1360
    .restart local p1    # "paramName":Ljava/lang/String;
    .restart local p2    # "forOut":Z
    :cond_7
    const-string v1, "No access to parameters by name when connection has been configured not to access procedure bodies"

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramName":Ljava/lang/String;
    .end local p2    # "forOut":Z
    throw v1

    .line 1392
    .restart local p1    # "paramName":Ljava/lang/String;
    .restart local p2    # "forOut":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 5
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1399
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1400
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v1

    .line 1402
    .local v1, "paramDescriptor":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2

    .line 1404
    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v3

    iget v4, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object v3

    .line 1406
    .local v3, "retVal":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1408
    monitor-exit v0

    return-object v3

    .line 1409
    .end local v1    # "paramDescriptor":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "retVal":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1459
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1460
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1463
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1465
    .local v2, "retVal":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1467
    monitor-exit v0

    return-object v2

    .line 1468
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retVal":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1416
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1417
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1419
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 1421
    .local v2, "retVal":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1423
    monitor-exit v0

    return-object v2

    .line 1424
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retVal":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1432
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1434
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1436
    .local v2, "retValue":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1438
    monitor-exit v0

    return-object v2

    .line 1439
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1472
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1473
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1475
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1477
    .local v2, "retValue":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1479
    monitor-exit v0

    return-object v2

    .line 1480
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1446
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1447
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1449
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 1451
    .local v2, "retValue":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1453
    monitor-exit v0

    return-object v2

    .line 1454
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1495
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1497
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez v1, :cond_2

    .line 1502
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numberOfParameters()I

    move-result v1

    if-nez v1, :cond_1

    .line 1503
    const-string v1, "CallableStatement.7"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramIndex":I
    throw v1

    .line 1506
    .restart local p1    # "paramIndex":I
    :cond_1
    const-string v1, "CallableStatement.8"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramIndex":I
    throw v1

    .line 1509
    .restart local p1    # "paramIndex":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getParamTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "routineName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    .line 796
    .local v0, "getProcRetFuncsCurrentValue":Z
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 797
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "%"

    invoke-interface {v1, p1, v2, p2, v3}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    .line 797
    return-object v1

    .line 799
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setGetProceduresReturnsFunctions(Z)V

    throw v1
.end method

.method protected getParameterIndexOffset()I
    .locals 1

    .line 2220
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v0, :cond_0

    .line 2221
    const/4 v0, -0x1

    return v0

    .line 2224
    :cond_0
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-nez v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    monitor-exit v0

    return-object v1

    .line 1520
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;-><init>(Lcom/mysql/jdbc/CallableStatement;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    monitor-exit v0

    return-object v1

    .line 1521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1528
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1529
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1531
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getRef(I)Ljava/sql/Ref;

    move-result-object v2

    .line 1533
    .local v2, "retValue":Ljava/sql/Ref;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1535
    monitor-exit v0

    return-object v2

    .line 1536
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Ref;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1543
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1544
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1546
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object v2

    .line 1548
    .local v2, "retValue":Ljava/sql/Ref;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1550
    monitor-exit v0

    return-object v2

    .line 1551
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Ref;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1558
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1559
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1561
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getShort(I)S

    move-result v2

    .line 1563
    .local v2, "retValue":S
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1565
    monitor-exit v0

    return v2

    .line 1566
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":S
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1573
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1574
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1576
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getShort(Ljava/lang/String;)S

    move-result v2

    .line 1578
    .local v2, "retValue":S
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1580
    monitor-exit v0

    return v2

    .line 1581
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":S
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1588
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1589
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1591
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, "retValue":Ljava/lang/String;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1595
    monitor-exit v0

    return-object v2

    .line 1596
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1604
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1606
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1608
    .local v2, "retValue":Ljava/lang/String;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1610
    monitor-exit v0

    return-object v2

    .line 1611
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1618
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1619
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1621
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(I)Ljava/sql/Time;

    move-result-object v2

    .line 1623
    .local v2, "retValue":Ljava/sql/Time;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1625
    monitor-exit v0

    return-object v2

    .line 1626
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Time;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1633
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1634
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1636
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v2

    .line 1638
    .local v2, "retValue":Ljava/sql/Time;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1640
    monitor-exit v0

    return-object v2

    .line 1641
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Time;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1649
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1651
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v2

    .line 1653
    .local v2, "retValue":Ljava/sql/Time;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1655
    monitor-exit v0

    return-object v2

    .line 1656
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Time;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1664
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1666
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object v2

    .line 1668
    .local v2, "retValue":Ljava/sql/Time;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1670
    monitor-exit v0

    return-object v2

    .line 1671
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Time;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1678
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1679
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1681
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v2

    .line 1683
    .local v2, "retValue":Ljava/sql/Timestamp;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1685
    monitor-exit v0

    return-object v2

    .line 1686
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Timestamp;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1693
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1696
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 1698
    .local v2, "retValue":Ljava/sql/Timestamp;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1700
    monitor-exit v0

    return-object v2

    .line 1701
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Timestamp;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1708
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1709
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1711
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 1713
    .local v2, "retValue":Ljava/sql/Timestamp;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1715
    monitor-exit v0

    return-object v2

    .line 1716
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Timestamp;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1723
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1724
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1726
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 1728
    .local v2, "retValue":Ljava/sql/Timestamp;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1730
    monitor-exit v0

    return-object v2

    .line 1731
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/sql/Timestamp;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 4
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1738
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1739
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1741
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getURL(I)Ljava/net/URL;

    move-result-object v2

    .line 1743
    .local v2, "retValue":Ljava/net/URL;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1745
    monitor-exit v0

    return-object v2

    .line 1746
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/net/URL;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1753
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1754
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1756
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1758
    .local v2, "retValue":Ljava/net/URL;
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1760
    monitor-exit v0

    return-object v2

    .line 1761
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v2    # "retValue":Ljava/net/URL;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected mapOutputParameterIndexToRsIndex(I)I
    .locals 6
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1766
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1767
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1768
    monitor-exit v0

    return v1

    .line 1771
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkParameterIndexBounds(I)V

    .line 1773
    add-int/lit8 v1, p1, -0x1

    .line 1775
    .local v1, "localParamIndex":I
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-eqz v2, :cond_1

    .line 1776
    aget v2, v2, v1

    move v1, v2

    .line 1779
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    aget v2, v2, v1

    .line 1781
    .local v2, "rsIndex":I
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 1786
    add-int/lit8 v3, v2, 0x1

    monitor-exit v0

    return v3

    .line 1782
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallableStatement.21"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "CallableStatement.22"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local p1    # "paramIndex":I
    throw v3

    .line 1787
    .end local v1    # "localParamIndex":I
    .end local v2    # "rsIndex":I
    .restart local p1    # "paramIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOutParameter(II)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1794
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    .line 1795
    .local v0, "paramDescriptor":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iput p2, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    .line 1796
    return-void
.end method

.method public registerOutParameter(III)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1802
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    .line 1803
    return-void
.end method

.method public registerOutParameter(IILjava/lang/String;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1809
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 1810
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1816
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1817
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    .line 1818
    monitor-exit v0

    .line 1819
    return-void

    .line 1818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1825
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    .line 1826
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1832
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    .line 1833
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;)V

    .line 2230
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1919
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 1920
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    .line 2235
    return-void
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 1927
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 2240
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 1934
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    .line 2245
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/io/InputStream;)V

    .line 2255
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/io/InputStream;J)V

    .line 2260
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/sql/Blob;)V

    .line 2250
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1940
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBoolean(IZ)V

    .line 1941
    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setByte(IB)V

    .line 1948
    return-void
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setBytes(I[B)V

    .line 1955
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 2265
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 1962
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 2270
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/io/Reader;)V

    .line 2280
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/io/Reader;J)V

    .line 2285
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/sql/Clob;)V

    .line 2275
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setDate(ILjava/sql/Date;)V

    .line 1969
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1975
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 1976
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1982
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setDouble(ID)V

    .line 1983
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1989
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setFloat(IF)V

    .line 1990
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2065
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setInt(II)V

    .line 2066
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setLong(IJ)V

    .line 2073
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 2290
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 2295
    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2079
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setNull(II)V

    .line 2080
    return-void
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setNull(IILjava/lang/String;)V

    .line 2087
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2093
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setObject(ILjava/lang/Object;)V

    .line 2094
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setObject(ILjava/lang/Object;I)V

    .line 2101
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2107
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setShort(IS)V

    .line 2159
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setString(ILjava/lang/String;)V

    .line 2166
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setTime(ILjava/sql/Time;)V

    .line 2173
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    .line 2180
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2187
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 2194
    return-void
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setURL(ILjava/net/URL;)V

    .line 2201
    return-void
.end method

.method public wasNull()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2207
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2208
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    monitor-exit v0

    return v1

    .line 2209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
