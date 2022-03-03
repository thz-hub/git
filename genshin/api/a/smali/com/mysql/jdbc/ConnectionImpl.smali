.class public Lcom/mysql/jdbc/ConnectionImpl;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/MySQLConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;,
        Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;,
        Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;
    }
.end annotation


# static fields
.field private static final ABORT_PERM:Ljava/sql/SQLPermission;

.field private static final CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

.field protected static final DEFAULT_LOGGER_CLASS:Ljava/lang/String; = "com.mysql.jdbc.log.StandardLogger"

.field private static final DEFAULT_RESULT_SET_CONCURRENCY:I = 0x3ef

.field private static final DEFAULT_RESULT_SET_TYPE:I = 0x3eb

.field private static final HISTOGRAM_BUCKETS:I = 0x14

.field private static final JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final JDBC_LOCAL_CHARACTER_SET_RESULTS:Ljava/lang/String; = "jdbc.local.character_set_results"

.field private static final LOGGER_INSTANCE_NAME:Ljava/lang/String; = "MySQL"

.field private static final NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

.field private static final SERVER_VERSION_STRING_VAR_NAME:Ljava/lang/String; = "server_version_string"

.field private static final SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

.field public static charsetMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static final customCharsetToMblenMapByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final customIndexToCharsetMapByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mapTransIsolationNameToValue:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random;

.field protected static roundRobinStatsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x27eed4e755fd1762L


# instance fields
.field private autoCommit:Z

.field private autoIncrementIncrement:I

.field private cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient cancelTimer:Ljava/util/Timer;

.field private characterSetMetadata:Ljava/lang/String;

.field private characterSetResultsOnServer:Ljava/lang/String;

.field private final charsetConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectionCreationTimeMillis:J

.field private connectionId:J

.field private connectionLifecycleInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private database:Ljava/lang/String;

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private defaultTimeZone:Ljava/util/TimeZone;

.field private errorMessageEncoding:Ljava/lang/String;

.field private eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private forceClosedReason:Ljava/lang/Throwable;

.field private hasIsolationLevels:Z

.field private hasQuotedIdentifiers:Z

.field private hasTriedMasterFlag:Z

.field private host:Ljava/lang/String;

.field private hostPortPair:Ljava/lang/String;

.field public indexToCustomMysqlCharset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient io:Lcom/mysql/jdbc/MysqlIO;

.field private isClientTzUTC:Z

.field private isClosed:Z

.field private isInGlobalTx:Z

.field private isRunningOnJDK13:Z

.field private isServerTzUTC:Z

.field private isolationLevel:I

.field private lastQueryFinishedTime:J

.field private transient log:Lcom/mysql/jdbc/log/Log;

.field private longestQueryTimeMs:J

.field private lowerCaseTableNames:Z

.field private maximumNumberTablesAccessed:J

.field private metricsLastReportedMs:J

.field private minimumNumberTablesAccessed:J

.field private myURL:Ljava/lang/String;

.field private mysqlCharsetToCustomMblen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private needsPing:Z

.field private netBufferLength:I

.field private noBackslashEscapes:Z

.field private numTablesMetricsHistBreakpoints:[J

.field private numTablesMetricsHistCounts:[I

.field private numberOfPreparedExecutes:J

.field private numberOfPrepares:J

.field private numberOfQueriesIssued:J

.field private numberOfResultSetsCreated:J

.field private oldHistBreakpoints:[J

.field private oldHistCounts:[I

.field private final openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mysql/jdbc/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private origDatabaseToConnectTo:Ljava/lang/String;

.field private origHostToConnectTo:Ljava/lang/String;

.field private origPortToConnectTo:I

.field private parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache<",
            "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parserKnowsUnicode:Z

.field private password:Ljava/lang/String;

.field private perfMetricsHistBreakpoints:[J

.field private perfMetricsHistCounts:[I

.field private port:I

.field protected props:Ljava/util/Properties;

.field private proxy:Lcom/mysql/jdbc/MySQLConnection;

.field private queryTimeCount:J

.field private queryTimeMean:D

.field private queryTimeSum:D

.field private queryTimeSumSquares:D

.field private readInfoMsg:Z

.field private readOnly:Z

.field private realProxy:Ljava/lang/reflect/InvocationHandler;

.field private requiresEscapingEncoder:Z

.field protected resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/CachedResultSetMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache<",
            "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
            "Lcom/mysql/jdbc/ServerPreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private serverTimezoneTZ:Ljava/util/TimeZone;

.field private serverTruncatesFracSecs:Z

.field private serverVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCalendar:Ljava/util/Calendar;

.field private sessionMaxRows:I

.field private shortestQueryTimeMs:J

.field private statementComment:Ljava/lang/String;

.field private statementInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private storesLowerCaseTableName:Z

.field private totalQueryTimeMs:D

.field private transactionsSupported:Z

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnsiQuotes:Z

.field private usePlatformCharsetConverters:Z

.field private useServerPreparedStmts:Z

.field private user:Ljava/lang/String;

.field private utcCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setNetworkTimeout"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    .line 85
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "abort"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 265
    new-instance v1, Lcom/mysql/jdbc/log/NullLogger;

    const-string v2, "MySQL"

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/log/NullLogger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    .line 297
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 298
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "READ-UNCOMMITED"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v5, "READ-UNCOMMITTED"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "READ-COMMITTED"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "REPEATABLE-READ"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "SERIALIZABLE"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4Connection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/util/Properties;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 310
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 316
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 389
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .line 657
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 98
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 426
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 439
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    .line 442
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 448
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 462
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 465
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 468
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 472
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 475
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 477
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 480
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 483
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 486
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 489
    const/4 v1, 0x2

    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 491
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 494
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 497
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 503
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 506
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 511
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 514
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 519
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 522
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 525
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 527
    const/16 v1, 0x4000

    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 529
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 531
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTruncatesFracSecs:Z

    .line 533
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 535
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 537
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 539
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 545
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 547
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 553
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 557
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 560
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 567
    const/16 v1, 0xcea

    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 570
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 573
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 576
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 582
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 585
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 587
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 589
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 592
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 601
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 604
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 610
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 626
    const-string v1, "Cp1252"

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 633
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 639
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3816
    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 658
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "hostToConnectTo"    # Ljava/lang/String;
    .param p2, "portToConnectTo"    # I
    .param p3, "info"    # Ljava/util/Properties;
    .param p4, "databaseToConnectTo"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 678
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 98
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 426
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 439
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    .line 442
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 448
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 462
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 465
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 468
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 472
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 475
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 477
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 480
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 483
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 486
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 489
    const/4 v5, 0x2

    iput v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 491
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 494
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 497
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 503
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 506
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 511
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 514
    const/4 v5, -0x1

    iput v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 519
    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 522
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 525
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 527
    const/16 v8, 0x4000

    iput v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 529
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 531
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTruncatesFracSecs:Z

    .line 533
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 535
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 537
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 539
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 545
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 547
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 553
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 557
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 560
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 567
    const/16 v2, 0xcea

    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 570
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 573
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 576
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 582
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 585
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 587
    iput-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 589
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 592
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 601
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 604
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 610
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 626
    const-string v2, "Cp1252"

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 633
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 639
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3816
    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 682
    if-nez p4, :cond_0

    .line 683
    const-string p4, ""

    .line 689
    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 690
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    .line 691
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 694
    :try_start_0
    const-class v0, Ljava/sql/Blob;

    const-string v2, "truncate"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 696
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 701
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    .line 702
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    .line 703
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 712
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "MySQL"

    invoke-static {v0, v3, v2}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 714
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ":"

    if-eqz v0, :cond_2

    .line 715
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 717
    .local v0, "hostSpecificProps":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 719
    .local v3, "propertyNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 720
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 721
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "propertyValue":Ljava/lang/String;
    invoke-virtual {p3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 724
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "propertyValue":Ljava/lang/String;
    goto :goto_1

    .line 725
    .end local v0    # "hostSpecificProps":Ljava/util/Properties;
    .end local v3    # "propertyNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    goto :goto_2

    .line 727
    :cond_2
    if-nez p1, :cond_3

    .line 728
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto :goto_2

    .line 731
    :cond_3
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 733
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto :goto_2

    .line 736
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    .line 741
    :goto_2
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 743
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 744
    iput-object p5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 745
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 746
    const-string v0, "password"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    const-string v3, ""

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 749
    :cond_5
    iput-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 752
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 753
    iput-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 756
    :cond_7
    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 758
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/ConnectionImpl;->initializeDriverProperties(Ljava/util/Properties;)V

    .line 761
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result v0

    invoke-static {v0}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    .line 763
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 766
    :try_start_1
    invoke-direct {p0, v4, v4}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 767
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializeSafeStatementInterceptors()V

    .line 768
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V

    .line 769
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->unSafeStatementInterceptors()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 801
    nop

    .line 803
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->trackConnection(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/NetworkResources;)V

    .line 804
    return-void

    .line 775
    :catch_1
    move-exception v0

    .line 776
    .local v0, "ex":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    .local v1, "mesg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v3

    if-nez v3, :cond_9

    .line 781
    const-string v3, "Cannot connect to MySQL server on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    const-string v2, ".\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v2, "Make sure that there is a MySQL server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v2, "running on the machine/port you are trying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v2, "to connect to and that the machine this software is running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v2, "is able to connect to this host/port (i.e. not firewalled). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v2, "Also make sure that the server has not been started with the --skip-networking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const-string v2, "flag.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 793
    :cond_9
    const-string v2, "Unable to connect to database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "08S01"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 798
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 800
    throw v2

    .line 770
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "mesg":Ljava/lang/StringBuilder;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :catch_2
    move-exception v0

    .line 771
    .local v0, "ex":Ljava/sql/SQLException;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 774
    throw v0
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/ConnectionImpl;)Lcom/mysql/jdbc/CacheAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mysql/jdbc/ConnectionImpl;

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    return-object v0
.end method

.method private addToHistogram([I[JJIJJ)V
    .locals 6
    .param p1, "histogramCounts"    # [I
    .param p2, "histogramBreakpoints"    # [J
    .param p3, "value"    # J
    .param p5, "numberOfTimes"    # I
    .param p6, "currentLowerBound"    # J
    .param p8, "currentUpperBound"    # J

    .line 854
    if-nez p1, :cond_0

    .line 855
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p6

    move-wide v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    goto :goto_1

    .line 857
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 858
    aget-wide v1, p2, v0

    cmp-long v3, v1, p3

    if-ltz v3, :cond_1

    .line 859
    aget v1, p1, v0

    add-int/2addr v1, p5

    aput v1, p1, v0

    .line 861
    goto :goto_1

    .line 857
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private addToPerformanceHistogram(JI)V
    .locals 10
    .param p1, "value"    # J
    .param p3, "numberOfTimes"    # I

    .line 868
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 870
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :cond_0
    move-wide v6, v3

    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 872
    return-void
.end method

.method private addToTablesAccessedHistogram(JI)V
    .locals 10
    .param p1, "value"    # J
    .param p3, "numberOfTimes"    # I

    .line 875
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 877
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :cond_0
    move-wide v6, v3

    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 879
    return-void
.end method

.method protected static appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 16
    .param p0, "sqlEx"    # Ljava/sql/SQLException;
    .param p1, "messageToAppend"    # Ljava/lang/String;
    .param p2, "interceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 321
    invoke-virtual/range {p0 .. p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "origMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "sqlState":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    .line 325
    .local v3, "vendorErrorCode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v0

    .line 326
    .local v4, "messageBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p2

    invoke-static {v0, v2, v3, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v7

    .line 337
    .local v7, "sqlExceptionWithNewMessage":Ljava/sql/SQLException;
    const/4 v0, 0x0

    .line 338
    .local v0, "getStackTraceMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 339
    .local v8, "setStackTraceMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 341
    .local v9, "theStackTraceAsObject":Ljava/lang/Object;
    :try_start_0
    const-string v10, "java.lang.StackTraceElement"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 342
    .local v10, "stackTraceElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    new-array v12, v11, [I

    const/4 v13, 0x0

    aput v13, v12, v13

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 344
    .local v12, "stackTraceElementArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/lang/Throwable;

    const-string v15, "getStackTrace"

    new-array v11, v13, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v0, v11

    .line 346
    const-class v11, Ljava/lang/Throwable;

    const-string v14, "setStackTrace"

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v11, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v8, v11

    .line 348
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 349
    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p0

    :try_start_1
    invoke-virtual {v0, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    .line 350
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v11

    invoke-virtual {v8, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    .end local v0    # "getStackTraceMethod":Ljava/lang/reflect/Method;
    .end local v8    # "setStackTraceMethod":Ljava/lang/reflect/Method;
    .end local v9    # "theStackTraceAsObject":Ljava/lang/Object;
    .end local v10    # "stackTraceElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "stackTraceElementArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    goto :goto_0

    .line 348
    .restart local v0    # "getStackTraceMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "setStackTraceMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "theStackTraceAsObject":Ljava/lang/Object;
    .restart local v10    # "stackTraceElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "stackTraceElementArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v14, p0

    goto :goto_0

    .line 356
    .end local v0    # "getStackTraceMethod":Ljava/lang/reflect/Method;
    .end local v8    # "setStackTraceMethod":Ljava/lang/reflect/Method;
    .end local v9    # "theStackTraceAsObject":Ljava/lang/Object;
    .end local v10    # "stackTraceElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "stackTraceElementArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    .line 354
    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    .line 352
    :catch_3
    move-exception v0

    move-object/from16 v14, p0

    .line 358
    :goto_0
    nop

    .line 360
    :goto_1
    return-object v7
.end method

.method private buildCollationMapping()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 892
    .local v1, "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v2

    .line 894
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v0, v3

    .line 895
    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v1, v3

    .line 896
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 899
    :cond_0
    :goto_0
    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDetectCustomCollations()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 901
    const/4 v2, 0x0

    .line 902
    .local v2, "stmt":Ljava/sql/Statement;
    const/4 v3, 0x0

    .line 905
    .local v3, "results":Ljava/sql/ResultSet;
    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    .line 906
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v1, v5

    .line 908
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v5

    .line 911
    const/16 v5, 0x71c

    :try_start_2
    const-string v6, "SHOW COLLATION"

    invoke-interface {v2, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    move-object v3, v6

    .line 912
    :goto_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 913
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v6

    .line 914
    .local v6, "collationIndex":I
    const/4 v7, 0x2

    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 917
    .local v7, "charsetName":Ljava/lang/String;
    const/16 v8, 0x800

    if-ge v6, v8, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 919
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_2
    sget-object v8, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 924
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 926
    .end local v6    # "collationIndex":I
    .end local v7    # "charsetName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 931
    :cond_4
    goto :goto_2

    .line 927
    :catch_0
    move-exception v6

    .line 928
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    if-ne v7, v5, :cond_c

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v7

    if-nez v7, :cond_c

    .line 934
    .end local v6    # "ex":Ljava/sql/SQLException;
    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v6, :cond_8

    .line 936
    :try_start_4
    const-string v6, "SHOW CHARACTER SET"

    invoke-interface {v2, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    move-object v3, v6

    .line 937
    :goto_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 938
    const-string v6, "Charset"

    invoke-interface {v3, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, "charsetName":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 940
    const-string v7, "Maxlen"

    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 942
    .end local v6    # "charsetName":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 947
    :cond_6
    goto :goto_4

    .line 943
    :catch_1
    move-exception v6

    .line 944
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_5
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    if-ne v7, v5, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    .line 945
    :cond_7
    nop

    .end local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    throw v6

    .line 950
    .end local v6    # "ex":Ljava/sql/SQLException;
    .restart local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 951
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v5
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 952
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v6, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    monitor-exit v5

    goto :goto_5

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 957
    .restart local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :cond_9
    :goto_5
    nop

    .line 988
    if-eqz v3, :cond_a

    .line 966
    :try_start_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    .line 969
    goto :goto_6

    .line 967
    :catch_2
    move-exception v4

    .line 972
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 974
    :try_start_9
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3

    .line 977
    goto :goto_7

    .line 975
    :catch_3
    move-exception v4

    .line 977
    :cond_b
    :goto_7
    nop

    .line 979
    goto :goto_b

    .line 929
    .restart local v6    # "ex":Ljava/sql/SQLException;
    :cond_c
    nop

    .end local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 964
    .end local v6    # "ex":Ljava/sql/SQLException;
    .restart local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :catchall_2
    move-exception v4

    goto :goto_8

    .line 959
    :catch_4
    move-exception v5

    .line 960
    .local v5, "ex":Ljava/lang/RuntimeException;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S1009"

    invoke-static {v6, v7, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 961
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v5}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 962
    nop

    .end local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    throw v4

    .line 957
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :catch_5
    move-exception v4

    .line 958
    .local v4, "ex":Ljava/sql/SQLException;
    nop

    .end local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 977
    .end local v4    # "ex":Ljava/sql/SQLException;
    .restart local v0    # "customCharset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "customMblen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :goto_8
    if-eqz v3, :cond_d

    .line 966
    :try_start_c
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_6

    .line 969
    goto :goto_9

    .line 967
    :catch_6
    move-exception v5

    .line 972
    :cond_d
    :goto_9
    if-eqz v2, :cond_e

    .line 974
    :try_start_d
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_7

    .line 977
    goto :goto_a

    .line 975
    :catch_7
    move-exception v5

    .line 977
    :cond_e
    :goto_a
    nop

    .line 964
    throw v4

    .line 982
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "results":Ljava/sql/ResultSet;
    :cond_f
    :goto_b
    if-eqz v0, :cond_10

    .line 983
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 985
    :cond_10
    if-eqz v1, :cond_11

    .line 986
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 988
    :cond_11
    return-void
.end method

.method private canHandleAsServerPreparedStatement(Ljava/lang/String;)Z
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 991
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 995
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-nez v0, :cond_1

    .line 996
    const/4 v0, 0x0

    return v0

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1000
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1003
    .local v1, "flag":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 1004
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1007
    :cond_2
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result v2

    .line 1009
    .local v2, "canHandle":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1010
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v2, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, p1, v4}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_4
    monitor-exit v0

    return v2

    .line 1014
    .end local v1    # "flag":Ljava/lang/Boolean;
    .end local v2    # "canHandle":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1017
    :cond_5
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 992
    :cond_6
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z
    .locals 16
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const-string v1, "CALL"

    invoke-static {v11, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1024
    return v2

    .line 1027
    :cond_0
    const/4 v12, 0x1

    .line 1029
    .local v12, "canHandleAsStatement":Z
    iget-boolean v1, v0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    xor-int/lit8 v1, v1, 0x1

    move v13, v1

    .line 1030
    .local v13, "allowBackslashEscapes":Z
    iget-boolean v1, v0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    if-eqz v1, :cond_1

    const-string v1, "\""

    goto :goto_0

    :cond_1
    const-string v1, "\'"

    :goto_0
    move-object v4, v1

    .line 1032
    .local v4, "quoteChar":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v1

    const/4 v14, -0x1

    if-eqz v1, :cond_3

    .line 1033
    const/4 v1, 0x0

    if-eqz v13, :cond_2

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v6, v2

    const-string v3, ";"

    move-object/from16 v2, p1

    move-object v5, v4

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    if-eq v1, v14, :cond_11

    .line 1035
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1037
    :cond_3
    const/4 v1, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SELECT"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DELETE"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "INSERT"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UPDATE"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "REPLACE"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1047
    :cond_4
    const/4 v1, 0x0

    .line 1048
    .local v1, "currentPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1049
    .local v2, "statementLength":I
    add-int/lit8 v3, v2, -0x7

    .line 1050
    .local v3, "lastPosToLook":I
    const/4 v5, 0x0

    move v15, v5

    .line 1052
    .local v15, "foundLimitWithPlaceholder":Z
    :goto_2
    if-ge v1, v3, :cond_a

    .line 1053
    if-eqz v13, :cond_5

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_3
    move-object v10, v5

    const-string v7, "LIMIT "

    move v5, v1

    move-object/from16 v6, p1

    move-object v8, v4

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 1056
    .local v5, "limitStart":I
    if-ne v5, v14, :cond_6

    .line 1057
    goto :goto_6

    .line 1060
    :cond_6
    add-int/lit8 v1, v5, 0x7

    .line 1062
    :goto_4
    if-ge v1, v2, :cond_9

    .line 1063
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1069
    .local v6, "c":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    const/16 v8, 0x3f

    if-nez v7, :cond_7

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_7

    .line 1070
    goto :goto_5

    .line 1073
    :cond_7
    if-ne v6, v8, :cond_8

    .line 1074
    const/4 v7, 0x1

    .line 1075
    .end local v15    # "foundLimitWithPlaceholder":Z
    .local v7, "foundLimitWithPlaceholder":Z
    move v15, v7

    goto :goto_5

    .line 1078
    .end local v7    # "foundLimitWithPlaceholder":Z
    .restart local v15    # "foundLimitWithPlaceholder":Z
    :cond_8
    nop

    .end local v6    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 1079
    goto :goto_4

    .line 1080
    .end local v5    # "limitStart":I
    :cond_9
    :goto_5
    goto :goto_2

    .line 1082
    :cond_a
    :goto_6
    xor-int/lit8 v5, v15, 0x1

    move v12, v5

    .line 1083
    .end local v1    # "currentPos":I
    .end local v2    # "statementLength":I
    .end local v3    # "lastPosToLook":I
    .end local v15    # "foundLimitWithPlaceholder":Z
    goto :goto_7

    :cond_b
    const-string v2, "XA "

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1084
    const/4 v12, 0x0

    goto :goto_7

    .line 1085
    :cond_c
    const-string v2, "CREATE TABLE"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1086
    const/4 v12, 0x0

    goto :goto_7

    .line 1087
    :cond_d
    const-string v2, "DO"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1088
    const/4 v12, 0x0

    goto :goto_7

    .line 1089
    :cond_e
    const-string v2, "SET"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1090
    const/4 v12, 0x0

    goto :goto_7

    .line 1091
    :cond_f
    const-string v2, "SHOW WARNINGS"

    invoke-static {v11, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1092
    const/4 v12, 0x0

    goto :goto_7

    .line 1093
    :cond_10
    const-string v1, "/* ping */"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1094
    const/4 v12, 0x0

    .line 1097
    :cond_11
    :goto_7
    return v12
.end method

.method private characterSetNamesMatches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mysqlEncodingName"    # Ljava/lang/String;

    .line 1151
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkAndCreatePerformanceHistogram()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    const/16 v1, 0x14

    if-nez v0, :cond_0

    .line 1157
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1161
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    .line 1163
    :cond_1
    return-void
.end method

.method private checkAndCreateTablesAccessedHistogram()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    const/16 v1, 0x14

    if-nez v0, :cond_0

    .line 1167
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1171
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    .line 1173
    :cond_1
    return-void
.end method

.method private checkServerEncoding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1206
    .local v0, "serverCharset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "character_set_server"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1211
    :cond_1
    const/4 v1, 0x0

    .line 1213
    .local v1, "mappedServerEncoding":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1215
    :try_start_0
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1220
    goto :goto_0

    .line 1216
    :catch_0
    move-exception v2

    .line 1217
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 1218
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1219
    throw v3

    .line 1226
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 1227
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2

    .line 1229
    .local v2, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    if-eqz v2, :cond_3

    .line 1230
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1231
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1233
    return-void

    .line 1240
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :cond_3
    if-eqz v0, :cond_6

    .line 1241
    if-nez v1, :cond_4

    .line 1243
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1244
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1245
    .local v4, "ach":[C
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-char v5, v4, v2

    .line 1246
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1250
    .end local v4    # "ach":[C
    :cond_4
    if-eqz v1, :cond_5

    .line 1260
    :try_start_1
    const-string v2, "abc"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 1261
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1267
    goto :goto_1

    .line 1263
    :catch_1
    move-exception v2

    .line 1264
    .local v2, "UE":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The driver can not map the character encoding \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' that your server is using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "to a character encoding your JVM understands. You can specify this mapping manually by adding \"useUnicode=true\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "as well as \"characterEncoding=[an_encoding_your_jvm_understands]\" to your JDBC URL."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "0S100"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 1251
    .end local v2    # "UE":Ljava/io/UnsupportedEncodingException;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown character encoding on server \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', use \'characterEncoding=\' property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to provide correct mapping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "01S00"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1269
    :cond_6
    :goto_1
    return-void
.end method

.method private checkTransactionIsolationLevel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "transaction_isolation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1279
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "tx_isolation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1283
    :cond_0
    if-eqz v0, :cond_1

    .line 1284
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1286
    .local v1, "intTI":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 1290
    .end local v1    # "intTI":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private cleanup(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "whyCleanedUp"    # Ljava/lang/Throwable;

    .line 1324
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_1

    .line 1325
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    goto :goto_0

    .line 1328
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :cond_1
    :goto_0
    goto :goto_1

    .line 1331
    :catch_0
    move-exception v0

    .line 1335
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 1336
    return-void
.end method

.method private closeAllOpenStatements()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1472
    const/4 v0, 0x0

    .line 1474
    .local v0, "postponedException":Ljava/sql/SQLException;
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Statement;

    .line 1476
    .local v2, "stmt":Lcom/mysql/jdbc/Statement;
    :try_start_0
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/StatementImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    goto :goto_1

    .line 1477
    :catch_0
    move-exception v3

    .line 1478
    .local v3, "sqlEx":Ljava/sql/SQLException;
    move-object v0, v3

    .line 1479
    .end local v2    # "stmt":Lcom/mysql/jdbc/Statement;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :goto_1
    goto :goto_0

    .line 1482
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    if-nez v0, :cond_1

    .line 1485
    return-void

    .line 1483
    :cond_1
    throw v0
.end method

.method private closeStatement(Ljava/sql/Statement;)V
    .locals 1
    .param p1, "stmt"    # Ljava/sql/Statement;

    .line 1488
    if-eqz p1, :cond_0

    .line 1490
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    goto :goto_0

    .line 1491
    :catch_0
    move-exception v0

    .line 1495
    :goto_0
    const/4 p1, 0x0

    .line 1497
    :cond_0
    return-void
.end method

.method private configureCharsetProperties()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1568
    const-string v0, "abc"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1571
    move-object v1, v0

    .line 1572
    .local v1, "testString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    nop

    .end local v1    # "testString":Ljava/lang/String;
    goto :goto_0

    .line 1573
    :catch_0
    move-exception v1

    .line 1575
    .local v1, "UE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1578
    .local v2, "oldEncoding":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1583
    nop

    .line 1585
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "01S00"

    const-string v5, "\'."

    if-eqz v3, :cond_0

    .line 1591
    nop

    .line 1592
    .local v0, "testString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1596
    nop

    .end local v0    # "testString":Ljava/lang/String;
    goto :goto_0

    .line 1593
    :catch_1
    move-exception v0

    .line 1594
    .local v0, "encodingEx":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported character encoding \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 1586
    .end local v0    # "encodingEx":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java does not support the MySQL character encoding \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1579
    :catch_2
    move-exception v0

    .line 1580
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 1581
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v3, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1582
    throw v3

    .line 1599
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "UE":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "oldEncoding":Ljava/lang/String;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :cond_1
    :goto_0
    return-void
.end method

.method private configureClientCharacterSet(Z)Z
    .locals 43
    .param p1, "dontCheckServerMatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1615
    move-object/from16 v12, p0

    const-string v1, "ISO8859_1"

    const-string v13, "\u20a9"

    const-string v2, "Unknown initial character set index \'"

    const-string v0, "com.mysql.jdbc.faultInjection.serverCharsetIndex"

    const-string v14, "S1009"

    const-string v15, "\u00a5"

    const-string v3, ""

    const-string v11, "UTF-8"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1616
    .local v4, "realJavaEncoding":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1619
    .local v5, "characterSetAlreadyConfigured":Z
    const/4 v6, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v12, v6, v9, v10}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const-string v8, "S1000"

    if-eqz v7, :cond_33

    .line 1620
    const/16 v16, 0x1

    .line 1622
    .end local v5    # "characterSetAlreadyConfigured":Z
    .local v16, "characterSetAlreadyConfigured":Z
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1624
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureCharsetProperties()V

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1627
    move-object v5, v3

    .line 1628
    .local v5, "connectionCollationSuffix":Ljava/lang/String;
    nop

    .line 1630
    .local v3, "connectionCollationCharset":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1631
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    sget-object v6, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_1

    .line 1632
    sget-object v6, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " COLLATE "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1634
    sget-object v6, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    move-object v3, v6

    .line 1635
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v4, v6

    .line 1631
    :cond_0
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v19, v3

    move-object v9, v4

    move-object v7, v5

    goto :goto_1

    .line 1644
    .end local v7    # "i":I
    :cond_2
    move-object/from16 v19, v3

    move-object v9, v4

    move-object v7, v5

    .end local v3    # "connectionCollationCharset":Ljava/lang/String;
    .end local v4    # "realJavaEncoding":Ljava/lang/String;
    .end local v5    # "connectionCollationSuffix":Ljava/lang/String;
    .local v7, "connectionCollationSuffix":Ljava/lang/String;
    .local v9, "realJavaEncoding":Ljava/lang/String;
    .local v19, "connectionCollationCharset":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    :try_start_2
    iget-object v3, v12, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1645
    iget-object v3, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v4, v12, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1648
    :cond_3
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v0, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "serverEncodingToSet":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 1651
    :cond_4
    if-eqz v9, :cond_9

    .line 1653
    invoke-virtual {v12, v9}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1663
    :cond_5
    const/4 v3, 0x4

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v12, v3, v5, v10}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1664
    const-string v3, "Cp1252"

    move-object v0, v3

    .line 1666
    :cond_6
    const-string v3, "UnicodeBig"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "UTF-16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "UTF-16LE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "UTF-32"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1668
    :cond_7
    move-object v0, v11

    .line 1671
    :cond_8
    invoke-virtual {v12, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .end local v0    # "serverEncodingToSet":Ljava/lang/String;
    goto :goto_3

    .line 1655
    .restart local v0    # "serverEncodingToSet":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v4, v4, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v3
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1673
    .end local v0    # "serverEncodingToSet":Ljava/lang/String;
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1887
    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v4, v9

    move/from16 v5, v16

    goto/16 :goto_24

    .line 1685
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1686
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1687
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1688
    nop

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local p1    # "dontCheckServerMatch":Z
    throw v1

    .line 1683
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local p1    # "dontCheckServerMatch":Z
    :catch_2
    move-exception v0

    .line 1684
    .local v0, "ex":Ljava/sql/SQLException;
    nop

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local p1    # "dontCheckServerMatch":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1673
    .end local v0    # "ex":Ljava/sql/SQLException;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local p1    # "dontCheckServerMatch":Z
    :catch_3
    move-exception v0

    const/4 v5, 0x1

    .line 1674
    .local v0, "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    if-eqz v9, :cond_32

    .line 1676
    :try_start_5
    invoke-virtual {v12, v9}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1689
    .end local v0    # "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    nop

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-nez v0, :cond_a

    .line 1693
    :try_start_6
    invoke-virtual {v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1699
    :cond_a
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    const-string v4, "utf8"

    const-string v1, "character_set_connection"

    const-string v10, "character_set_client"

    move-object/from16 v18, v10

    const-string v10, "latin1"

    if-eqz v0, :cond_22

    .line 1700
    const-string v0, "SET NAMES "

    if-eqz v9, :cond_18

    .line 1705
    :try_start_8
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v20, :cond_10

    :try_start_9
    const-string v2, "UTF8"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v32, v4

    move-object/from16 v21, v7

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move-object/from16 v17, v13

    const/16 v20, 0x1

    move-object v10, v1

    move-object v13, v11

    move-object/from16 v11, v18

    goto/16 :goto_7

    .line 1730
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v2, v19

    goto :goto_4

    :cond_c
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, "mysqlCharsetName":Ljava/lang/String;
    :goto_4
    if-eqz v2, :cond_f

    .line 1744
    if-nez p1, :cond_e

    invoke-direct {v12, v2}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v21, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v32, v4

    move-object/from16 v21, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v17, v13

    const/16 v20, 0x1

    move-object v10, v1

    move-object v1, v2

    move-object v13, v11

    move-object/from16 v11, v18

    goto/16 :goto_6

    .line 1745
    :cond_e
    :goto_5
    const/16 v21, 0x0

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x3eb

    const/16 v25, 0x3ef

    const/16 v26, 0x0

    move-object/from16 v27, v8

    iget-object v8, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    move-object/from16 v31, v2

    .end local v2    # "mysqlCharsetName":Ljava/lang/String;
    .local v31, "mysqlCharsetName":Ljava/lang/String;
    move-object/from16 v2, v21

    move-object/from16 v32, v4

    move v4, v0

    const/16 v20, 0x1

    move-object/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v21, v7

    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .local v21, "connectionCollationSuffix":Ljava/lang/String;
    move/from16 v7, v25

    move-object v0, v8

    move-object/from16 v33, v27

    move/from16 v8, v26

    move-object/from16 v34, v9

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .local v34, "realJavaEncoding":Ljava/lang/String;
    move-object v9, v0

    move-object/from16 v35, v10

    move-object/from16 v36, v18

    move-object/from16 v10, v28

    move-object/from16 v17, v13

    move-object v13, v11

    move/from16 v11, v29

    :try_start_b
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1747
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v1, v31

    move-object/from16 v11, v36

    .end local v31    # "mysqlCharsetName":Ljava/lang/String;
    .local v1, "mysqlCharsetName":Ljava/lang/String;
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v10, v30

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 1887
    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v21    # "connectionCollationSuffix":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v5, v16

    move-object/from16 v4, v34

    goto/16 :goto_24

    .end local v34    # "realJavaEncoding":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v5, v16

    move-object/from16 v4, v34

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v34    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .line 1742
    .end local v34    # "realJavaEncoding":Ljava/lang/String;
    .restart local v2    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    :cond_f
    move-object/from16 v32, v4

    move-object/from16 v21, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v17, v13

    const/16 v20, 0x1

    move-object v10, v1

    move-object v1, v2

    move-object v13, v11

    move-object/from16 v11, v18

    .line 1754
    .end local v2    # "mysqlCharsetName":Ljava/lang/String;
    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v21    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v34    # "realJavaEncoding":Ljava/lang/String;
    :goto_6
    move-object/from16 v9, v34

    .end local v34    # "realJavaEncoding":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v12, v9}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1755
    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    move-object/from16 v25, v9

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v21

    move-object/from16 v28, v32

    move-object/from16 v13, v35

    move-object v14, v10

    move-object/from16 v21, v15

    move-object v15, v11

    const/16 v11, 0x71c

    goto/16 :goto_11

    .line 1705
    .end local v21    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    :cond_10
    move-object/from16 v32, v4

    move-object/from16 v21, v7

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move-object/from16 v17, v13

    const/16 v20, 0x1

    move-object v10, v1

    move-object v13, v11

    move-object/from16 v11, v18

    .line 1708
    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v21    # "connectionCollationSuffix":Ljava/lang/String;
    :goto_7
    const/4 v1, 0x2

    const/4 v8, 0x5

    :try_start_d
    invoke-virtual {v12, v8, v8, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    move/from16 v18, v1

    .line 1709
    .local v18, "utf8mb4Supported":Z
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-lez v1, :cond_11

    move-object/from16 v4, v19

    goto :goto_8

    :cond_11
    if-eqz v18, :cond_12

    :try_start_e
    const-string v4, "utf8mb4"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_8

    :cond_12
    move-object/from16 v4, v32

    :goto_8
    move-object v7, v4

    .line 1712
    .local v7, "utf8CharsetName":Ljava/lang/String;
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-nez v1, :cond_17

    .line 1713
    if-nez p1, :cond_15

    move-object/from16 v6, v32

    :try_start_10
    invoke-direct {v12, v6}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v18, :cond_13

    const-string v1, "utf8mb4"

    invoke-direct {v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "collation_server"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v28, v6

    move-object v0, v7

    move-object/from16 v37, v9

    move-object/from16 v23, v14

    move-object/from16 v27, v21

    move-object v14, v10

    move-object/from16 v21, v15

    move-object v15, v11

    move-object/from16 v11, v35

    goto/16 :goto_a

    :cond_15
    move-object/from16 v6, v32

    .line 1716
    :cond_16
    :goto_9
    const/4 v2, 0x0

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    .end local v21    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v5    # "connectionCollationSuffix":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/16 v21, 0x3eb

    const/16 v22, 0x3ef

    const/16 v23, 0x0

    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v1

    move-object/from16 v1, p0

    move-object/from16 v27, v5

    .end local v5    # "connectionCollationSuffix":Ljava/lang/String;
    .local v27, "connectionCollationSuffix":Ljava/lang/String;
    move-object v5, v0

    move-object/from16 v28, v6

    move/from16 v6, v21

    move-object v0, v7

    .end local v7    # "utf8CharsetName":Ljava/lang/String;
    .local v0, "utf8CharsetName":Ljava/lang/String;
    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v37, v9

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .local v37, "realJavaEncoding":Ljava/lang/String;
    move-object/from16 v9, v26

    move-object/from16 v38, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v15

    move-object v15, v11

    move/from16 v11, v25

    :try_start_12
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1718
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v11, v38

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v23, v14

    move-object v14, v11

    move-object/from16 v11, v35

    goto :goto_a

    .line 1887
    .end local v0    # "utf8CharsetName":Ljava/lang/String;
    .end local v18    # "utf8mb4Supported":Z
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v5, v16

    move-object/from16 v4, v37

    goto/16 :goto_24

    .end local v37    # "realJavaEncoding":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v37, v9

    move/from16 v5, v16

    move-object/from16 v4, v37

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v37    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .line 1722
    .end local v37    # "realJavaEncoding":Ljava/lang/String;
    .restart local v7    # "utf8CharsetName":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v18    # "utf8mb4Supported":Z
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    .restart local v21    # "connectionCollationSuffix":Ljava/lang/String;
    :cond_17
    move-object v0, v7

    move-object/from16 v37, v9

    move-object/from16 v27, v21

    move-object/from16 v28, v32

    move-object/from16 v21, v15

    move-object v15, v11

    move-object v11, v10

    .end local v7    # "utf8CharsetName":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .end local v21    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v0    # "utf8CharsetName":Ljava/lang/String;
    .restart local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v37    # "realJavaEncoding":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_13
    const-string v3, "SET NAMES latin1"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v23, v14

    move-object v14, v11

    move/from16 v11, v22

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1724
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v11, v35

    invoke-interface {v1, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v1, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 1728
    :goto_a
    move-object/from16 v10, v37

    .end local v37    # "realJavaEncoding":Ljava/lang/String;
    .local v10, "realJavaEncoding":Ljava/lang/String;
    :try_start_14
    invoke-virtual {v12, v10}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1729
    .end local v0    # "utf8CharsetName":Ljava/lang/String;
    .end local v18    # "utf8mb4Supported":Z
    move-object/from16 v25, v10

    move-object/from16 v22, v13

    move-object/from16 v26, v27

    move-object v13, v11

    const/16 v11, 0x71c

    goto/16 :goto_11

    .line 1887
    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v37    # "realJavaEncoding":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v10, v37

    move-object v4, v10

    move/from16 v5, v16

    .end local v37    # "realJavaEncoding":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v10, v9

    move-object v4, v10

    move/from16 v5, v16

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .line 1756
    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .local v7, "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    :cond_18
    move-object/from16 v28, v4

    move-object/from16 v27, v7

    move-object/from16 v33, v8

    move-object/from16 v17, v13

    move-object/from16 v23, v14

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    const/16 v20, 0x1

    move-object v14, v1

    move-object v13, v11

    move-object v11, v10

    move-object v10, v9

    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v27    # "connectionCollationSuffix":Ljava/lang/String;
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1758
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    move-object/from16 v1, v19

    goto :goto_b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, v11

    goto :goto_b

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v1

    .line 1761
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    :goto_b
    const/4 v2, 0x0

    .line 1762
    .local v2, "ucs2":Z
    const-string v3, "ucs2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v3, :cond_1c

    :try_start_16
    const-string v3, "utf16"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "utf16le"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "utf32"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-eqz v3, :cond_1b

    goto :goto_c

    :cond_1b
    move-object v9, v1

    move/from16 v18, v2

    goto :goto_d

    .line 1887
    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v2    # "ucs2":Z
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v4, v10

    move/from16 v5, v16

    goto/16 :goto_24

    .line 1764
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v2    # "ucs2":Z
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    .restart local v27    # "connectionCollationSuffix":Ljava/lang/String;
    :cond_1c
    :goto_c
    move-object/from16 v1, v28

    .line 1765
    const/4 v2, 0x1

    .line 1766
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-nez v3, :cond_1d

    .line 1767
    :try_start_18
    invoke-virtual {v12, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setCharacterSetResults(Ljava/lang/String;)V

    .line 1771
    :cond_1d
    move-object v9, v1

    move/from16 v18, v2

    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v2    # "ucs2":Z
    .local v9, "mysqlCharsetName":Ljava/lang/String;
    .local v18, "ucs2":Z
    :goto_d
    if-nez p1, :cond_1f

    invoke-direct {v12, v9}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v1, :cond_1f

    if-eqz v18, :cond_1e

    goto :goto_e

    :cond_1e
    move-object v1, v9

    move-object/from16 v25, v10

    move-object/from16 v22, v13

    move-object/from16 v26, v27

    move-object v13, v11

    const/16 v11, 0x71c

    goto/16 :goto_10

    .line 1773
    :cond_1f
    :goto_e
    const/4 v2, 0x0

    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-object/from16 v8, v27

    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .local v8, "connectionCollationSuffix":Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v0, 0x0

    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v8

    .end local v8    # "connectionCollationSuffix":Ljava/lang/String;
    .local v26, "connectionCollationSuffix":Ljava/lang/String;
    move v8, v0

    move-object/from16 v39, v9

    .end local v9    # "mysqlCharsetName":Ljava/lang/String;
    .local v39, "mysqlCharsetName":Ljava/lang/String;
    move-object/from16 v9, v25

    move-object/from16 v25, v10

    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .local v25, "realJavaEncoding":Ljava/lang/String;
    move-object/from16 v10, v22

    move-object/from16 v22, v13

    move-object v13, v11

    move/from16 v11, v24

    :try_start_1b
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1775
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    move-object/from16 v1, v39

    .end local v39    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    :try_start_1c
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 1781
    const/16 v11, 0x71c

    goto :goto_10

    .line 1777
    :catch_4
    move-exception v0

    goto :goto_f

    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v39    # "mysqlCharsetName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v1, v39

    .end local v39    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    goto :goto_f

    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v8    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v26, v8

    move-object v1, v9

    move-object/from16 v25, v10

    move-object/from16 v22, v13

    move-object v13, v11

    .end local v8    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "mysqlCharsetName":Ljava/lang/String;
    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    goto :goto_f

    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v27    # "connectionCollationSuffix":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v1, v9

    move-object/from16 v25, v10

    move-object/from16 v22, v13

    move-object/from16 v26, v27

    move-object v13, v11

    .line 1778
    .end local v9    # "mysqlCharsetName":Ljava/lang/String;
    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .local v0, "ex":Ljava/sql/SQLException;
    .restart local v1    # "mysqlCharsetName":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    :goto_f
    :try_start_1d
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v11, 0x71c

    if-ne v2, v11, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1784
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .local v0, "realJavaEncoding":Ljava/lang/String;
    goto :goto_11

    .line 1779
    .local v0, "ex":Ljava/sql/SQLException;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    :cond_20
    nop

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v0

    .line 1756
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v1    # "mysqlCharsetName":Ljava/lang/String;
    .end local v18    # "ucs2":Z
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :cond_21
    move-object/from16 v25, v10

    move-object/from16 v22, v13

    move-object/from16 v26, v27

    move-object v13, v11

    const/16 v11, 0x71c

    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .end local v27    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    goto :goto_11

    .line 1887
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v10    # "realJavaEncoding":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v5, v16

    move-object/from16 v4, v25

    .end local v10    # "realJavaEncoding":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .line 1699
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .local v9, "realJavaEncoding":Ljava/lang/String;
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    :cond_22
    move-object/from16 v28, v4

    move-object/from16 v26, v7

    move-object/from16 v33, v8

    move-object/from16 v25, v9

    move-object/from16 v22, v11

    move-object/from16 v17, v13

    move-object/from16 v23, v14

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    const/16 v11, 0x71c

    const/16 v20, 0x1

    move-object v14, v1

    move-object v13, v10

    .line 1794
    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    :goto_11
    const/4 v0, 0x0

    .line 1795
    .local v0, "onServer":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1797
    .local v1, "isNullOnServer":Z
    iget-object v2, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    if-eqz v2, :cond_25

    .line 1798
    const-string v3, "character_set_results"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 1800
    if-eqz v0, :cond_24

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_12

    :cond_23
    const/4 v10, 0x0

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v10, 0x1

    :goto_13
    move v1, v10

    move-object v10, v0

    move/from16 v18, v1

    goto :goto_14

    .line 1797
    :cond_25
    move-object v10, v0

    move/from16 v18, v1

    .line 1803
    .end local v0    # "onServer":Ljava/lang/String;
    .end local v1    # "isNullOnServer":Z
    .local v10, "onServer":Ljava/lang/String;
    .local v18, "isNullOnServer":Z
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const-string v9, "jdbc.local.character_set_results"

    if-nez v0, :cond_28

    .line 1808
    if-nez v18, :cond_27

    .line 1810
    const/4 v2, 0x0

    :try_start_1e
    const-string v3, "SET character_set_results = NULL"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v40, v10

    .end local v10    # "onServer":Ljava/lang/String;
    .local v40, "onServer":Ljava/lang/String;
    move-object v10, v13

    const/16 v13, 0x71c

    move v11, v14

    :try_start_1f
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1816
    goto :goto_16

    .line 1812
    :catch_8
    move-exception v0

    goto :goto_15

    .end local v40    # "onServer":Ljava/lang/String;
    .restart local v10    # "onServer":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object v15, v9

    move-object/from16 v40, v10

    const/16 v13, 0x71c

    .line 1813
    .end local v10    # "onServer":Ljava/lang/String;
    .local v0, "ex":Ljava/sql/SQLException;
    .restart local v40    # "onServer":Ljava/lang/String;
    :goto_15
    :try_start_20
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    if-ne v1, v13, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1817
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_16
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 1814
    .restart local v0    # "ex":Ljava/sql/SQLException;
    :cond_26
    nop

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v0

    .line 1819
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v40    # "onServer":Ljava/lang/String;
    .restart local v10    # "onServer":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :cond_27
    move-object v15, v9

    move-object/from16 v40, v10

    .end local v10    # "onServer":Ljava/lang/String;
    .restart local v40    # "onServer":Ljava/lang/String;
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v11, v40

    .end local v40    # "onServer":Ljava/lang/String;
    .local v11, "onServer":Ljava/lang/String;
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 1823
    .end local v11    # "onServer":Ljava/lang/String;
    .restart local v10    # "onServer":Ljava/lang/String;
    :cond_28
    move-object v11, v10

    const/16 v10, 0x71c

    .end local v10    # "onServer":Ljava/lang/String;
    .restart local v11    # "onServer":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    if-eqz v0, :cond_2a

    .line 1825
    const/4 v2, 0x0

    :try_start_21
    const-string v3, "SET NAMES latin1"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_21
    .catch Ljava/sql/SQLException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v1, p0

    move-object/from16 v41, v9

    move-object v9, v0

    move-object/from16 v10, v24

    move-object/from16 v42, v11

    .end local v11    # "onServer":Ljava/lang/String;
    .local v42, "onServer":Ljava/lang/String;
    move/from16 v11, v27

    :try_start_22
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1827
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 1833
    const/16 v13, 0x71c

    goto :goto_18

    .line 1829
    :catch_a
    move-exception v0

    goto :goto_17

    .end local v42    # "onServer":Ljava/lang/String;
    .restart local v11    # "onServer":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v41, v9

    move-object/from16 v42, v11

    .line 1830
    .end local v11    # "onServer":Ljava/lang/String;
    .restart local v0    # "ex":Ljava/sql/SQLException;
    .restart local v42    # "onServer":Ljava/lang/String;
    :goto_17
    :try_start_23
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v13, 0x71c

    if-ne v1, v13, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_18

    .line 1831
    :cond_29
    nop

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v0

    .line 1823
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v42    # "onServer":Ljava/lang/String;
    .restart local v11    # "onServer":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :cond_2a
    move-object/from16 v41, v9

    move-object/from16 v42, v11

    const/16 v13, 0x71c

    .line 1835
    .end local v11    # "onServer":Ljava/lang/String;
    .restart local v42    # "onServer":Ljava/lang/String;
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1836
    .local v14, "charsetResults":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1838
    .local v0, "mysqlEncodingName":Ljava/lang/String;
    move-object/from16 v1, v22

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "UTF8"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_19

    .line 1840
    :cond_2b
    const-string v1, "null"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1841
    const-string v1, "NULL"

    move-object v0, v1

    move-object v15, v0

    goto :goto_1a

    .line 1843
    :cond_2c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v15, v0

    goto :goto_1a

    .line 1839
    :cond_2d
    :goto_19
    move-object/from16 v0, v28

    move-object v15, v0

    .line 1850
    .end local v0    # "mysqlEncodingName":Ljava/lang/String;
    .local v15, "mysqlEncodingName":Ljava/lang/String;
    :goto_1a
    if-eqz v15, :cond_31

    .line 1855
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_results"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET character_set_results = "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v0

    .line 1857
    .local v11, "setBuf":Ljava/lang/StringBuilder;
    const-string v0, "SET character_set_results = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 1860
    const/4 v2, 0x0

    :try_start_24
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_24
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v22, v11

    .end local v11    # "setBuf":Ljava/lang/StringBuilder;
    .local v22, "setBuf":Ljava/lang/StringBuilder;
    move v11, v0

    :try_start_25
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_25
    .catch Ljava/sql/SQLException; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 1866
    goto :goto_1c

    .line 1862
    :catch_c
    move-exception v0

    goto :goto_1b

    .end local v22    # "setBuf":Ljava/lang/StringBuilder;
    .restart local v11    # "setBuf":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v0

    move-object/from16 v22, v11

    .line 1863
    .end local v11    # "setBuf":Ljava/lang/StringBuilder;
    .local v0, "ex":Ljava/sql/SQLException;
    .restart local v22    # "setBuf":Ljava/lang/StringBuilder;
    :goto_1b
    :try_start_26
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    if-ne v1, v13, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1868
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_1c
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1872
    iput-object v14, v12, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 1875
    .end local v22    # "setBuf":Ljava/lang/StringBuilder;
    :cond_2e
    goto :goto_1d

    .line 1864
    .restart local v0    # "ex":Ljava/sql/SQLException;
    .restart local v22    # "setBuf":Ljava/lang/StringBuilder;
    :cond_2f
    nop

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v0

    .line 1876
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v22    # "setBuf":Ljava/lang/StringBuilder;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :cond_30
    move-object/from16 v1, v41

    const/4 v2, 0x0

    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    move-object/from16 v3, v42

    .end local v42    # "onServer":Ljava/lang/String;
    .local v3, "onServer":Ljava/lang/String;
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .end local v3    # "onServer":Ljava/lang/String;
    .end local v14    # "charsetResults":Ljava/lang/String;
    .end local v15    # "mysqlEncodingName":Ljava/lang/String;
    .end local v18    # "isNullOnServer":Z
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    :goto_1d
    move/from16 v5, v16

    move-object/from16 v1, v25

    move-object/from16 v3, v33

    goto/16 :goto_1e

    .line 1851
    .restart local v14    # "charsetResults":Ljava/lang/String;
    .restart local v15    # "mysqlEncodingName":Ljava/lang/String;
    .restart local v18    # "isNullOnServer":Z
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v42    # "onServer":Ljava/lang/String;
    :cond_31
    move-object/from16 v3, v42

    .end local v42    # "onServer":Ljava/lang/String;
    .restart local v3    # "onServer":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t map "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " given for characterSetResults to a supported MySQL encoding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v0

    .line 1887
    .end local v3    # "onServer":Ljava/lang/String;
    .end local v14    # "charsetResults":Ljava/lang/String;
    .end local v15    # "mysqlEncodingName":Ljava/lang/String;
    .end local v18    # "isNullOnServer":Z
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local p1    # "dontCheckServerMatch":Z
    :catchall_9
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v5, v16

    move-object/from16 v4, v25

    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    goto/16 :goto_24

    .line 1678
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .local v0, "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v19    # "connectionCollationCharset":Ljava/lang/String;
    :cond_32
    move-object/from16 v26, v7

    move-object/from16 v33, v8

    move-object/from16 v25, v9

    .end local v7    # "connectionCollationSuffix":Ljava/lang/String;
    .end local v9    # "realJavaEncoding":Ljava/lang/String;
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v26    # "connectionCollationSuffix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v2, v2, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v16    # "characterSetAlreadyConfigured":Z
    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .end local p1    # "dontCheckServerMatch":Z
    throw v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 1887
    .end local v0    # "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v19    # "connectionCollationCharset":Ljava/lang/String;
    .end local v26    # "connectionCollationSuffix":Ljava/lang/String;
    .restart local v16    # "characterSetAlreadyConfigured":Z
    .restart local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local p1    # "dontCheckServerMatch":Z
    :catchall_a
    move-exception v0

    move/from16 v5, v16

    move-object/from16 v4, v25

    goto/16 :goto_24

    .end local v25    # "realJavaEncoding":Ljava/lang/String;
    .restart local v4    # "realJavaEncoding":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move/from16 v5, v16

    goto/16 :goto_24

    .line 1881
    .end local v16    # "characterSetAlreadyConfigured":Z
    .local v5, "characterSetAlreadyConfigured":Z
    :cond_33
    move-object v3, v8

    move-object/from16 v17, v13

    move-object/from16 v21, v15

    const/4 v2, 0x0

    const/16 v20, 0x1

    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    move-object/from16 v25, v0

    move-object/from16 v1, v25

    .line 1884
    .end local v4    # "realJavaEncoding":Ljava/lang/String;
    .local v1, "realJavaEncoding":Ljava/lang/String;
    :goto_1e
    nop

    .line 1933
    invoke-virtual {v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1888
    nop

    .line 1895
    const/16 v4, 0x5c

    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 1896
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    invoke-static/range {v20 .. v20}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 1897
    .local v6, "cbuf":Ljava/nio/CharBuffer;
    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_28
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_28 .. :try_end_28} :catch_11

    .line 1899
    .local v7, "bbuf":Ljava/nio/ByteBuffer;
    move-object/from16 v8, v21

    :try_start_29
    invoke-virtual {v6, v8}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 1900
    invoke-virtual {v6, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_29
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_29 .. :try_end_29} :catch_10

    .line 1901
    const/4 v9, 0x1

    :try_start_2a
    invoke-virtual {v0, v6, v7, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1902
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    if-ne v10, v4, :cond_34

    .line 1903
    iput-boolean v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    goto :goto_1f

    .line 1905
    :cond_34
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1906
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2a .. :try_end_2a} :catch_f

    .line 1908
    move-object/from16 v10, v17

    :try_start_2b
    invoke-virtual {v6, v10}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 1909
    invoke-virtual {v6, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1910
    invoke-virtual {v0, v6, v7, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1911
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    if-ne v11, v4, :cond_35

    .line 1912
    iput-boolean v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_2b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2b .. :try_end_2b} :catch_e

    .line 1931
    .end local v0    # "enc":Ljava/nio/charset/CharsetEncoder;
    .end local v6    # "cbuf":Ljava/nio/CharBuffer;
    .end local v7    # "bbuf":Ljava/nio/ByteBuffer;
    :cond_35
    :goto_1f
    goto :goto_23

    .line 1915
    :catch_e
    move-exception v0

    goto :goto_21

    :catch_f
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_21

    :catch_10
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_20

    :catch_11
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v8, v21

    :goto_20
    const/4 v9, 0x1

    :goto_21
    move-object v6, v0

    .line 1918
    .local v6, "ucex":Ljava/nio/charset/UnsupportedCharsetException;
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1919
    .local v0, "bbuf":[B
    aget-byte v7, v0, v2

    if-ne v7, v4, :cond_36

    .line 1920
    iput-boolean v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    goto :goto_22

    .line 1922
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    move-object v0, v7

    .line 1923
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_37

    .line 1924
    iput-boolean v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_2c} :catch_12

    .line 1930
    .end local v0    # "bbuf":[B
    :cond_37
    :goto_22
    nop

    .line 1933
    .end local v6    # "ucex":Ljava/nio/charset/UnsupportedCharsetException;
    :goto_23
    return v5

    .line 1927
    .restart local v6    # "ucex":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_12
    move-exception v0

    .line 1928
    .local v0, "ueex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to use encoding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1887
    .end local v0    # "ueex":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "realJavaEncoding":Ljava/lang/String;
    .end local v6    # "ucex":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4    # "realJavaEncoding":Ljava/lang/String;
    :catchall_c
    move-exception v0

    .line 1933
    :goto_24
    invoke-virtual {v12, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1887
    throw v0
.end method

.method private configureTimezone()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1944
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "timezone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1946
    .local v0, "configuredTimeZoneOnServer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1947
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "time_zone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1949
    const-string v1, "SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "system_time_zone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1954
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerTimezone()Ljava/lang/String;

    move-result-object v1

    .line 1956
    .local v1, "canonicalTimezone":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLegacyDatetimeCode()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 1958
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1960
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1963
    goto :goto_0

    .line 1961
    :catch_0
    move-exception v2

    .line 1962
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "S1000"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 1967
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1968
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 1973
    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1974
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No timezone mapping entry for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1978
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 1980
    :cond_7
    return-void
.end method

.method private connectOneTryOnly(ZLjava/util/Properties;)V
    .locals 7
    .param p1, "isForReconnect"    # Z
    .param p2, "mergedProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2216
    const/4 v0, 0x0

    .line 2220
    .local v0, "connectionNotEstablishedBecause":Ljava/lang/Exception;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2221
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    .line 2222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2225
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v2

    .line 2226
    .local v2, "oldAutoCommit":Z
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2227
    .local v3, "oldIsolationLevel":I
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v1

    .line 2228
    .local v1, "oldReadOnly":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v4

    .line 2230
    .local v4, "oldCatalog":Ljava/lang/String;
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2233
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    .line 2235
    if-eqz p1, :cond_1

    .line 2237
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2239
    iget-boolean v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v5, :cond_0

    .line 2240
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2243
    :cond_0
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :cond_1
    return-void

    .line 2249
    .end local v1    # "oldReadOnly":Z
    .end local v2    # "oldAutoCommit":Z
    .end local v3    # "oldIsolationLevel":I
    .end local v4    # "oldCatalog":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2251
    .local v1, "EEE":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/sql/SQLException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x71c

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2253
    return-void

    .line 2256
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v2, :cond_3

    .line 2257
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2260
    :cond_3
    move-object v0, v1

    .line 2262
    instance-of v2, v1, Ljava/sql/SQLException;

    if-eqz v2, :cond_4

    .line 2263
    move-object v2, v1

    check-cast v2, Ljava/sql/SQLException;

    throw v2

    .line 2266
    :cond_4
    const-string v2, "Connection.UnableToConnect"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "08001"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2268
    .local v2, "chainedEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2270
    throw v2
.end method

.method private connectWithRetries(ZLjava/util/Properties;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2025
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getInitialTimeout()I

    move-result v0

    int-to-double v2, v0

    .line 2026
    nop

    .line 2028
    nop

    .line 2030
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    .line 2032
    :try_start_0
    iget-object v7, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v7, :cond_0

    .line 2033
    invoke-virtual {v7}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2036
    :cond_0
    move-object/from16 v7, p2

    :try_start_1
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2037
    invoke-virtual {v1, v5, v5}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2045
    :try_start_2
    iget-object v10, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v10}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    .line 2046
    iput-boolean v5, v1, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2049
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v10

    .line 2050
    iget v11, v1, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2051
    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v12

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v13

    .line 2054
    iget-object v14, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v15, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v14, v15}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2055
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2058
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    .line 2060
    if-eqz p1, :cond_2

    .line 2062
    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2064
    iget-boolean v9, v1, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v9, :cond_1

    .line 2065
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2068
    :cond_1
    invoke-virtual {v1, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2072
    :cond_2
    nop

    .line 2074
    const/4 v2, 0x1

    goto :goto_3

    .line 2055
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2075
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    :goto_1
    move-object v8, v0

    .line 2076
    nop

    .line 2077
    nop

    .line 2080
    nop

    .line 2084
    if-lez v6, :cond_3

    .line 2086
    double-to-long v9, v2

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2089
    goto :goto_2

    .line 2087
    :catch_2
    move-exception v0

    .line 2030
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v0, v8

    goto :goto_0

    .line 2093
    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_a

    .line 2103
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2104
    iput-object v4, v1, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 2105
    iput-object v4, v1, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 2108
    :cond_5
    if-eqz p1, :cond_9

    .line 2112
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2118
    nop

    .line 2120
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Statement;

    .line 2123
    instance-of v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v3, :cond_7

    .line 2124
    if-nez v4, :cond_6

    .line 2125
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 2128
    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 2130
    :cond_7
    goto :goto_4

    .line 2132
    :cond_8
    if-eqz v4, :cond_9

    .line 2133
    :goto_5
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2134
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->rePrepare()V

    goto :goto_5

    .line 2138
    :cond_9
    return-void

    .line 2095
    :cond_a
    const-string v2, "Connection.UnableToConnectWithRetries"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "08001"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2098
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2100
    throw v2
.end method

.method private coreConnect(Ljava/util/Properties;)V
    .locals 13
    .param p1, "mergedProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    const/16 v0, 0xcea

    .line 2142
    .local v0, "newPort":I
    const-string v1, "localhost"

    .line 2144
    .local v1, "newHost":Ljava/lang/String;
    const-string v2, "PROTOCOL"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, "protocol":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2149
    const-string v4, "tcp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "3306"

    const-string v6, "PORT"

    const-string v7, "HOST"

    if-eqz v4, :cond_0

    .line 2150
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-virtual {p1, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2152
    :cond_0
    const-string v4, "pipe"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2153
    const-class v4, Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 2155
    const-string v4, "PATH"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2157
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2158
    const-string v5, "namedPipePath"

    invoke-virtual {p1, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2160
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2162
    :cond_2
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-virtual {p1, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2167
    :cond_3
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    invoke-static {v4}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2168
    .local v4, "parsedHostPortPair":[Ljava/lang/String;
    aget-object v1, v4, v3

    .line 2170
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2172
    const/4 v5, 0x1

    aget-object v6, v4, v5

    if-eqz v6, :cond_4

    .line 2173
    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v0

    .line 2177
    .end local v4    # "parsedHostPortPair":[Ljava/lang/String;
    :cond_4
    :goto_0
    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 2178
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 2181
    const/4 v4, -0x1

    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 2184
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 2185
    const-string v5, "character_set_server"

    const-string v6, "utf8"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    new-instance v4, Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v10

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v11

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v5}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v12

    move-object v5, v4

    move-object v6, v1

    move v7, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/mysql/jdbc/MysqlIO;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V

    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 2189
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const/4 v4, 0x5

    invoke-virtual {p0, v4, v4, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2192
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 2194
    :cond_5
    return-void
.end method

.method private createConfigCacheIfNeeded()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3608
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3609
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    if-eqz v1, :cond_0

    .line 3610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3616
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerConfigCacheFactory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3619
    .local v4, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 3621
    .local v6, "cacheFactory":Lcom/mysql/jdbc/CacheAdapterFactory;, "Lcom/mysql/jdbc/CacheAdapterFactory<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    .line 3623
    new-instance v5, Lcom/mysql/jdbc/ConnectionImpl$4;

    invoke-direct {v5, p0}, Lcom/mysql/jdbc/ConnectionImpl$4;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    .line 3640
    .local v5, "evictOnCommsError":Lcom/mysql/jdbc/ExceptionInterceptor;
    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-nez v7, :cond_1

    .line 3641
    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    goto :goto_0

    .line 3643
    :cond_1
    check-cast v7, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-virtual {v7, v5}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->addRingZero(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3666
    .end local v4    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "evictOnCommsError":Lcom/mysql/jdbc/ExceptionInterceptor;
    .end local v6    # "cacheFactory":Lcom/mysql/jdbc/CacheAdapterFactory;, "Lcom/mysql/jdbc/CacheAdapterFactory<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    nop

    .line 3667
    :try_start_2
    monitor-exit v0

    .line 3668
    return-void

    .line 3659
    :catch_0
    move-exception v4

    .line 3660
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Connection.CantLoadCacheFactory"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3663
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3665
    throw v1

    .line 3652
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 3653
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v5, "Connection.CantLoadCacheFactory"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3656
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3658
    throw v1

    .line 3645
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 3646
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "Connection.CantFindCacheFactory"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3649
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3651
    throw v1

    .line 3667
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private createInitialHistogram([JJJ)V
    .locals 5
    .param p1, "breakpoints"    # [J
    .param p2, "lowerBound"    # J
    .param p4, "upperBound"    # J

    .line 1984
    long-to-double v0, p4

    long-to-double v2, p2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double v0, v0, v2

    .line 1986
    .local v0, "bucketSize":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 1987
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1990
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1991
    aput-wide p2, p1, v2

    .line 1992
    long-to-double v3, p2

    add-double/2addr v3, v0

    double-to-long p2, v3

    .line 1990
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1994
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private createPreparedStatementCaches()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2275
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2276
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    .local v1, "cacheSize":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2284
    .local v5, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 2286
    .local v7, "cacheFactory":Lcom/mysql/jdbc/CacheAdapterFactory;, "Lcom/mysql/jdbc/CacheAdapterFactory<Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;>;"
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I

    move-result v10

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v11

    iget-object v12, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v8, p0

    invoke-interface/range {v7 .. v12}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2310
    .end local v5    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "cacheFactory":Lcom/mysql/jdbc/CacheAdapterFactory;, "Lcom/mysql/jdbc/CacheAdapterFactory<Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;>;"
    nop

    .line 2312
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2313
    new-instance v2, Lcom/mysql/jdbc/util/LRUCache;

    invoke-direct {v2, v1}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2315
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$3;

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$3;-><init>(Lcom/mysql/jdbc/ConnectionImpl;I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2343
    .end local v1    # "cacheSize":I
    :cond_0
    monitor-exit v0

    .line 2344
    return-void

    .line 2303
    .restart local v1    # "cacheSize":I
    :catch_0
    move-exception v5

    .line 2304
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "Connection.CantLoadCacheFactory"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2307
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v5}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2309
    throw v2

    .line 2296
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    .line 2297
    .local v5, "e":Ljava/lang/InstantiationException;
    const-string v6, "Connection.CantLoadCacheFactory"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2300
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v5}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2302
    throw v2

    .line 2289
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v5

    .line 2290
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Connection.CantFindCacheFactory"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2293
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v5}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2295
    throw v2

    .line 2343
    .end local v1    # "cacheSize":I
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;
    .locals 7
    .param p0, "hostToConnectTo"    # Ljava/lang/String;
    .param p1, "portToConnectTo"    # I
    .param p2, "info"    # Ljava/util/Properties;
    .param p3, "databaseToConnectTo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 381
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 385
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    return-object v0
.end method

.method private getMetaData(ZZ)Ljava/sql/DatabaseMetaData;
    .locals 2
    .param p1, "checkClosed"    # Z
    .param p2, "checkForInfoSchema"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2865
    if-eqz p1, :cond_0

    .line 2866
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2869
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized getNextRoundRobinHostIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .local p1, "hostList":Ljava/util/List;, "Ljava/util/List<*>;"
    const-class v0, Lcom/mysql/jdbc/ConnectionImpl;

    monitor-enter v0

    .line 398
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 400
    .local v1, "indexRange":I
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .local v2, "index":I
    monitor-exit v0

    return v2

    .line 397
    .end local v1    # "indexRange":I
    .end local v2    # "index":I
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "hostList":Ljava/util/List;, "Ljava/util/List<*>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private getServerVariableAsInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "fallbackValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3372
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3373
    :catch_0
    move-exception v0

    .line 3374
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Connection.BadValueInServerVariables"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 3377
    return p2
.end method

.method private handleAutoCommitDefaults()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3386
    const/4 v0, 0x0

    .line 3388
    .local v0, "resetAutoCommitDefault":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 3389
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "init_connect"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3390
    .local v1, "initConnectValue":Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v2, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 3392
    const/4 v3, 0x0

    .line 3393
    .local v3, "rs":Ljava/sql/ResultSet;
    const/4 v4, 0x0

    .line 3396
    .local v4, "stmt":Ljava/sql/Statement;
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v5

    move-object v4, v5

    .line 3397
    const-string v5, "SELECT @@session.autocommit"

    invoke-interface {v4, v5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v3, v5

    .line 3398
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3399
    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3400
    xor-int/2addr v5, v2

    move v0, v5

    .line 3402
    :cond_0
    nop

    .line 3437
    if-eqz v3, :cond_1

    .line 3405
    :try_start_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3408
    goto :goto_0

    .line 3406
    :catch_0
    move-exception v5

    .line 3410
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 3412
    :try_start_2
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3415
    goto :goto_1

    .line 3413
    :catch_1
    move-exception v5

    .line 3415
    :cond_2
    :goto_1
    nop

    .line 3417
    nop

    .line 3418
    .end local v3    # "rs":Ljava/sql/ResultSet;
    .end local v4    # "stmt":Ljava/sql/Statement;
    goto :goto_4

    .line 3403
    .restart local v3    # "rs":Ljava/sql/ResultSet;
    .restart local v4    # "stmt":Ljava/sql/Statement;
    :catchall_0
    move-exception v2

    .line 3415
    if-eqz v3, :cond_3

    .line 3405
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3408
    goto :goto_2

    .line 3406
    :catch_2
    move-exception v5

    .line 3410
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 3412
    :try_start_4
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3415
    goto :goto_3

    .line 3413
    :catch_3
    move-exception v5

    .line 3415
    :cond_4
    :goto_3
    nop

    .line 3403
    throw v2

    .line 3420
    .end local v3    # "rs":Ljava/sql/ResultSet;
    .end local v4    # "stmt":Ljava/sql/Statement;
    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3422
    .end local v1    # "initConnectValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3424
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 3425
    const/4 v0, 0x1

    goto :goto_5

    .line 3422
    :cond_7
    :goto_4
    nop

    .line 3428
    :goto_5
    if-eqz v0, :cond_9

    .line 3430
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3435
    goto :goto_6

    .line 3431
    :catch_4
    move-exception v1

    .line 3432
    .local v1, "ex":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x71c

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    .line 3433
    :cond_8
    throw v1

    .line 3437
    .end local v1    # "ex":Ljava/sql/SQLException;
    :cond_9
    :goto_6
    return-void
.end method

.method private initializeDriverProperties(Ljava/util/Properties;)V
    .locals 4
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3109
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 3111
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptors()Ljava/lang/String;

    move-result-object v0

    .line 3113
    .local v0, "exceptionInterceptorClasses":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3114
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-direct {v1, p0, v0}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 3117
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseJvmCharsetConverters()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    .line 3119
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "MySQL"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 3121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProfileSql()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogSlowQueries()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3122
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 3125
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3126
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createPreparedStatementCaches()V

    .line 3129
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getNoDatetimeStringSync()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 3130
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Can\'t enable noDatetimeStringSync and useTimezone configuration properties at the same time"

    const-string v3, "01S00"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3134
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3135
    new-instance v1, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCallableStatementCacheSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3138
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3139
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setCacheResultSetMetadata(Z)V

    .line 3142
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3143
    new-instance v1, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataCacheSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3146
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocksProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3147
    const-string v1, "com.mysql.jdbc.SocksProxySocketFactory"

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 3149
    :cond_9
    return-void
.end method

.method private initializePropsFromServer()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3159
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionLifecycleInterceptors()Ljava/lang/String;

    move-result-object v0

    .line 3161
    .local v0, "connectionInterceptorClasses":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    .line 3163
    if-eqz v0, :cond_0

    .line 3164
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "Connection.badLifecycleInterceptor"

    invoke-static {p0, v2, v0, v4, v3}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    .line 3168
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    .line 3174
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3175
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setTransformedBitIsBoolean(Z)V

    .line 3178
    :cond_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 3183
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3184
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 3186
    invoke-virtual {p0, v6, v4, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6, v4, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3187
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 3195
    :cond_2
    const/16 v5, 0x15

    const/16 v8, 0x16

    invoke-virtual {p0, v7, v5, v8}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3196
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->loadServerVariables()V

    .line 3198
    const/4 v5, 0x2

    invoke-virtual {p0, v6, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3199
    const-string v5, "auto_increment_increment"

    invoke-direct {p0, v5, v3}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    goto :goto_0

    .line 3201
    :cond_3
    iput v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 3204
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->buildCollationMapping()V

    .line 3208
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v5, v5, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    if-nez v5, :cond_7

    .line 3209
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v8, "collation_server"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3210
    .local v5, "collationServer":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 3211
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    sget-object v9, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 3212
    sget-object v9, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3213
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iput v8, v9, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 3214
    goto :goto_2

    .line 3211
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    :cond_5
    :goto_2
    goto :goto_3

    .line 3219
    :cond_6
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v9, 0x2d

    iput v9, v8, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 3223
    .end local v5    # "collationServer":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-static {v5}, Lcom/mysql/jdbc/LicenseConfiguration;->checkLicenseType(Ljava/util/Map;)V

    .line 3225
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v8, "lower_case_table_names"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3227
    .local v5, "lowerCaseTables":Ljava/lang/String;
    const-string v8, "on"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "1"

    if-nez v9, :cond_9

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "2"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 3229
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    .line 3231
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureTimezone()V

    .line 3233
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v9, "max_allowed_packet"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_10

    .line 3234
    invoke-direct {p0, v9, v10}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v8

    .line 3236
    .local v8, "serverMaxAllowedPacket":I
    if-eq v8, v10, :cond_d

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v9

    if-lt v8, v9, :cond_c

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v9

    if-gtz v9, :cond_d

    .line 3237
    :cond_c
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    goto :goto_8

    .line 3238
    :cond_d
    if-ne v8, v10, :cond_e

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v9

    if-ne v9, v10, :cond_e

    .line 3239
    const v9, 0xffff

    invoke-virtual {p0, v9}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    .line 3242
    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPrepStmts()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3243
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getBlobSendChunkSize()I

    move-result v9

    .line 3246
    .local v9, "preferredBlobSendChunkSize":I
    const/16 v11, 0x200b

    .line 3247
    .local v11, "packetHeaderSize":I
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v11

    .line 3249
    .local v12, "allowedBlobSendChunkSize":I
    if-lez v12, :cond_f

    .line 3257
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setBlobSendChunkSize(Ljava/lang/String;)V

    goto :goto_9

    .line 3250
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection setting too low for \'maxAllowedPacket\'. When \'useServerPrepStmts=true\', \'maxAllowedPacket\' must be higher than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Check also \'max_allowed_packet\' in MySQL configuration files."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "01S00"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3261
    .end local v8    # "serverMaxAllowedPacket":I
    .end local v9    # "preferredBlobSendChunkSize":I
    .end local v11    # "packetHeaderSize":I
    .end local v12    # "allowedBlobSendChunkSize":I
    :cond_10
    :goto_9
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v9, "net_buffer_length"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3262
    const/16 v8, 0x4000

    invoke-direct {p0, v9, v8}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 3265
    :cond_11
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkTransactionIsolationLevel()V

    .line 3267
    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3268
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkServerEncoding()V

    .line 3271
    :cond_12
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v8}, Lcom/mysql/jdbc/MysqlIO;->checkForCharsetMismatch()V

    .line 3273
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v9, "sql_mode"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3274
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3275
    .local v8, "sqlModeAsString":Ljava/lang/String;
    invoke-static {v8}, Lcom/mysql/jdbc/StringUtils;->isStrictlyNumeric(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 3277
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    and-int/2addr v9, v2

    if-lez v9, :cond_13

    const/4 v9, 0x1

    goto :goto_a

    :cond_13
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    goto :goto_e

    .line 3278
    :cond_14
    if-eqz v8, :cond_18

    .line 3279
    const-string v9, "ANSI_QUOTES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_15

    const/4 v9, 0x1

    goto :goto_b

    :cond_15
    const/4 v9, 0x0

    :goto_b
    iput-boolean v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 3280
    const-string v9, "NO_BACKSLASH_ESCAPES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_16

    const/4 v9, 0x1

    goto :goto_c

    :cond_16
    const/4 v9, 0x0

    :goto_c
    iput-boolean v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 3281
    const-string v9, "TIME_TRUNCATE_FRACTIONAL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_17

    const/4 v9, 0x1

    goto :goto_d

    :cond_17
    const/4 v9, 0x0

    :goto_d
    iput-boolean v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTruncatesFracSecs:Z

    .line 3286
    .end local v5    # "lowerCaseTables":Ljava/lang/String;
    .end local v8    # "sqlModeAsString":Ljava/lang/String;
    :cond_18
    :goto_e
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 3289
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3296
    nop

    .line 3298
    const/16 v1, 0xf

    const/16 v5, 0x17

    invoke-virtual {p0, v7, v5, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3299
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 3300
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->handleAutoCommitDefaults()V

    goto :goto_f

    .line 3302
    :cond_19
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 3305
    :goto_f
    const/16 v1, 0x24

    invoke-virtual {p0, v7, v5, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3306
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    goto :goto_10

    .line 3308
    :cond_1a
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 3311
    :goto_10
    const/4 v1, 0x6

    invoke-virtual {p0, v7, v5, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 3313
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->resetMaxBuf()V

    .line 3319
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3320
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v5, "jdbc.local.character_set_results"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3322
    .local v1, "characterSetResultsOnServerMysql":Ljava/lang/String;
    if-eqz v1, :cond_1c

    const-string v5, "NULL"

    invoke-static {v1, v5}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_11

    .line 3335
    :cond_1b
    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 3336
    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    goto :goto_13

    .line 3324
    :cond_1c
    :goto_11
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v7, "character_set_system"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3325
    .local v5, "defaultMetadataCharsetMysql":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3327
    .local v7, "defaultMetadataCharset":Ljava/lang/String;
    if-eqz v5, :cond_1d

    .line 3328
    invoke-static {v5}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    .line 3330
    :cond_1d
    const-string v7, "UTF-8"

    .line 3333
    :goto_12
    iput-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 3334
    .end local v5    # "defaultMetadataCharsetMysql":Ljava/lang/String;
    .end local v7    # "defaultMetadataCharset":Ljava/lang/String;
    nop

    .line 3338
    .end local v1    # "characterSetResultsOnServerMysql":Ljava/lang/String;
    :goto_13
    goto :goto_14

    .line 3339
    :cond_1e
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 3346
    :goto_14
    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0xa

    invoke-virtual {p0, v2, v3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3347
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3348
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setAllowMultiQueries(Z)V

    .line 3352
    :cond_1f
    invoke-virtual {p0, v6, v4, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0x20

    invoke-virtual {p0, v6, v3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3355
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setUseLocalTransactionState(Z)V

    .line 3356
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setElideSetAutoCommits(Z)V

    .line 3363
    :cond_21
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    .line 3364
    return-void

    .line 3292
    :catch_0
    move-exception v2

    .line 3293
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v3, v4, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3294
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3295
    throw v1

    .line 3290
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 3291
    .local v1, "ex":Ljava/sql/SQLException;
    throw v1
.end method

.method private loadServerVariables()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3681
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    const-string v1, "server_version_string"

    if-eqz v0, :cond_1

    .line 3682
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createConfigCacheIfNeeded()V

    .line 3684
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3686
    .local v0, "cachedVariableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 3687
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3689
    .local v2, "cachedServerVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3690
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 3692
    return-void

    .line 3695
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/CacheAdapter;->invalidate(Ljava/lang/Object;)V

    .line 3699
    .end local v0    # "cachedVariableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "cachedServerVersion":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 3700
    .local v0, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 3703
    .local v2, "results":Ljava/sql/ResultSet;
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    move-object v0, v3

    .line 3705
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v3}, Ljava/sql/DatabaseMetaData;->getDriverVersion()Ljava/lang/String;

    move-result-object v3

    .line 3707
    .local v3, "version":Ljava/lang/String;
    if-eqz v3, :cond_4

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 3708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3710
    .local v5, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3711
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3713
    .local v7, "c":C
    if-ne v7, v4, :cond_2

    .line 3714
    const-string v8, "[star]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3716
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3710
    .end local v7    # "c":C
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3720
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3723
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " */"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    :goto_2
    const-string v4, ""

    .line 3725
    .local v4, "versionComment":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 3727
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getJdbcCompliantTruncation()Z

    move-result v5

    .line 3728
    .local v5, "currentJdbcComplTrunc":Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3731
    const/4 v7, 0x1

    const/4 v8, 0x5

    :try_start_1
    invoke-virtual {p0, v8, v7, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "SELECT"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3733
    .local v7, "queryBuf":Ljava/lang/StringBuilder;
    const-string v9, "  @@session.auto_increment_increment AS auto_increment_increment"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    const-string v9, ", @@character_set_client AS character_set_client"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3735
    const-string v9, ", @@character_set_connection AS character_set_connection"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    const-string v9, ", @@character_set_results AS character_set_results"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    const-string v9, ", @@character_set_server AS character_set_server"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3738
    const-string v9, ", @@collation_server AS collation_server"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3739
    const-string v9, ", @@collation_connection AS collation_connection"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3740
    const-string v9, ", @@init_connect AS init_connect"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    const-string v9, ", @@interactive_timeout AS interactive_timeout"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    invoke-virtual {p0, v8, v8, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v9

    if-nez v9, :cond_7

    .line 3743
    const-string v9, ", @@language AS language"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3745
    :cond_7
    const-string v9, ", @@license AS license"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3746
    const-string v9, ", @@lower_case_table_names AS lower_case_table_names"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3747
    const-string v9, ", @@max_allowed_packet AS max_allowed_packet"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3748
    const-string v9, ", @@net_buffer_length AS net_buffer_length"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    const-string v9, ", @@net_write_timeout AS net_write_timeout"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    invoke-virtual {p0, v8, v8, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3751
    const-string v9, ", @@performance_schema AS performance_schema"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3753
    :cond_8
    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-virtual {p0, v10, v6, v9}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v11

    if-nez v11, :cond_9

    .line 3754
    const-string v11, ", @@query_cache_size AS query_cache_size"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    const-string v11, ", @@query_cache_type AS query_cache_type"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3757
    :cond_9
    const-string v11, ", @@sql_mode AS sql_mode"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    const-string v11, ", @@system_time_zone AS system_time_zone"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    const-string v11, ", @@time_zone AS time_zone"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    invoke-virtual {p0, v10, v6, v9}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v9, 0x7

    const/16 v11, 0x14

    invoke-virtual {p0, v8, v9, v11}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0, v10, v6, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_4

    .line 3763
    :cond_a
    const-string v6, ", @@tx_isolation AS transaction_isolation"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3761
    :cond_b
    :goto_4
    const-string v6, ", @@transaction_isolation AS transaction_isolation"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    :goto_5
    const-string v6, ", @@wait_timeout AS wait_timeout"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3767
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    move-object v2, v6

    .line 3768
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3769
    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v6

    .line 3770
    .local v6, "rsmd":Ljava/sql/ResultSetMetaData;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_6
    invoke-interface {v6}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v9

    if-gt v8, v9, :cond_c

    .line 3771
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3774
    .end local v6    # "rsmd":Ljava/sql/ResultSetMetaData;
    .end local v7    # "queryBuf":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :cond_c
    goto :goto_8

    .line 3775
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SHOW VARIABLES"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    move-object v2, v6

    .line 3776
    :goto_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3777
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 3781
    :cond_e
    :goto_8
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3782
    const/4 v2, 0x0

    .line 3783
    nop

    .line 3814
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    .line 3788
    :catchall_0
    move-exception v1

    goto :goto_c

    .line 3783
    :catch_0
    move-exception v6

    .line 3784
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    const/16 v8, 0x71c

    if-ne v7, v8, :cond_12

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_12

    .line 3787
    .end local v6    # "ex":Ljava/sql/SQLException;
    nop

    .line 3814
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    .line 3789
    :goto_9
    nop

    .line 3791
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3792
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v7}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3794
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v1, v6, v7}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3797
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "versionComment":Ljava/lang/String;
    .end local v5    # "currentJdbcComplTrunc":Z
    :cond_f
    nop

    .line 3814
    if-eqz v2, :cond_10

    .line 3802
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3804
    goto :goto_a

    .line 3803
    :catch_1
    move-exception v1

    .line 3807
    :cond_10
    :goto_a
    if-eqz v0, :cond_11

    .line 3809
    :try_start_6
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3811
    goto :goto_b

    .line 3810
    :catch_2
    move-exception v1

    .line 3811
    :cond_11
    :goto_b
    nop

    .line 3813
    nop

    .line 3814
    return-void

    .line 3785
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "versionComment":Ljava/lang/String;
    .restart local v5    # "currentJdbcComplTrunc":Z
    .restart local v6    # "ex":Ljava/sql/SQLException;
    :cond_12
    nop

    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v2    # "results":Ljava/sql/ResultSet;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "versionComment":Ljava/lang/String;
    .end local v5    # "currentJdbcComplTrunc":Z
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3814
    .end local v6    # "ex":Ljava/sql/SQLException;
    .restart local v0    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "results":Ljava/sql/ResultSet;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "versionComment":Ljava/lang/String;
    .restart local v5    # "currentJdbcComplTrunc":Z
    :goto_c
    :try_start_8
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    .line 3788
    nop

    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v2    # "results":Ljava/sql/ResultSet;
    throw v1
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3800
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "versionComment":Ljava/lang/String;
    .end local v5    # "currentJdbcComplTrunc":Z
    .restart local v0    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "results":Ljava/sql/ResultSet;
    :catchall_1
    move-exception v1

    goto :goto_d

    .line 3797
    :catch_3
    move-exception v1

    .line 3798
    .local v1, "e":Ljava/sql/SQLException;
    nop

    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v2    # "results":Ljava/sql/ResultSet;
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3811
    .end local v1    # "e":Ljava/sql/SQLException;
    .restart local v0    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "results":Ljava/sql/ResultSet;
    :goto_d
    if-eqz v2, :cond_13

    .line 3802
    :try_start_a
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_4

    .line 3804
    goto :goto_e

    .line 3803
    :catch_4
    move-exception v3

    .line 3807
    :cond_13
    :goto_e
    if-eqz v0, :cond_14

    .line 3809
    :try_start_b
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_5

    .line 3811
    goto :goto_f

    .line 3810
    :catch_5
    move-exception v3

    .line 3811
    :cond_14
    :goto_f
    nop

    .line 3800
    throw v1
.end method

.method private normalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .line 2197
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2201
    :cond_0
    return-object p1

    .line 2198
    :cond_1
    :goto_0
    const-string v0, "localhost"

    return-object v0
.end method

.method private static nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 406
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 407
    return v0

    .line 410
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 411
    return v1

    .line 414
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3858
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 3860
    .local v0, "escapedSqlResult":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 3861
    .local v1, "isFunctionCall":Z
    const/4 v2, 0x0

    .line 3863
    .local v2, "parsedSql":Ljava/lang/String;
    instance-of v3, v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    if-eqz v3, :cond_0

    .line 3864
    move-object v3, v0

    check-cast v3, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v2, v3, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 3865
    move-object v3, v0

    check-cast v3, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-boolean v1, v3, Lcom/mysql/jdbc/EscapeProcessorResult;->callingStoredFunction:Z

    goto :goto_0

    .line 3867
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3868
    const/4 v1, 0x0

    .line 3871
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v3, v2, v4, v1}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v3

    return-object v3
.end method

.method private parsePortNumber(Ljava/lang/String;)I
    .locals 5
    .param p1, "portAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2205
    const/16 v0, 0xcea

    .line 2207
    .local v0, "portNumber":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2211
    nop

    .line 2212
    return v0

    .line 2208
    :catch_0
    move-exception v1

    .line 2209
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal connection port value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "01S00"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method private repartitionHistogram([I[JJJ)V
    .locals 14
    .param p1, "histCounts"    # [I
    .param p2, "histBreakpoints"    # [J
    .param p3, "currentLowerBound"    # J
    .param p5, "currentUpperBound"    # J

    .line 4309
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    if-nez v0, :cond_0

    .line 4310
    array-length v0, v11

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 4311
    array-length v0, v12

    new-array v0, v0, [J

    iput-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 4314
    :cond_0
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    array-length v1, v11

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4316
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    array-length v1, v12

    invoke-static {v12, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4318
    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    .line 4320
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v13, v0, :cond_1

    .line 4321
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    aget-wide v3, v0, v13

    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    aget v5, v0, v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 4320
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4323
    .end local v13    # "i":I
    :cond_1
    return-void
.end method

.method private repartitionPerformanceHistogram()V
    .locals 7

    .line 4326
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 4328
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :cond_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    .line 4330
    return-void
.end method

.method private repartitionTablesAccessedHistogram()V
    .locals 7

    .line 4333
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 4335
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :cond_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    .line 4337
    return-void
.end method

.method private reportMetrics()V
    .locals 17

    .line 4340
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4341
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4343
    .local v1, "logMessage":Ljava/lang/StringBuilder;
    const-string v2, "** Performance Metrics Report **\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nLongest reported query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nShortest reported query: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nAverage query execution time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    iget-wide v6, v0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of statements executed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of result sets created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of statements prepared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of prepared statement executions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    const-string v3, "*"

    const-string v4, "\t"

    const/16 v5, 0x14

    const-string v6, " and "

    const-string v7, "\n\tbetween "

    const/16 v9, 0x13

    if-eqz v2, :cond_8

    .line 4353
    const-string v2, "\n\n\tTiming Histogram:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4354
    const/16 v2, 0x14

    .line 4355
    .local v2, "maxNumPoints":I
    const/high16 v10, -0x80000000

    .line 4357
    .local v10, "highestCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_1

    .line 4358
    iget-object v12, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v13, v12, v11

    if-le v13, v10, :cond_0

    .line 4359
    aget v10, v12, v11

    .line 4357
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4363
    .end local v11    # "i":I
    :cond_1
    if-nez v10, :cond_2

    .line 4364
    const/4 v10, 0x1

    .line 4367
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    const-string v12, " ms: \t"

    if-ge v11, v9, :cond_6

    .line 4369
    if-nez v11, :cond_3

    .line 4370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n\tless than "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v15, v11, 0x1

    aget-wide v8, v14, v15

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v8, v8, v11

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4372
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v13, v9, v11

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v13, v11, 0x1

    aget-wide v13, v9, v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4376
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4378
    int-to-double v8, v2

    iget-object v13, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v13, v13, v11

    int-to-double v13, v13

    move-object/from16 v16, v6

    int-to-double v5, v10

    div-double/2addr v13, v5

    mul-double v8, v8, v13

    double-to-int v5, v8

    .line 4380
    .local v5, "numPointsToGraph":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v5, :cond_4

    .line 4381
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4384
    .end local v6    # "j":I
    :cond_4
    iget-wide v8, v0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    iget-object v6, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    add-int/lit8 v13, v11, 0x1

    aget v6, v6, v13

    int-to-long v13, v6

    cmp-long v6, v8, v13

    if-gez v6, :cond_5

    .line 4385
    goto :goto_4

    .line 4367
    .end local v5    # "numPointsToGraph":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    const/16 v5, 0x14

    const/16 v9, 0x13

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v6

    .line 4389
    .end local v11    # "i":I
    :goto_4
    iget-object v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    const/16 v6, 0x12

    aget-wide v8, v5, v6

    iget-wide v13, v0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v5, v8, v13

    if-gez v5, :cond_7

    .line 4390
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    iget-object v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v8, v5, v6

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4392
    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4393
    iget-object v6, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    const/16 v8, 0x13

    aget-wide v13, v6, v8

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4394
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4395
    iget-object v6, v0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v6, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4389
    :cond_7
    move-object/from16 v5, v16

    goto :goto_5

    .line 4352
    .end local v2    # "maxNumPoints":I
    .end local v10    # "highestCount":I
    :cond_8
    move-object v5, v6

    .line 4399
    :goto_5
    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-eqz v2, :cond_10

    .line 4400
    const-string v2, "\n\n\tTable Join Histogram:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4401
    const/16 v2, 0x14

    .line 4402
    .restart local v2    # "maxNumPoints":I
    const/high16 v6, -0x80000000

    .line 4404
    .local v6, "highestCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    const/16 v9, 0x14

    if-ge v8, v9, :cond_a

    .line 4405
    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v11, v10, v8

    if-le v11, v6, :cond_9

    .line 4406
    aget v6, v10, v8

    .line 4404
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4410
    .end local v8    # "i":I
    :cond_a
    if-nez v6, :cond_b

    .line 4411
    const/4 v6, 0x1

    .line 4414
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    const/16 v9, 0x13

    if-ge v8, v9, :cond_f

    .line 4416
    if-nez v8, :cond_c

    .line 4417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v10, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tables or less: \t\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 4419
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v11, v10, v8

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v11, v8, 0x1

    aget-wide v11, v10, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tables: \t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4423
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4425
    int-to-double v9, v2

    iget-object v11, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v11, v11, v8

    int-to-double v11, v11

    int-to-double v13, v6

    div-double/2addr v11, v13

    mul-double v9, v9, v11

    double-to-int v9, v9

    .line 4427
    .local v9, "numPointsToGraph":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_9
    if-ge v10, v9, :cond_d

    .line 4428
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4427
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 4431
    .end local v10    # "j":I
    :cond_d
    iget-wide v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    iget-object v12, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v13, v8, 0x1

    aget-wide v13, v12, v13

    cmp-long v12, v10, v13

    if-gez v12, :cond_e

    .line 4432
    goto :goto_a

    .line 4414
    .end local v9    # "numPointsToGraph":I
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 4436
    .end local v8    # "i":I
    :cond_f
    :goto_a
    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    const/16 v4, 0x12

    aget-wide v8, v3, v4

    iget-wide v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_10

    .line 4437
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v7, v3, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4439
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    const/16 v4, 0x13

    aget-wide v7, v3, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4441
    const-string v3, " tables: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4442
    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4446
    .end local v2    # "maxNumPoints":I
    .end local v6    # "highestCount":I
    :cond_10
    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    .line 4448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    .line 4450
    .end local v1    # "logMessage":Ljava/lang/StringBuilder;
    :cond_11
    return-void
.end method

.method private rollbackNoChecks()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4631
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4632
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4633
    return-void

    .line 4637
    :cond_0
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, "rollback"

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4638
    return-void
.end method

.method private setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V
    .locals 4
    .param p1, "savepoint"    # Lcom/mysql/jdbc/MysqlSavepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4939
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4940
    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4958
    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    throw v1

    .line 4941
    .restart local p1    # "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4943
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVEPOINT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4944
    .local v1, "savePointQuery":Ljava/lang/StringBuilder;
    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4945
    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlSavepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4948
    const/4 v2, 0x0

    .line 4951
    .local v2, "stmt":Ljava/sql/Statement;
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    move-object v2, v3

    .line 4953
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4954
    nop

    .line 4961
    :try_start_2
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4956
    nop

    .line 4957
    .end local v1    # "savePointQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    nop

    .line 4960
    monitor-exit v0

    .line 4961
    return-void

    .line 4955
    .restart local v1    # "savePointQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    :catchall_0
    move-exception v3

    .line 4961
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4955
    nop

    .end local p1    # "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    throw v3

    .line 4960
    .end local v1    # "savePointQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setSessionVariables()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4977
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4979
    .local v0, "variablesToSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    const-string v2, ","

    const-string v3, "\"\'("

    const-string v4, "\"\')"

    const-string v5, "\"\'"

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4980
    .local v2, "part":Ljava/lang/String;
    const/4 v8, 0x1

    const-string v4, ";"

    const-string v5, "\"\'("

    const-string v6, "\"\')"

    const-string v7, "\"\'"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4983
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "part":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4984
    const/4 v1, 0x0

    .line 4986
    .local v1, "stmt":Ljava/sql/Statement;
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object v1, v2

    .line 4987
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SET "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4988
    .local v2, "query":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 4989
    .local v3, "separator":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4990
    .local v5, "variableToSet":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 4991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4992
    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4993
    const-string v6, "SESSION "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4995
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4996
    const-string v6, ","

    move-object v3, v6

    .end local v5    # "variableToSet":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 4999
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5000
    nop

    .line 5007
    .end local v2    # "query":Ljava/lang/StringBuilder;
    .end local v3    # "separator":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 5002
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    :cond_4
    nop

    .line 5004
    goto :goto_2

    .line 5001
    :catchall_0
    move-exception v2

    .line 5002
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 5001
    :cond_5
    throw v2

    .line 5007
    .end local v0    # "variablesToSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "stmt":Ljava/sql/Statement;
    :cond_6
    :goto_2
    return-void
.end method

.method private setupServerForTruncationChecks()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5091
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5092
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5093
    iget-object v0, v11, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "sql_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 5095
    .local v13, "currentSqlMode":Ljava/lang/String;
    const-string v0, "STRICT_TRANS_TABLES"

    invoke-static {v13, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    .line 5097
    .local v14, "strictTransTablesIsSet":Z
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez v14, :cond_1

    goto :goto_1

    .line 5110
    :cond_1
    if-eqz v14, :cond_4

    .line 5112
    invoke-virtual {v11, v12}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    goto :goto_2

    .line 5098
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET sql_mode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 5100
    .local v15, "commandBuf":Ljava/lang/StringBuilder;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5101
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5102
    const-string v0, ","

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5105
    :cond_3
    const-string v0, "STRICT_TRANS_TABLES\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5107
    const/4 v1, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5109
    invoke-virtual {v11, v12}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    .line 5117
    .end local v13    # "currentSqlMode":Ljava/lang/String;
    .end local v14    # "strictTransTablesIsSet":Z
    .end local v15    # "commandBuf":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5429
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 5431
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 5432
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 5435
    :cond_0
    if-eqz p1, :cond_1

    .line 5439
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$11;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/ConnectionImpl$11;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5449
    return-void

    .line 5436
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Executor can not be null"

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    .line 1305
    :try_start_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 1306
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    .line 1310
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 1313
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 1314
    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1115
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 1117
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    :cond_0
    const-string v1, ""

    move-object p1, v1

    .line 1121
    :cond_1
    if-nez p2, :cond_2

    .line 1122
    const-string v1, ""

    move-object p2, v1

    .line 1126
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/mysql/jdbc/MysqlIO;->changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    nop

    .line 1136
    :try_start_2
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 1137
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 1139
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1140
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 1143
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    .line 1145
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    .line 1146
    monitor-exit v0

    .line 1147
    return-void

    .line 1130
    :catch_0
    move-exception v1

    .line 1131
    .local v1, "ex":Ljava/sql/SQLException;
    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0xd

    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "28000"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1132
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 1134
    :cond_4
    nop

    .end local p1    # "userName":Ljava/lang/String;
    .end local p2    # "newPassword":Ljava/lang/String;
    throw v1

    .line 1146
    .end local v1    # "ex":Ljava/sql/SQLException;
    .restart local p1    # "userName":Ljava/lang/String;
    .restart local p2    # "newPassword":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1176
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V

    .line 1179
    :cond_0
    return-void
.end method

.method public clearHasTriedMaster()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 1341
    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1352
    return-void
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1359
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1366
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1368
    .local v0, "pStmt":Ljava/sql/PreparedStatement;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1370
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

    .line 1380
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

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

    .line 1436
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "processEscapeCodesIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1385
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 1387
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1389
    .local v0, "nativeSql":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 1391
    .local v1, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 1394
    .local v2, "pStmtInfo":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    if-nez v2, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v1

    .line 1397
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1399
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v3, v0, v4, v2}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v1

    .line 1401
    .end local v2    # "pStmtInfo":Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    :goto_1
    goto :goto_2

    .line 1402
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v1

    .line 1405
    :goto_2
    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 1406
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V

    .line 1408
    return-object v1
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1416
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 1418
    .local v0, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1420
    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 1429
    .local v0, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1431
    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1452
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1454
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$1;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$1;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionImpl$1;->doForAll()V

    .line 1462
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V

    .line 1463
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1514
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1517
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1518
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$2;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$2;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    move-object v1, v2

    .line 1528
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 1530
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 1531
    nop

    .line 1558
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1531
    .restart local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 1536
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1537
    :cond_1
    const-string v1, "Can\'t call commit when autocommit=true"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1538
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v1, :cond_4

    .line 1539
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1540
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 1541
    nop

    .line 1558
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1541
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 1545
    :cond_3
    const/4 v3, 0x0

    :try_start_5
    const-string v4, "commit"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1547
    :cond_4
    nop

    .line 1558
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1556
    nop

    .line 1557
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1558
    return-void

    .line 1555
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1547
    :catch_0
    move-exception v1

    .line 1548
    .local v1, "sqlException":Ljava/sql/SQLException;
    :try_start_7
    const-string v2, "08S01"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1549
    const-string v2, "Communications link failure during commit(). Transaction resolution unknown."

    const-string v3, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1553
    :cond_5
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1558
    .end local v1    # "sqlException":Ljava/sql/SQLException;
    :goto_1
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1555
    throw v1

    .line 1557
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public createNewIO(Z)V
    .locals 3
    .param p1, "isForReconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2007
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2012
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 2014
    .local v1, "mergedProps":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2015
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->connectOneTryOnly(ZLjava/util/Properties;)V

    .line 2017
    monitor-exit v0

    return-void

    .line 2020
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->connectWithRetries(ZLjava/util/Properties;)V

    .line 2021
    .end local v1    # "mergedProps":Ljava/util/Properties;
    monitor-exit v0

    .line 2022
    return-void

    .line 2021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2356
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 3
    .param p1, "resultSetType"    # I
    .param p2, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2372
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2374
    new-instance v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 2375
    .local v0, "stmt":Lcom/mysql/jdbc/StatementImpl;
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 2376
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/StatementImpl;->setResultSetConcurrency(I)V

    .line 2378
    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 3
    .param p1, "resultSetType"    # I
    .param p2, "resultSetConcurrency"    # I
    .param p3, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2385
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2386
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2387
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2392
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 6
    .param p1, "pstmt"    # Lcom/mysql/jdbc/ServerPreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4260
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4261
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4262
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4263
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v3, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v4, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v5, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "pstmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    :try_start_2
    throw v2

    .line 4266
    .restart local p1    # "pstmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 4267
    return-void

    .line 4266
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public dumpTestcaseQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 2396
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2397
    return-void
.end method

.method public duplicate()Lcom/mysql/jdbc/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2400
    new-instance v6, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2439
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 28
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

    .line 2444
    move-object/from16 v1, p0

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2449
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    move-wide v15, v4

    .line 2450
    .local v15, "queryStartTime":J
    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v12, v4

    .line 2452
    .local v12, "endOfQueryPacketPosition":I
    iput-wide v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v2, :cond_3

    if-nez p10, :cond_3

    .line 2456
    :try_start_1
    invoke-virtual {v1, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2458
    iput-boolean v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 2461
    goto :goto_2

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    .local v0, "Ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 2465
    .end local v0    # "Ex":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-nez v13, :cond_5

    :try_start_3
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v22, p3

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    invoke-virtual/range {v17 .. v27}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v13, v12

    goto :goto_4

    .line 2512
    :catchall_0
    move-exception v0

    move-object/from16 v3, p2

    move v5, v12

    move-object v4, v13

    goto/16 :goto_a

    .line 2495
    :catch_1
    move-exception v0

    move v13, v12

    goto :goto_5

    .line 2471
    :catch_2
    move-exception v0

    move v13, v12

    const/4 v2, 0x1

    goto/16 :goto_7

    .line 2465
    :cond_5
    :try_start_4
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move v13, v12

    .end local v12    # "endOfQueryPacketPosition":I
    .local v13, "endOfQueryPacketPosition":I
    move-object/from16 v12, p9

    :try_start_5
    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2520
    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2516
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    :cond_7
    nop

    .line 2465
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v0

    .line 2520
    .end local v13    # "endOfQueryPacketPosition":I
    .end local v15    # "queryStartTime":J
    :catchall_1
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    goto/16 :goto_b

    .line 2512
    .restart local v13    # "endOfQueryPacketPosition":I
    .restart local v15    # "queryStartTime":J
    :catchall_2
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v13

    goto/16 :goto_a

    .line 2495
    :catch_3
    move-exception v0

    goto :goto_5

    .line 2471
    :catch_4
    move-exception v0

    const/4 v2, 0x1

    goto :goto_7

    .line 2512
    .end local v13    # "endOfQueryPacketPosition":I
    .restart local v12    # "endOfQueryPacketPosition":I
    :catchall_3
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v12

    .end local v12    # "endOfQueryPacketPosition":I
    .restart local v13    # "endOfQueryPacketPosition":I
    goto/16 :goto_a

    .line 2495
    .end local v13    # "endOfQueryPacketPosition":I
    .restart local v12    # "endOfQueryPacketPosition":I
    :catch_5
    move-exception v0

    move v13, v12

    .line 2496
    .end local v12    # "endOfQueryPacketPosition":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "endOfQueryPacketPosition":I
    :goto_5
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2497
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_8

    .line 2499
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2501
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    goto :goto_6

    .line 2502
    :cond_9
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_a

    .line 2503
    invoke-direct {v1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 2506
    :cond_a
    :goto_6
    const-string v2, "Connection.UnexpectedException"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2508
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2510
    nop

    .end local v13    # "endOfQueryPacketPosition":I
    .end local v15    # "queryStartTime":J
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "sql":Ljava/lang/String;
    .end local p3    # "maxRows":I
    .end local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p5    # "resultSetType":I
    .end local p6    # "resultSetConcurrency":I
    .end local p7    # "streamResults":Z
    .end local p8    # "catalog":Ljava/lang/String;
    .end local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .end local p10    # "isBatch":Z
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2471
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "endOfQueryPacketPosition":I
    .restart local v15    # "queryStartTime":J
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "sql":Ljava/lang/String;
    .restart local p3    # "maxRows":I
    .restart local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p5    # "resultSetType":I
    .restart local p6    # "resultSetConcurrency":I
    .restart local p7    # "streamResults":Z
    .restart local p8    # "catalog":Ljava/lang/String;
    .restart local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .restart local p10    # "isBatch":Z
    :catch_6
    move-exception v0

    move v13, v12

    const/4 v2, 0x1

    .line 2474
    .end local v12    # "endOfQueryPacketPosition":I
    .local v0, "sqlE":Ljava/sql/SQLException;
    .restart local v13    # "endOfQueryPacketPosition":I
    :goto_7
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDumpQueriesOnException()Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v3, :cond_b

    .line 2475
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v13

    .end local v13    # "endOfQueryPacketPosition":I
    .local v5, "endOfQueryPacketPosition":I
    :try_start_9
    invoke-virtual {v1, v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v6

    .line 2476
    .local v6, "extractedSql":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2477
    .local v7, "messageBuf":Ljava/lang/StringBuilder;
    const-string v8, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v8

    move-object v0, v8

    goto :goto_8

    .line 2474
    .end local v5    # "endOfQueryPacketPosition":I
    .end local v6    # "extractedSql":Ljava/lang/String;
    .end local v7    # "messageBuf":Ljava/lang/StringBuilder;
    .restart local v13    # "endOfQueryPacketPosition":I
    :cond_b
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v13

    .line 2484
    .end local v13    # "endOfQueryPacketPosition":I
    .restart local v5    # "endOfQueryPacketPosition":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2485
    const-string v6, "08S01"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2487
    iget-object v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v6}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2489
    :cond_c
    iput-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    goto :goto_9

    .line 2490
    :cond_d
    const-string v2, "08S01"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2491
    invoke-direct {v1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 2494
    :cond_e
    :goto_9
    nop

    .end local v5    # "endOfQueryPacketPosition":I
    .end local v15    # "queryStartTime":J
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "sql":Ljava/lang/String;
    .end local p3    # "maxRows":I
    .end local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p5    # "resultSetType":I
    .end local p6    # "resultSetConcurrency":I
    .end local p7    # "streamResults":Z
    .end local p8    # "catalog":Ljava/lang/String;
    .end local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .end local p10    # "isBatch":Z
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2512
    .end local v0    # "sqlE":Ljava/sql/SQLException;
    .restart local v5    # "endOfQueryPacketPosition":I
    .restart local v15    # "queryStartTime":J
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "sql":Ljava/lang/String;
    .restart local p3    # "maxRows":I
    .restart local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p5    # "resultSetType":I
    .restart local p6    # "resultSetConcurrency":I
    .restart local p7    # "streamResults":Z
    .restart local p8    # "catalog":Ljava/lang/String;
    .restart local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .restart local p10    # "isBatch":Z
    :catchall_4
    move-exception v0

    goto :goto_a

    .end local v5    # "endOfQueryPacketPosition":I
    .restart local v13    # "endOfQueryPacketPosition":I
    :catchall_5
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v13

    .line 2517
    .end local v13    # "endOfQueryPacketPosition":I
    .restart local v5    # "endOfQueryPacketPosition":I
    :goto_a
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2516
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v15

    invoke-virtual {v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    :cond_10
    nop

    .line 2512
    nop

    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "sql":Ljava/lang/String;
    .end local p3    # "maxRows":I
    .end local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p5    # "resultSetType":I
    .end local p6    # "resultSetConcurrency":I
    .end local p7    # "streamResults":Z
    .end local p8    # "catalog":Ljava/lang/String;
    .end local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .end local p10    # "isBatch":Z
    throw v0

    .line 2520
    .end local v5    # "endOfQueryPacketPosition":I
    .end local v15    # "queryStartTime":J
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "sql":Ljava/lang/String;
    .restart local p3    # "maxRows":I
    .restart local p4    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p5    # "resultSetType":I
    .restart local p6    # "resultSetConcurrency":I
    .restart local p7    # "streamResults":Z
    .restart local p8    # "catalog":Ljava/lang/String;
    .restart local p9    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    .restart local p10    # "isBatch":Z
    :catchall_6
    move-exception v0

    move-object/from16 v3, p2

    move-object v4, v13

    :goto_b
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_b
.end method

.method public extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 7
    .param p1, "possibleSqlQuery"    # Ljava/lang/String;
    .param p2, "queryPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "endOfQueryPacketPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2525
    const/4 v0, 0x0

    .line 2527
    .local v0, "extractedSql":Ljava/lang/String;
    const-string v1, "MysqlIO.25"

    if-eqz p1, :cond_1

    .line 2528
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2529
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2530
    .local v2, "truncatedQueryBuf":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .end local v2    # "truncatedQueryBuf":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 2533
    :cond_0
    move-object v0, p1

    .line 2537
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2540
    move v2, p3

    .line 2542
    .local v2, "extractPosition":I
    const/4 v3, 0x0

    .line 2544
    .local v3, "truncated":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v4

    if-le p3, v4, :cond_2

    .line 2545
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v2

    .line 2546
    const/4 v3, 0x1

    .line 2549
    :cond_2
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    add-int/lit8 v5, v2, -0x5

    const/4 v6, 0x5

    invoke-static {v4, v6, v5}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v0

    .line 2551
    if-eqz v3, :cond_3

    .line 2552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2556
    .end local v2    # "extractPosition":I
    .end local v3    # "truncated":Z
    :cond_3
    return-object v0
.end method

.method public generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 2561
    const-string v0, "/* conn id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2563
    const-string v0, " clock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2565
    const-string v0, " */ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    return-object p1
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 0

    .line 128
    return-object p0
.end method

.method public getActiveStatementCount()I
    .locals 1

    .line 2571
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAutoCommit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2583
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2584
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    monitor-exit v0

    return v1

    .line 2585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    .line 3819
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    return v0
.end method

.method public getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .line 5191
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v0, :cond_0

    .line 5192
    monitor-enter v0

    .line 5193
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/CachedResultSetMetaData;

    monitor-exit v0

    return-object v1

    .line 5194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5197
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 1

    .line 2593
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDynamicCalendars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2594
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 2597
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionLockedCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCancelTimer()Ljava/util/Timer;
    .locals 4

    .line 364
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Ljava/util/Timer;

    const-string v2, "MySQL Statement Cancellation Timer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    monitor-exit v0

    return-object v1

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2612
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2613
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharacterSetMetadata()Ljava/lang/String;
    .locals 2

    .line 2621
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2622
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 6
    .param p1, "javaEncodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2635
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2636
    return-object v0

    .line 2639
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    if-eqz v1, :cond_1

    .line 2640
    return-object v0

    .line 2643
    :cond_1
    const/4 v1, 0x0

    .line 2645
    .local v1, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    monitor-enter v2

    .line 2646
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2648
    .local v3, "asObject":Ljava/lang/Object;
    sget-object v4, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 2649
    monitor-exit v2

    return-object v0

    .line 2652
    :cond_2
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 2654
    if-nez v1, :cond_4

    .line 2656
    :try_start_1
    invoke-static {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    move-object v1, v0

    .line 2658
    if-nez v1, :cond_3

    .line 2659
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2661
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2667
    :goto_0
    goto :goto_1

    .line 2663
    :catch_0
    move-exception v0

    .line 2664
    .local v0, "unsupEncEx":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    const/4 v1, 0x0

    .line 2669
    .end local v0    # "unsupEncEx":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "asObject":Ljava/lang/Object;
    :cond_4
    :goto_1
    monitor-exit v2

    .line 2671
    return-object v1

    .line 2669
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
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

    .line 2679
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 2739
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncodingForIndex(I)Ljava/lang/String;
    .locals 5
    .param p1, "charsetIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2693
    const/4 v0, 0x0

    .line 2695
    .local v0, "javaEncoding":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2696
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2699
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 2703
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 2704
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2705
    .local v1, "cs":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2706
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2710
    .end local v1    # "cs":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 2711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2721
    :cond_2
    nop

    .line 2724
    if-nez v0, :cond_4

    .line 2725
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2717
    :catch_0
    move-exception v1

    .line 2718
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2719
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2720
    throw v2

    .line 2714
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :catch_1
    move-exception v1

    .line 2715
    .local v1, "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown character set index for field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' received from server."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1000"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 2728
    .end local v1    # "outOfBoundsEx":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2731
    :cond_4
    :goto_0
    return-object v0
.end method

.method public getErrorMessageEncoding()Ljava/lang/String;
    .locals 1

    .line 2743
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 5335
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2750
    const/4 v0, 0x2

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIO()Lcom/mysql/jdbc/MysqlIO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2779
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez v1, :cond_0

    .line 2783
    return-object v0

    .line 2780
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Operation not allowed on closed connection"

    const-string v2, "08003"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getId()J
    .locals 2

    .line 2754
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    return-wide v0
.end method

.method public getIdleFor()J
    .locals 6

    .line 2766
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2767
    :try_start_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    sub-long v3, v1, v3

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 2768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lcom/mysql/jdbc/log/Log;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2795
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    return-object v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 6
    .param p1, "charsetIndex"    # Ljava/lang/Integer;
    .param p2, "javaCharsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2804
    const/4 v0, 0x0

    .line 2805
    .local v0, "charset":Ljava/lang/String;
    const/4 v1, 0x1

    .line 2812
    .local v1, "res":I
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 2813
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 2816
    :cond_0
    if-nez v0, :cond_1

    .line 2817
    invoke-static {p1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2821
    :cond_1
    if-nez v0, :cond_2

    .line 2822
    invoke-static {p2, p0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2826
    :cond_2
    const/4 v2, 0x0

    .line 2827
    .local v2, "mblen":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 2828
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 2832
    :cond_3
    if-nez v2, :cond_4

    .line 2833
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getMblen(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 2836
    :cond_4
    if-eqz v2, :cond_5

    .line 2837
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 2845
    .end local v2    # "mblen":Ljava/lang/Integer;
    :cond_5
    nop

    .line 2847
    return v1

    .line 2841
    :catch_0
    move-exception v2

    .line 2842
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 2843
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2844
    throw v3

    .line 2839
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :catch_1
    move-exception v2

    .line 2840
    .local v2, "ex":Ljava/sql/SQLException;
    throw v2
.end method

.method public getMaxBytesPerChar(Ljava/lang/String;)I
    .locals 1
    .param p1, "javaCharsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2799
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

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

    .line 2861
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement(I)Ljava/sql/Statement;
    .locals 3
    .param p1, "maxRows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2877
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 2879
    .local v0, "stmt":Ljava/sql/Statement;
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-interface {v0, v2}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 2881
    invoke-interface {v0, v1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 2883
    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2884
    invoke-interface {v0, v1}, Ljava/sql/Statement;->setFetchSize(I)V

    .line 2887
    :cond_1
    return-object v0
.end method

.method public getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getNetBufferLength()I
    .locals 1

    .line 2894
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5471
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5472
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5473
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v1

    monitor-exit v0

    return v1

    .line 5474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 1

    .line 5478
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 3072
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getQueryTimingUnits()Ljava/lang/String;
    .locals 1

    .line 5519
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRequiresEscapingEncoder()Z
    .locals 1

    .line 5339
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5391
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5392
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5394
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 5395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2902
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 4

    .line 2911
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2912
    const/4 v0, 0x0

    .line 2913
    .local v0, "charset":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2914
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v2, v2, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2916
    :cond_0
    if-nez v0, :cond_1

    .line 2917
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v1, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2919
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "character_set_server"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    .line 2921
    .end local v0    # "charset":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerMajorVersion()I
    .locals 1

    .line 2925
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getServerMinorVersion()I
    .locals 1

    .line 2929
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerSubMinorVersion()I
    .locals 1

    .line 2933
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .line 2937
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getServerVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "variableName"    # Ljava/lang/String;

    .line 2941
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2942
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2945
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 2949
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionLockedCalendar()Ljava/util/Calendar;
    .locals 1

    .line 2954
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 2

    .line 5358
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5359
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    monitor-exit v0

    return v1

    .line 5360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    .line 5253
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

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

    .line 849
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2966
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2967
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_8

    .line 2968
    const/4 v1, 0x0

    .line 2969
    .local v1, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 2972
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_1
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;

    move-result-object v3

    move-object v1, v3

    .line 2973
    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    const/4 v6, 0x7

    const/16 v7, 0x14

    invoke-virtual {p0, v3, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4, v5, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "SELECT @@session.tx_isolation"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "SELECT @@session.transaction_isolation"

    .line 2976
    .local v3, "query":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    move-object v2, v4

    .line 2978
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2979
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2981
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 2982
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2984
    .local v5, "intTI":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 2985
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2986
    nop

    .line 3021
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "intTI":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 3000
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3003
    goto :goto_2

    .line 3001
    :catch_0
    move-exception v7

    .line 3005
    :goto_2
    const/4 v2, 0x0

    .line 3008
    :cond_2
    if-eqz v1, :cond_3

    .line 3010
    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3013
    goto :goto_3

    .line 3011
    :catch_1
    move-exception v7

    .line 3015
    :goto_3
    const/4 v1, 0x0

    :cond_3
    nop

    .line 2986
    .restart local v3    # "query":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "intTI":Ljava/lang/Integer;
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v6

    .line 2990
    .end local v5    # "intTI":Ljava/lang/Integer;
    :cond_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not map transaction isolation \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to a valid JDBC level."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    throw v5

    .line 2994
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    :cond_5
    const-string v4, "Could not retrieve transaction isolation level from server"

    const-string v5, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2998
    .end local v3    # "query":Ljava/lang/String;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v3

    .line 3015
    if-eqz v2, :cond_6

    .line 3000
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3003
    goto :goto_4

    .line 3001
    :catch_2
    move-exception v4

    .line 3005
    :goto_4
    const/4 v2, 0x0

    .line 3008
    :cond_6
    if-eqz v1, :cond_7

    .line 3010
    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3013
    goto :goto_5

    .line 3011
    :catch_3
    move-exception v4

    .line 3015
    :goto_5
    const/4 v1, 0x0

    :cond_7
    nop

    .line 2998
    :try_start_8
    throw v3

    .line 3020
    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    :cond_8
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    monitor-exit v0

    return v1

    .line 3021
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 2
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

    .line 3033
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3034
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3035
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 3038
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 3039
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 3043
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 3047
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    .line 3051
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3064
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 2
    .param p1, "c"    # Lcom/mysql/jdbc/Connection;

    .line 3068
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3077
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    return v0
.end method

.method public incrementNumberOfPreparedExecutes()V
    .locals 4

    .line 3081
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3082
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 3085
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 3087
    :cond_0
    return-void
.end method

.method public incrementNumberOfPrepares()V
    .locals 4

    .line 3090
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3091
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 3093
    :cond_0
    return-void
.end method

.method public incrementNumberOfResultSetsCreated()V
    .locals 4

    .line 3096
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 3099
    :cond_0
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

    .line 5292
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1, p0, v0}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 5293
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

    .line 5219
    if-nez p2, :cond_1

    .line 5222
    new-instance v0, Lcom/mysql/jdbc/CachedResultSetMetaData;

    invoke-direct {v0}, Lcom/mysql/jdbc/CachedResultSetMetaData;-><init>()V

    move-object p2, v0

    .line 5225
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->buildIndexMapping()V

    .line 5226
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5228
    instance-of v0, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz v0, :cond_0

    .line 5229
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {v0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 5232
    :cond_0
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5234
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5236
    :cond_1
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5237
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5239
    instance-of v0, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz v0, :cond_2

    .line 5240
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {v0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 5243
    :cond_2
    :goto_0
    return-void
.end method

.method public initializeSafeStatementInterceptors()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 826
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getStatementInterceptors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "MysqlIo.BadStatementInterceptor"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    .line 829
    .local v0, "unwrappedInterceptors":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Extension;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 831
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 832
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Extension;

    .line 835
    .local v2, "interceptor":Lcom/mysql/jdbc/Extension;
    instance-of v3, v2, Lcom/mysql/jdbc/StatementInterceptor;

    if-eqz v3, :cond_1

    .line 836
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 837
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;

    move-object v6, v2

    check-cast v6, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;

    move-object v6, v2

    check-cast v6, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    move-object v5, v2

    check-cast v5, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    .end local v2    # "interceptor":Lcom/mysql/jdbc/Extension;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 10
    .param p1, "millisOrNanos"    # J

    .line 5279
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5280
    const/4 v1, 0x0

    .line 5281
    .local v1, "res":Z
    :try_start_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v4, 0xe

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 5282
    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    mul-double v6, v6, v6

    long-to-double v8, v2

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-double v2, v2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 5284
    .local v2, "stddev":D
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double v8, v8, v2

    add-double/2addr v6, v8

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v1, v4

    .line 5286
    .end local v2    # "stddev":D
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionImpl;->reportQueryTime(J)V

    .line 5287
    monitor-exit v0

    return v1

    .line 5288
    .end local v1    # "res":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClientTzUTC()Z
    .locals 1

    .line 3440
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 3444
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    return v0
.end method

.method public isCursorFetchEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3448
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseCursorFetch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInGlobalTx()Z
    .locals 1

    .line 3452
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    .line 3463
    const/4 v0, 0x0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    .line 3473
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQueryCacheEnabled()Z
    .locals 2

    .line 3367
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "query_cache_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "query_cache_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadInfoMsgEnabled()Z
    .locals 1

    .line 3477
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v0

    return v0
.end method

.method public isReadOnly(Z)Z
    .locals 7
    .param p1, "useSessionStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3507
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez v0, :cond_b

    const/4 v0, 0x6

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3508
    const/4 v0, 0x0

    .line 3509
    .local v0, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 3513
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;

    move-result-object v3

    move-object v0, v3

    .line 3515
    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    const/16 v6, 0x14

    invoke-virtual {p0, v1, v3, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4, v5, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "select @@session.tx_read_only"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "select @@session.transaction_read_only"

    :goto_1
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v2, v1

    .line 3518
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3519
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 3551
    :cond_2
    if-eqz v2, :cond_3

    .line 3531
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3534
    goto :goto_2

    .line 3532
    :catch_0
    move-exception v1

    .line 3536
    :goto_2
    const/4 v2, 0x0

    .line 3539
    :cond_3
    if-eqz v0, :cond_4

    .line 3541
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3544
    goto :goto_3

    .line 3542
    :catch_1
    move-exception v1

    .line 3546
    :goto_3
    const/4 v0, 0x0

    :cond_4
    nop

    .line 3519
    return v5

    .line 3526
    :cond_5
    goto :goto_4

    .line 3529
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 3521
    :catch_2
    move-exception v1

    .line 3522
    .local v1, "ex1":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_8

    .line 3528
    .end local v1    # "ex1":Ljava/sql/SQLException;
    :goto_4
    nop

    .line 3546
    if-eqz v2, :cond_6

    .line 3531
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3534
    goto :goto_5

    .line 3532
    :catch_3
    move-exception v1

    .line 3536
    :goto_5
    const/4 v2, 0x0

    .line 3539
    :cond_6
    if-eqz v0, :cond_7

    .line 3541
    :try_start_5
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3544
    goto :goto_6

    .line 3542
    :catch_4
    move-exception v1

    .line 3546
    :goto_6
    const/4 v0, 0x0

    :cond_7
    nop

    .line 3548
    goto :goto_a

    .line 3523
    .restart local v1    # "ex1":Ljava/sql/SQLException;
    :cond_8
    :try_start_6
    const-string v3, "Could not retrieve transaction read-only status from server"

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local p1    # "useSessionStatus":Z
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3546
    .end local v1    # "ex1":Ljava/sql/SQLException;
    .restart local v0    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local p1    # "useSessionStatus":Z
    :goto_7
    if-eqz v2, :cond_9

    .line 3531
    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 3534
    goto :goto_8

    .line 3532
    :catch_5
    move-exception v3

    .line 3536
    :goto_8
    const/4 v2, 0x0

    .line 3539
    :cond_9
    if-eqz v0, :cond_a

    .line 3541
    :try_start_8
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 3544
    goto :goto_9

    .line 3542
    :catch_6
    move-exception v3

    .line 3546
    :goto_9
    const/4 v0, 0x0

    :cond_a
    nop

    .line 3529
    throw v1

    .line 3551
    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    :cond_b
    :goto_a
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    return v0
.end method

.method public isRunningOnJDK13()Z
    .locals 1

    .line 3555
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 10
    .param p1, "otherConnection"    # Lcom/mysql/jdbc/Connection;

    .line 3559
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3560
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3561
    :try_start_0
    monitor-exit v0

    return v1

    .line 3564
    :cond_0
    const/4 v2, 0x1

    .line 3566
    .local v2, "directCompare":Z
    move-object v3, p1

    check-cast v3, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v3, v3, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 3567
    .local v3, "otherHost":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 3568
    .local v4, "otherOrigDatabase":Ljava/lang/String;
    move-object v5, p1

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 3570
    .local v5, "otherCurrentCatalog":Ljava/lang/String;
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    .line 3571
    const/4 v2, 0x0

    goto :goto_1

    .line 3572
    :cond_1
    if-eqz v3, :cond_3

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 3574
    move-object v6, p1

    check-cast v6, Lcom/mysql/jdbc/ConnectionImpl;

    iget v6, v6, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    move v2, v6

    .line 3577
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 3578
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3579
    :cond_4
    const/4 v2, 0x0

    .line 3583
    :cond_5
    if-eqz v2, :cond_6

    .line 3584
    monitor-exit v0

    return v7

    .line 3588
    :cond_6
    move-object v6, p1

    check-cast v6, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object v6

    .line 3589
    .local v6, "otherResourceId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object v8

    .line 3591
    .local v8, "myResourceId":Ljava/lang/String;
    if-nez v6, :cond_7

    if-eqz v8, :cond_8

    .line 3592
    :cond_7
    invoke-static {v6, v8}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    move v2, v9

    .line 3594
    if-eqz v2, :cond_8

    .line 3595
    monitor-exit v0

    return v7

    .line 3599
    :cond_8
    monitor-exit v0

    return v1

    .line 3600
    .end local v2    # "directCompare":Z
    .end local v3    # "otherHost":Ljava/lang/String;
    .end local v4    # "otherOrigDatabase":Ljava/lang/String;
    .end local v5    # "otherCurrentCatalog":Ljava/lang/String;
    .end local v6    # "otherResourceId":Ljava/lang/String;
    .end local v8    # "myResourceId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isServerLocal()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5343
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5344
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    iget-object v1, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 5346
    .local v1, "factory":Lcom/mysql/jdbc/SocketFactory;
    instance-of v2, v1, Lcom/mysql/jdbc/SocketMetadata;

    if-eqz v2, :cond_0

    .line 5347
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/SocketMetadata;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/SocketMetadata;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 5349
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    const-string v3, "Connection.NoMetadataOnSocketFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 5350
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 5351
    .end local v1    # "factory":Lcom/mysql/jdbc/SocketFactory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isServerTruncatesFracSecs()Z
    .locals 1

    .line 5486
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTruncatesFracSecs:Z

    return v0
.end method

.method public isServerTzUTC()Z
    .locals 1

    .line 3604
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    return v0
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .line 3828
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3844
    if-nez p1, :cond_0

    .line 3845
    const/4 v0, 0x0

    return-object v0

    .line 3848
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 3850
    .local v0, "escapedSqlResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3851
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3854
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v1, v1, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    return-object v1
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    .line 3875
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    return v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3885
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 3886
    return-void
.end method

.method public pingInternal(ZI)V
    .locals 11
    .param p1, "checkForClosedConnection"    # Z
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3889
    if-eqz p1, :cond_0

    .line 3890
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 3893
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingSecondsLifetime()I

    move-result v0

    int-to-long v0, v0

    .line 3894
    .local v0, "pingMillisLifetime":J
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingMaxOperations()I

    move-result v2

    .line 3896
    .local v2, "pingMaxOperations":I
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2

    :cond_1
    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getCommandCount()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 3899
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->close()V

    .line 3901
    const-string v3, "Connection.exceededConnectionLifetime"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "08S01"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 3905
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3906
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3914
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3933
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3934
    const/4 v0, 0x0

    .line 3936
    .local v0, "cStmt":Lcom/mysql/jdbc/CallableStatement;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3938
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v0

    goto :goto_1

    .line 3940
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1

    .line 3941
    :try_start_0
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    .local v2, "key":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 3945
    .local v3, "cachedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    if-eqz v3, :cond_1

    .line 3946
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 3948
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v4

    move-object v0, v4

    .line 3950
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3951
    :try_start_1
    iget-object v4, v0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    move-object v3, v4

    .line 3952
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3954
    :try_start_2
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v4, v2, v3}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3956
    .end local v2    # "key":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    .end local v3    # "cachedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3959
    :goto_1
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setResultSetType(I)V

    .line 3960
    invoke-virtual {v0, p3}, Lcom/mysql/jdbc/CallableStatement;->setResultSetConcurrency(I)V

    .line 3962
    return-object v0

    .line 3952
    .restart local v2    # "key":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    .restart local v3    # "cachedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "cStmt":Lcom/mysql/jdbc/CallableStatement;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "resultSetType":I
    .end local p3    # "resultSetConcurrency":I
    :try_start_4
    throw v4

    .line 3956
    .end local v2    # "key":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    .end local v3    # "cachedParamInfo":Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
    .restart local v0    # "cStmt":Lcom/mysql/jdbc/CallableStatement;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "resultSetType":I
    .restart local p3    # "resultSetConcurrency":I
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 3965
    .end local v0    # "cStmt":Lcom/mysql/jdbc/CallableStatement;
    :cond_2
    const-string v0, "Callable statements not supported."

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3972
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3973
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 3974
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3979
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement;

    .line 3981
    .local v0, "cStmt":Lcom/mysql/jdbc/CallableStatement;
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4006
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4013
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 4015
    .local v0, "pStmt":Ljava/sql/PreparedStatement;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4017
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4036
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4037
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4042
    const/4 v1, 0x0

    .line 4044
    .local v1, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    const/4 v2, 0x1

    .line 4046
    .local v2, "canServerPrepare":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 4048
    .local v3, "nativeSql":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4049
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatement(Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    .line 4052
    :cond_1
    iget-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 4053
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4054
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4055
    :try_start_1
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v7, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {v7, v8, p1}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/PreparedStatement;

    move-object v1, v6

    .line 4057
    if-eqz v1, :cond_2

    .line 4058
    move-object v6, v1

    check-cast v6, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 4059
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4062
    :cond_2
    if-nez v1, :cond_5

    .line 4064
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v6

    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v6, v3, v7, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v6

    move-object v1, v6

    .line 4066
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 4067
    move-object v6, v1

    check-cast v6, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4070
    :cond_3
    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4071
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4083
    goto :goto_1

    .line 4072
    :catch_0
    move-exception v6

    .line 4074
    .local v6, "sqlEx":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4075
    invoke-virtual {p0, v3, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/PreparedStatement;

    move-object v1, v5

    .line 4077
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 4078
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, p1, v7}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4081
    :cond_4
    nop

    .end local v1    # "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    .end local v2    # "canServerPrepare":Z
    .end local v3    # "nativeSql":Ljava/lang/String;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "resultSetType":I
    .end local p3    # "resultSetConcurrency":I
    throw v6

    .line 4085
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    .restart local v2    # "canServerPrepare":Z
    .restart local v3    # "nativeSql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "resultSetType":I
    .restart local p3    # "resultSetConcurrency":I
    :cond_5
    :goto_1
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "resultSetType":I
    .end local p3    # "resultSetConcurrency":I
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4088
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "resultSetType":I
    .restart local p3    # "resultSetConcurrency":I
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v4

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v4, v3, v6, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v4

    move-object v1, v4

    .line 4090
    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4091
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4099
    :goto_2
    goto :goto_3

    .line 4092
    :catch_1
    move-exception v4

    .line 4094
    .local v4, "sqlEx":Ljava/sql/SQLException;
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4095
    invoke-virtual {p0, v3, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/PreparedStatement;

    move-object v1, v5

    goto :goto_2

    .line 4097
    :cond_7
    nop

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "resultSetType":I
    .end local p3    # "resultSetConcurrency":I
    throw v4

    .line 4102
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "resultSetType":I
    .restart local p3    # "resultSetConcurrency":I
    :cond_8
    invoke-virtual {p0, v3, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    move-object v1, v4

    .line 4105
    :goto_3
    monitor-exit v0

    return-object v1

    .line 4106
    .end local v1    # "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    .end local v2    # "canServerPrepare":Z
    .end local v3    # "nativeSql":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4113
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4114
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 4115
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4120
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4127
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 4129
    .local v0, "pStmt":Ljava/sql/PreparedStatement;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4131
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4138
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 4140
    .local v0, "pStmt":Ljava/sql/PreparedStatement;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4142
    return-object v0
.end method

.method public realClose(ZZZLjava/lang/Throwable;)V
    .locals 15
    .param p1, "calledExplicitly"    # Z
    .param p2, "issueRollback"    # Z
    .param p3, "skipLocalTeardown"    # Z
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4156
    move-object v10, p0

    const/4 v1, 0x0

    .line 4158
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4159
    return-void

    .line 4162
    :cond_0
    move-object/from16 v11, p4

    iput-object v11, v10, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    .line 4165
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez p3, :cond_5

    .line 4166
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 4168
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4171
    goto :goto_0

    .line 4169
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4170
    .local v0, "ex":Ljava/sql/SQLException;
    move-object v1, v0

    move-object v14, v1

    goto :goto_1

    .line 4174
    .end local v0    # "ex":Ljava/sql/SQLException;
    :cond_1
    :goto_0
    move-object v14, v1

    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .local v14, "sqlEx":Ljava/sql/SQLException;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerfMetrics()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4175
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    .line 4178
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4179
    if-nez p1, :cond_3

    .line 4180
    const-string v9, "Connection implicitly closed by Driver. You should call Connection.close() from your code to free resources more efficiently and avoid resource leaks."

    .line 4182
    .local v9, "message":Ljava/lang/String;
    iget-object v1, v10, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    move-object v3, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 4185
    .end local v9    # "message":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v10, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 4186
    const-string v9, "Connection lifetime of < .5 seconds. You might be un-necessarily creating short-lived connections and should investigate connection pooling to be more efficient."

    .line 4188
    .restart local v9    # "message":Ljava/lang/String;
    iget-object v1, v10, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    move-object v3, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4193
    .end local v9    # "message":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->closeAllOpenStatements()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4196
    move-object v1, v14

    goto :goto_2

    .line 4194
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 4195
    .restart local v0    # "ex":Ljava/sql/SQLException;
    nop

    .end local v14    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    nop

    .line 4198
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_2
    :try_start_4
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_6

    .line 4200
    :try_start_5
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->quit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 4201
    :catch_2
    move-exception v0

    .line 4202
    :goto_3
    goto :goto_4

    .line 4219
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v14    # "sqlEx":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_6

    .line 4206
    .end local v14    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_5
    :try_start_6
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 4209
    :cond_6
    :goto_4
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 4210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, v10, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 4211
    iget-object v2, v10, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v2}, Lcom/mysql/jdbc/StatementInterceptorV2;->destroy()V

    .line 4210
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4215
    .end local v0    # "i":I
    :cond_7
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-eqz v0, :cond_8

    .line 4216
    invoke-interface {v0}, Lcom/mysql/jdbc/ExceptionInterceptor;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4218
    :cond_8
    nop

    .line 4242
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4220
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_9

    .line 4221
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    .line 4222
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 4224
    :cond_9
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4225
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4226
    invoke-static {p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4227
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 4229
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4230
    :try_start_7
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 4231
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4233
    :cond_a
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4235
    iput-boolean v12, v10, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 4236
    nop

    .line 4238
    if-nez v1, :cond_b

    .line 4242
    return-void

    .line 4239
    :cond_b
    throw v1

    .line 4233
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 4219
    :catchall_2
    move-exception v0

    .line 4235
    :goto_6
    iget-object v2, v10, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4220
    iget-object v2, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v2, :cond_c

    .line 4221
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    .line 4222
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 4224
    :cond_c
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4225
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4226
    invoke-static {p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4227
    iput-object v13, v10, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 4229
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4230
    :try_start_9
    iget-object v3, v10, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v3, :cond_d

    .line 4231
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 4233
    :cond_d
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4235
    iput-boolean v12, v10, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 4219
    throw v0

    .line 4233
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 6
    .param p1, "pstmt"    # Lcom/mysql/jdbc/ServerPreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4245
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4246
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4247
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4248
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v3, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v4, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v5, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4249
    .local v2, "oldServerPrepStmt":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 4250
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4251
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 4252
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 4254
    .end local v2    # "oldServerPrepStmt":Ljava/lang/Object;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "pstmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    :try_start_2
    throw v2

    .line 4256
    .restart local p1    # "pstmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 4257
    return-void

    .line 4256
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public registerQueryExecutionTime(J)V
    .locals 5
    .param p1, "queryTimeMs"    # J

    .line 4273
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 4274
    iput-wide p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 4276
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionPerformanceHistogram()V

    .line 4279
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->addToPerformanceHistogram(JI)V

    .line 4281
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_2

    .line 4282
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 4285
    :cond_2
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 4287
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 4288
    return-void
.end method

.method public registerStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .param p1, "stmt"    # Lcom/mysql/jdbc/Statement;

    .line 4297
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 4298
    return-void
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 0
    .param p1, "arg0"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4305
    return-void
.end method

.method protected reportMetricsIfNeeded()V
    .locals 5

    .line 4457
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReportMetricsIntervalMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4459
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    .line 4462
    :cond_0
    return-void
.end method

.method public reportNumberOfTablesAccessed(I)V
    .locals 5
    .param p1, "numTablesAccessed"    # I

    .line 4465
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4466
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 4469
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4470
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 4472
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionTablesAccessedHistogram()V

    .line 4475
    :cond_1
    int-to-long v0, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->addToTablesAccessedHistogram(JI)V

    .line 4476
    return-void
.end method

.method public reportQueryTime(J)V
    .locals 9
    .param p1, "millisOrNanos"    # J

    .line 5270
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5271
    :try_start_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    .line 5272
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    long-to-double v7, p1

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    .line 5273
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    mul-long v7, p1, p1

    long-to-double v7, v7

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    .line 5274
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    sub-long v3, v1, v3

    long-to-double v3, v3

    mul-double v5, v5, v3

    long-to-double v3, p1

    add-double/2addr v5, v3

    long-to-double v1, v1

    div-double/2addr v5, v1

    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    .line 5275
    monitor-exit v0

    .line 5276
    return-void

    .line 5275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetServerState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4487
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4488
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 4490
    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4502
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4503
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4506
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4507
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$5;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$5;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    move-object v1, v2

    .line 4517
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4519
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 4520
    nop

    .line 4550
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4520
    .restart local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 4524
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4525
    :cond_1
    const-string v1, "Can\'t call rollback when autocommit=true"

    const-string v2, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4527
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4529
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollbackNoChecks()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4537
    goto :goto_1

    .line 4530
    :catch_0
    move-exception v1

    .line 4532
    .local v1, "sqlEx":Ljava/sql/SQLException;
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v3, 0x4ac

    if-ne v2, v3, :cond_3

    .line 4533
    nop

    .line 4550
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4533
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    .line 4535
    :cond_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4539
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_4
    :goto_1
    nop

    .line 4550
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4548
    nop

    .line 4549
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4550
    return-void

    .line 4547
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4539
    :catch_1
    move-exception v1

    .line 4540
    .local v1, "sqlException":Ljava/sql/SQLException;
    :try_start_9
    const-string v2, "08S01"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4541
    const-string v2, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v3, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 4545
    :cond_5
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4550
    .end local v1    # "sqlException":Ljava/sql/SQLException;
    :goto_2
    :try_start_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4547
    throw v1

    .line 4549
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 10
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4557
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4558
    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4625
    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v1

    .line 4559
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4562
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4563
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$6;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1, p1}, Lcom/mysql/jdbc/ConnectionImpl$6;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/sql/Savepoint;)V

    move-object v1, v2

    .line 4573
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4575
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    .line 4576
    nop

    .line 4628
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4576
    .restart local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 4580
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROLLBACK TO SAVEPOINT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4581
    .local v1, "rollbackQuery":Ljava/lang/StringBuilder;
    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4582
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4585
    const/4 v2, 0x0

    .line 4588
    .local v2, "stmt":Ljava/sql/Statement;
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    move-object v2, v3

    .line 4590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4591
    nop

    .line 4628
    :try_start_5
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4620
    nop

    .line 4621
    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    nop

    .line 4628
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4623
    nop

    .line 4622
    nop

    .line 4627
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4628
    return-void

    .line 4619
    .restart local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 4591
    :catch_0
    move-exception v3

    .line 4592
    .local v3, "sqlEx":Ljava/sql/SQLException;
    :try_start_7
    invoke-virtual {v3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v4

    .line 4594
    .local v4, "errno":I
    const/16 v5, 0x49d

    if-ne v4, v5, :cond_4

    .line 4595
    invoke-virtual {v3}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 4597
    .local v5, "msg":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 4598
    const-string v6, "153"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4600
    .local v6, "indexOfError153":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 4601
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Savepoint \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v7, v8, v4, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v7

    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v7

    .line 4608
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "indexOfError153":I
    .restart local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x4ac

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 4609
    :cond_5
    nop

    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v3

    .line 4612
    .restart local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :cond_6
    :goto_2
    const-string v5, "08S01"

    invoke-virtual {v3}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4613
    const-string v5, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v6, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v5

    .line 4617
    .restart local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :cond_7
    nop

    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4628
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    .end local v4    # "errno":I
    .restart local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :goto_3
    :try_start_8
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4619
    nop

    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4622
    .end local v1    # "rollbackQuery":Ljava/lang/StringBuilder;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :catchall_1
    move-exception v1

    .line 4628
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4622
    nop

    .end local p1    # "savepoint":Ljava/sql/Savepoint;
    throw v1

    .line 4627
    .restart local p1    # "savepoint":Ljava/sql/Savepoint;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4644
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4646
    .local v0, "nativeSql":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3eb

    const/16 v4, 0x3ef

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v1

    return-object v1
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4654
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4656
    .local v0, "nativeSql":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3eb

    const/16 v4, 0x3ef

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v1

    .line 4659
    .local v1, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4661
    return-object v1
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4668
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4670
    .local v0, "nativeSql":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v1

    return-object v1
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "resultSetType"    # I
    .param p3, "resultSetConcurrency"    # I
    .param p4, "resultSetHoldability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4678
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4679
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 4680
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4685
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyIndexes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4693
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 4695
    .local v0, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4697
    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "autoGenKeyColNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4704
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 4706
    .local v0, "pStmt":Lcom/mysql/jdbc/PreparedStatement;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4708
    return-object v0
.end method

.method public serverSupportsConvertFn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4712
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public setAutoCommit(Z)V
    .locals 14
    .param p1, "autoCommitFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4734
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4735
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4737
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4738
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$7;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1, p1}, Lcom/mysql/jdbc/ConnectionImpl$7;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Z)V

    move-object v1, v2

    .line 4748
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4750
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4751
    monitor-exit v0

    return-void

    .line 4755
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4756
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4760
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v2, :cond_6

    .line 4762
    const/4 v2, 0x1

    .line 4764
    .local v2, "needsSetOnServer":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-ne v3, p1, :cond_2

    .line 4765
    const/4 v2, 0x0

    goto :goto_0

    .line 4766
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4767
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v3

    move v2, v3

    .line 4773
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 4775
    if-eqz v2, :cond_5

    .line 4776
    const/4 v4, 0x0

    if-eqz p1, :cond_4

    const-string v3, "SET autocommit=1"

    goto :goto_1

    :cond_4
    const-string v3, "SET autocommit=0"

    :goto_1
    move-object v5, v3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4780
    .end local v2    # "needsSetOnServer":Z
    :cond_5
    goto :goto_3

    .line 4781
    :cond_6
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 4782
    :cond_7
    const-string v2, "MySQL Versions Older than 3.23.15 do not support transactions"

    const-string v3, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "autoCommitFlag":Z
    throw v2

    .line 4786
    .restart local p1    # "autoCommitFlag":Z
    :cond_8
    :goto_2
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4788
    :goto_3
    nop

    .line 4795
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4790
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    :cond_9
    nop

    .line 4792
    nop

    .line 4794
    monitor-exit v0

    return-void

    .line 4789
    :catchall_0
    move-exception v2

    .line 4790
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    .line 4789
    :cond_a
    nop

    .end local p1    # "autoCommitFlag":Z
    throw v2

    .line 4795
    .restart local p1    # "autoCommitFlag":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4812
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 4813
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4815
    if-eqz v13, :cond_5

    .line 4819
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4820
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$8;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v12, v0, v13}, Lcom/mysql/jdbc/ConnectionImpl$8;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/lang/String;)V

    move-object v0, v1

    .line 4830
    .local v0, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4832
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4833
    monitor-exit v14

    return-void

    .line 4837
    .end local v0    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4838
    iget-boolean v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    if-eqz v0, :cond_1

    .line 4839
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4840
    monitor-exit v14

    return-void

    .line 4843
    :cond_1
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4844
    monitor-exit v14

    return-void

    .line 4849
    :cond_2
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    .line 4851
    .local v0, "quotedId":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4852
    :cond_3
    const-string v1, ""

    move-object v0, v1

    .line 4855
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    .line 4856
    .local v15, "query":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v1

    invoke-static {v13, v0, v1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4858
    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4860
    iput-object v13, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 4861
    .end local v0    # "quotedId":Ljava/lang/String;
    .end local v15    # "query":Ljava/lang/StringBuilder;
    monitor-exit v14

    .line 4862
    return-void

    .line 4816
    :cond_5
    const-string v0, "Catalog can not be null"

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "catalog":Ljava/lang/String;
    throw v0

    .line 4861
    .restart local p1    # "catalog":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailedOver(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 4870
    return-void
.end method

.method public setHoldability(I)V
    .locals 0
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4877
    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 4880
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 4881
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "milliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5453
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5454
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 5456
    .local v1, "sec":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 5457
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 5460
    :cond_0
    if-eqz p1, :cond_1

    .line 5464
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5465
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-direct {v2, p0, v3, p2}, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Lcom/mysql/jdbc/MysqlIO;I)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5466
    .end local v1    # "sec":Ljava/lang/SecurityManager;
    monitor-exit v0

    .line 5467
    return-void

    .line 5461
    .restart local v1    # "sec":Ljava/lang/SecurityManager;
    :cond_1
    const-string v2, "Executor can not be null"

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "milliseconds":I
    throw v2

    .line 5466
    .end local v1    # "sec":Ljava/lang/SecurityManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "milliseconds":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4891
    return-void
.end method

.method public setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    .locals 0
    .param p1, "h"    # Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 5482
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 5483
    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "proxy"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 105
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 106
    instance-of v0, p1, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 107
    return-void
.end method

.method public setReadInfoMsgEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 4894
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 4895
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnlyFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4909
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4911
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnlyInternal(Z)V

    .line 4912
    return-void
.end method

.method public setReadOnlyInternal(Z)V
    .locals 12
    .param p1, "readOnlyFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4916
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4917
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    if-eq p1, v0, :cond_2

    .line 4918
    :cond_0
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set session transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "read only"

    goto :goto_0

    :cond_1
    const-string v1, "read write"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4923
    :cond_2
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 4924
    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4930
    new-instance v0, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4932
    .local v0, "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    .line 4934
    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4967
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4968
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4970
    .local v1, "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    .line 4972
    monitor-exit v0

    return-object v1

    .line 4973
    .end local v1    # "savepoint":Lcom/mysql/jdbc/MysqlSavepoint;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 2
    .param p1, "schema"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5384
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5385
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5386
    monitor-exit v0

    .line 5387
    return-void

    .line 5386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSessionMaxRows(I)V
    .locals 13
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5372
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5373
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    if-eq v1, p1, :cond_1

    .line 5374
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 5375
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET SQL_SELECT_LIMIT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const-string v2, "DEFAULT"

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5378
    :cond_1
    monitor-exit v0

    .line 5379
    return-void

    .line 5378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setStatementComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .line 5266
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 5267
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 14
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5014
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5015
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5017
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v1, :cond_5

    .line 5018
    const/4 v1, 0x0

    .line 5020
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5022
    .local v2, "shouldSendSet":Z
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAlwaysSendSetIsolation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5023
    const/4 v2, 0x1

    goto :goto_0

    .line 5025
    :cond_0
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq p1, v3, :cond_1

    .line 5026
    const/4 v2, 0x1

    .line 5030
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5031
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq v3, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 5034
    :cond_3
    if-eqz v2, :cond_4

    .line 5035
    packed-switch p1, :pswitch_data_0

    .line 5060
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5055
    :pswitch_1
    const-string v3, "SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE"

    move-object v1, v3

    .line 5057
    goto :goto_2

    .line 5050
    :pswitch_2
    const-string v3, "SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ"

    move-object v1, v3

    .line 5052
    goto :goto_2

    .line 5040
    :pswitch_3
    const-string v3, "SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED"

    move-object v1, v3

    .line 5042
    goto :goto_2

    .line 5045
    :pswitch_4
    const-string v3, "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED"

    move-object v1, v3

    .line 5047
    nop

    .line 5064
    :goto_2
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-virtual/range {v3 .. v13}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5066
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    goto :goto_4

    .line 5037
    :pswitch_5
    const-string v3, "Transaction isolation level NONE not supported by MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local p1    # "level":I
    throw v3

    .line 5060
    .restart local p1    # "level":I
    :goto_3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported transaction isolation level \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local p1    # "level":I
    throw v3

    .line 5068
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "shouldSendSet":Z
    .restart local p1    # "level":I
    :cond_4
    :goto_4
    nop

    .line 5072
    monitor-exit v0

    .line 5073
    return-void

    .line 5069
    :cond_5
    const-string v1, "Transaction Isolation Levels are not supported on MySQL versions older than 3.23.36."

    const-string v2, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "level":I
    throw v1

    .line 5072
    .restart local p1    # "level":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
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

    .line 5085
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5086
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 5087
    monitor-exit v0

    .line 5088
    return-void

    .line 5087
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownServer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5127
    const/4 v0, 0x5

    const/4 v1, 0x7

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5128
    const/4 v2, 0x0

    const-string v3, "SHUTDOWN"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0

    .line 5130
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5139
    :goto_0
    nop

    .line 5140
    return-void

    .line 5132
    :catch_0
    move-exception v0

    .line 5133
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Connection.UnhandledExceptionDuringShutdown"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5136
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5138
    throw v1
.end method

.method public storesLowerCaseTableName()Z
    .locals 1

    .line 5328
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    return v0
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .line 5143
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .line 5147
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    .line 5151
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    return v0
.end method

.method public throwConnectionClosedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1182
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "No operations allowed after connection closed."

    const-string v2, "08003"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1185
    .local v0, "ex":Ljava/sql/SQLException;
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1189
    :cond_0
    throw v0
.end method

.method public transactionBegun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5296
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5297
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5298
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$9;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$9;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    move-object v1, v2

    .line 5306
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5308
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    monitor-exit v0

    .line 5309
    return-void

    .line 5308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transactionCompleted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5312
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5313
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5314
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$10;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$10;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    move-object v1, v2

    .line 5322
    .local v1, "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5324
    .end local v1    # "iter":Lcom/mysql/jdbc/IterateBlock;, "Lcom/mysql/jdbc/IterateBlock<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    monitor-exit v0

    .line 5325
    return-void

    .line 5324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unSafeStatementInterceptors()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 810
    .local v0, "unSafedStatementInterceptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/StatementInterceptorV2;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 811
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    .line 813
    .local v2, "wrappedInterceptor":Lcom/mysql/jdbc/NoSubInterceptorWrapper;
    invoke-virtual {v2}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->getUnderlyingInterceptor()Lcom/mysql/jdbc/StatementInterceptorV2;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .end local v2    # "wrappedInterceptor":Lcom/mysql/jdbc/NoSubInterceptorWrapper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 818
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 821
    :cond_1
    return-void
.end method

.method public unregisterStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .param p1, "stmt"    # Lcom/mysql/jdbc/Statement;

    .line 5161
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5162
    return-void
.end method

.method public useAnsiQuotedIdentifiers()Z
    .locals 2

    .line 5165
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5166
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    monitor-exit v0

    return v1

    .line 5167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 5171
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5173
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method
