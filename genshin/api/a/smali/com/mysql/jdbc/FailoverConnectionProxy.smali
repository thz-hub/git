.class public Lcom/mysql/jdbc/FailoverConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "FailoverConnectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRIMARY_HOST_INDEX:I = 0x0

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_COMMIT:Ljava/lang/String; = "commit"

.field private static final METHOD_ROLLBACK:Ljava/lang/String; = "rollback"

.field private static final METHOD_SET_AUTO_COMMIT:Ljava/lang/String; = "setAutoCommit"

.field private static final METHOD_SET_READ_ONLY:Ljava/lang/String; = "setReadOnly"

.field private static final NO_CONNECTION_INDEX:I = -0x1


# instance fields
.field private currentHostIndex:I

.field private enableFallBackToPrimaryHost:Z

.field private explicitlyAutoCommit:Z

.field private explicitlyReadOnly:Ljava/lang/Boolean;

.field private failoverReadOnly:Z

.field private primaryHostFailTimeMillis:J

.field private primaryHostIndex:I

.field private queriesBeforeRetryPrimaryHost:J

.field private queriesIssuedSinceFailover:J

.field private retriesAllDown:I

.field private secondsBeforeRetryPrimaryHost:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    new-array v0, v2, [Ljava/lang/Class;

    const-string v2, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    .line 73
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 8
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 57
    iput-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    .line 59
    iput-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    .line 123
    new-instance v4, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-direct {v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 124
    .local v4, "connProps":Lcom/mysql/jdbc/ConnectionPropertiesImpl;
    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 126
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSecondsBeforeRetryMaster()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    .line 127
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getQueriesBeforeRetryMaster()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    .line 128
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getFailOverReadOnly()Z

    move-result v5

    iput-boolean v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    .line 129
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getRetriesAllDown()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I

    .line 131
    iget v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-gtz v5, :cond_0

    iget-wide v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    .line 133
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 135
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/FailoverConnectionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mysql/jdbc/FailoverConnectionProxy;

    .line 38
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    return v0
.end method

.method private declared-synchronized connectTo(I)V
    .locals 4
    .param p1, "hostIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    nop

    .line 235
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    .end local p1    # "hostIndex":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 227
    .restart local p1    # "hostIndex":I
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "primary"

    goto :goto_0

    :cond_0
    const-string v2, "secondary"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " host \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .local v1, "msg":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local p1    # "hostIndex":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/Connection;
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    .local p0, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 109
    .local v0, "connProxy":Lcom/mysql/jdbc/FailoverConnectionProxy;
    const-class v1, Lcom/mysql/jdbc/Connection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Connection;

    return-object v1
.end method

.method private declared-synchronized failOver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized failOver(I)V
    .locals 13
    .param p1, "failedHostIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 281
    .local v0, "prevHostIndex":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v2

    .line 282
    .local v2, "nextHostIndex":I
    move v3, v2

    .line 284
    .local v3, "firstHostIndexTried":I
    const/4 v4, 0x0

    .line 285
    .local v4, "lastExceptionCaught":Ljava/sql/SQLException;
    const/4 v5, 0x0

    .line 286
    .local v5, "attempts":I
    const/4 v6, 0x0

    .line 287
    .local v6, "gotConnection":Z
    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v0, v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 290
    .local v7, "firstConnOrPassedByPrimaryHost":Z
    :cond_2
    :goto_1
    if-nez v7, :cond_4

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 299
    :catch_0
    move-exception v9

    goto :goto_4

    .line 290
    :cond_4
    :goto_2
    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 292
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V

    .line 294
    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 295
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_5
    const/4 v6, 0x1

    .line 319
    goto :goto_8

    .line 300
    .local v9, "e":Ljava/sql/SQLException;
    :goto_4
    move-object v4, v9

    .line 302
    :try_start_2
    invoke-virtual {p0, v9}, Lcom/mysql/jdbc/FailoverConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 303
    if-lez v5, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    invoke-direct {p0, v2, v10}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v10

    .line 305
    .local v10, "newNextHostIndex":I
    if-ne v10, v3, :cond_8

    invoke-direct {p0, v2, v8}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v11

    .end local v10    # "newNextHostIndex":I
    .local v12, "newNextHostIndex":I
    if-ne v10, v11, :cond_7

    .line 306
    add-int/lit8 v5, v5, 0x1

    .line 309
    const-wide/16 v10, 0xfa

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    goto :goto_6

    .line 310
    :catch_1
    move-exception v10

    .line 314
    :goto_6
    move v10, v12

    goto :goto_7

    .line 305
    :cond_7
    move v10, v12

    .line 314
    .end local v12    # "newNextHostIndex":I
    .restart local v10    # "newNextHostIndex":I
    :cond_8
    :goto_7
    move v2, v10

    .line 316
    .end local v10    # "newNextHostIndex":I
    nop

    .line 320
    .end local v9    # "e":Ljava/sql/SQLException;
    :goto_8
    :try_start_4
    iget v9, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v5, v9, :cond_9

    if-eqz v6, :cond_2

    .line 322
    :cond_9
    if-eqz v6, :cond_a

    .line 325
    monitor-exit p0

    return-void

    .line 323
    :cond_a
    :try_start_5
    throw v4

    .line 317
    .restart local v9    # "e":Ljava/sql/SQLException;
    :cond_b
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 279
    .end local v0    # "prevHostIndex":I
    .end local v2    # "nextHostIndex":I
    .end local v3    # "firstHostIndexTried":I
    .end local v4    # "lastExceptionCaught":Ljava/sql/SQLException;
    .end local v5    # "attempts":I
    .end local v6    # "gotConnection":Z
    .end local v7    # "firstConnOrPassedByPrimaryHost":Z
    .end local v9    # "e":Ljava/sql/SQLException;
    .end local p1    # "failedHostIdx":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private nextHost(IZ)I
    .locals 2
    .param p1, "currHostIdx"    # I
    .param p2, "vouchForPrimaryHost"    # Z

    .line 360
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 361
    .local v0, "nextHostIdx":I
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v0

    .line 365
    :cond_0
    return v0
.end method

.method private declared-synchronized queriesBeforeRetryPrimaryHostIsMet()Z
    .locals 5

    monitor-enter p0

    .line 425
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetAutoFallBackCounters()V
    .locals 2

    monitor-enter p0

    .line 432
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 431
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized secondsBeforeRetryPrimaryHostIsMet()Z
    .locals 5

    monitor-enter p0

    .line 418
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->secondsSinceMillis(J)J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .param p1, "hostIndex"    # I
    .param p2, "connection"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->invalidateCurrentConnection()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "readOnly":Z
    :goto_0
    goto :goto_1

    .line 251
    .end local v0    # "readOnly":Z
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x1

    .restart local v0    # "readOnly":Z
    goto :goto_1

    .line 253
    .end local v0    # "readOnly":Z
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0    # "readOnly":Z
    goto :goto_1

    .line 255
    .end local v0    # "readOnly":Z
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    .restart local v0    # "readOnly":Z
    goto :goto_1

    .line 258
    .end local v0    # "readOnly":Z
    :cond_4
    const/4 v0, 0x0

    .line 260
    .restart local v0    # "readOnly":Z
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v1, p2, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 261
    iput-object p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 262
    iput p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 245
    .end local v0    # "readOnly":Z
    .end local p1    # "hostIndex":I
    .end local p2    # "connection":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized connectedToPrimaryHost()Z
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 404
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized connectedToSecondaryHost()Z
    .locals 1

    monitor-enter p0

    .line 411
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 1
    .param p1, "hostIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 215
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    .end local p1    # "hostIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 456
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 448
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 440
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fallBackToPrimaryIfAvailable()V
    .locals 3

    monitor-enter p0

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "connection":Lcom/mysql/jdbc/MySQLConnection;
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v1

    move-object v0, v1

    .line 334
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v1, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    goto :goto_1

    .line 330
    .end local v0    # "connection":Lcom/mysql/jdbc/MySQLConnection;
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 335
    .restart local v0    # "connection":Lcom/mysql/jdbc/MySQLConnection;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e1":Ljava/sql/SQLException;
    if-eqz v0, :cond_0

    .line 338
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    goto :goto_0

    .line 339
    :catch_1
    move-exception v2

    .line 343
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .end local v1    # "e1":Ljava/sql/SQLException;
    :goto_1
    monitor-exit p0

    return-void

    .line 330
    .end local v0    # "connection":Lcom/mysql/jdbc/MySQLConnection;
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    .locals 1
    .param p1, "toProxy"    # Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/FailoverConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized incrementQueriesIssuedSinceFailover()V
    .locals 4

    monitor-enter p0

    .line 372
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 466
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "setReadOnly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 469
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    .line 470
    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 471
    monitor-exit p0

    return-object v2

    .line 475
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 476
    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->autoReconnect:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z

    if-nez v1, :cond_1

    .line 477
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 478
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 479
    iput-boolean v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    .line 480
    iput-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    goto :goto_0

    .line 482
    :cond_1
    const-string v1, "No operations allowed after connection closed."

    .line 483
    .local v1, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 486
    :cond_2
    const-string v3, "08003"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v1    # "reason":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 493
    .local v1, "result":Ljava/lang/Object;
    :try_start_2
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 494
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 497
    goto :goto_1

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 499
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    const-string v2, "setAutoCommit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 503
    :cond_4
    iget-boolean v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    if-nez v2, :cond_5

    const-string v2, "commit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "rollback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 505
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->fallBackToPrimaryIfAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    :cond_6
    monitor-exit p0

    return-object v1

    .line 465
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/Object;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 387
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isMasterConnection()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToPrimaryHost()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isPrimaryHostIndex(I)Z
    .locals 1
    .param p1, "hostIndex"    # I

    monitor-enter p0

    .line 397
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 397
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    .end local p1    # "hostIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pickNewConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 191
    monitor-exit p0

    return-void

    .line 194
    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 196
    :cond_2
    :goto_0
    :try_start_2
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :goto_1
    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V

    .line 199
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/sql/SQLException;
    goto :goto_1

    .line 204
    :goto_2
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized readyToFallBackToPrimaryHost()Z
    .locals 1

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHostIsMet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHostIsMet()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lcom/mysql/jdbc/FailoverConnectionProxy;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 155
    instance-of v0, p1, Ljava/sql/SQLException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "sqlState":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 161
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    return v2

    .line 168
    :cond_1
    instance-of v3, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz v3, :cond_2

    .line 169
    return v2

    .line 172
    :cond_2
    return v1
.end method
