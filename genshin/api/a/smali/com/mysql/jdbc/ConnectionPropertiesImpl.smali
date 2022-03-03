.class public Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/mysql/jdbc/ConnectionProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;
    }
.end annotation


# static fields
.field private static final CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

.field private static final DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

.field private static final HA_CATEGORY:Ljava/lang/String;

.field private static final MISC_CATEGORY:Ljava/lang/String;

.field private static final NETWORK_CATEGORY:Ljava/lang/String;

.field private static final PERFORMANCE_CATEGORY:Ljava/lang/String;

.field private static final PROPERTY_CATEGORIES:[Ljava/lang/String;

.field private static final PROPERTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURITY_CATEGORY:Ljava/lang/String;

.field private static final STANDARD_LOGGER_NAME:Ljava/lang/String;

.field protected static final ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL:Ljava/lang/String; = "convertToNull"

.field protected static final ZERO_DATETIME_BEHAVIOR_EXCEPTION:Ljava/lang/String; = "exception"

.field protected static final ZERO_DATETIME_BEHAVIOR_ROUND:Ljava/lang/String; = "round"

.field private static final serialVersionUID:J = 0x3b16c01963dec004L


# instance fields
.field private allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScriptAsBoolean:Z

.field private autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPoolsAsBoolean:Z

.field private autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheResultSetMetaDataAsBoolean:Z

.field private cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private characterEncodingAsString:Ljava/lang/String;

.field protected characterEncodingIsAliasForSjis:Z

.field private characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private highAvailabilityAsBoolean:Z

.field private holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncationForReads:Z

.field protected largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private maintainTimeStatsAsBoolean:Z

.field private maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRowsAsInt:I

.field private metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQLAsBoolean:Z

.field private profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectTxAtEndAsBoolean:Z

.field private relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

.field private socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field protected traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8BehaviorAsBoolean:Z

.field private useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicodeAsBoolean:Z

.field private useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUsageAdvisorAsBoolean:Z

.field private utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 600
    const-string v0, "ConnectionProperties.categoryConnectionAuthentication"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    .line 602
    const-string v1, "ConnectionProperties.categoryNetworking"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    .line 604
    const-string v2, "ConnectionProperties.categoryDebuggingProfiling"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    .line 606
    const-string v3, "ConnectionProperties.categorryHA"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    .line 608
    const-string v4, "ConnectionProperties.categoryMisc"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    .line 610
    const-string v5, "ConnectionProperties.categoryPerformance"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    .line 612
    const-string v6, "ConnectionProperties.categorySecurity"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    .line 614
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object v2, v7, v0

    const/4 v0, 0x6

    aput-object v4, v7, v0

    sput-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    .line 622
    const-class v0, Lcom/mysql/jdbc/log/StandardLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    .line 632
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 634
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 635
    const-class v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v1    # "i":I
    :cond_1
    nop

    .line 645
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 641
    .local v1, "rtEx":Ljava/lang/RuntimeException;
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 643
    throw v1
.end method

.method public constructor <init>()V
    .locals 36

    .line 46
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 671
    new-instance v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v1, "ConnectionProperties.loadDataLocal"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v16, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const-string v2, "allowLoadLocalInfile"

    const/4 v3, 0x0

    const-string v5, "3.0.3"

    const v7, 0x7fffffff

    move-object v1, v8

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v8, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 674
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowMultiQueries"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "allowMultiQueries"

    const/4 v11, 0x0

    const-string v13, "3.1.1"

    const/4 v15, 0x1

    move-object v9, v1

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 677
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowNANandINF"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const-string v3, "allowNanAndInf"

    const/4 v4, 0x0

    const-string v6, "3.1.5"

    const/high16 v8, -0x80000000

    move-object v2, v1

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 680
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowUrlInLoadLocal"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "allowUrlInLocalInfile"

    const-string v13, "3.1.4"

    const v15, 0x7fffffff

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 683
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.alwaysSendSetIsolation"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v18, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const-string v3, "alwaysSendSetIsolation"

    const/4 v4, 0x1

    const-string v6, "3.1.7"

    const v8, 0x7fffffff

    move-object v2, v1

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 686
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoClosePstmtStreams"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "autoClosePStmtStreams"

    const/4 v8, 0x0

    const-string v10, "3.1.12"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 689
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.replicationConnectionGroup"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const-string v20, "replicationConnectionGroup"

    const/16 v21, 0x0

    const-string v23, "5.1.27"

    const/high16 v25, -0x80000000

    move-object/from16 v19, v1

    move-object/from16 v24, v26

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 692
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowMasterDownConnections"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "allowMasterDownConnections"

    const/4 v4, 0x0

    const-string v6, "5.1.27"

    const v8, 0x7fffffff

    move-object v2, v1

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 695
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowSlaveDownConnections"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "allowSlaveDownConnections"

    const-string v6, "5.1.38"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 698
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.readFromMasterWhenNoSlaves"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "readFromMasterWhenNoSlaves"

    const-string v6, "5.1.38"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 701
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoDeserialize"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "autoDeserialize"

    const/4 v8, 0x0

    const-string v10, "3.1.5"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 704
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoGenerateTestcaseScript"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v27, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const-string v20, "autoGenerateTestcaseScript"

    const/16 v21, 0x0

    const-string v23, "3.1.9"

    move-object/from16 v19, v1

    move-object/from16 v24, v27

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 707
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 709
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoReconnect"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "autoReconnect"

    const-string v6, "1.1"

    move-object v2, v9

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 712
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoReconnectForPools"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "autoReconnectForPools"

    const-string v6, "3.1.3"

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 715
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 717
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v3, "ConnectionProperties.blobSendChunkSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "blobSendChunkSize"

    const/high16 v8, 0x100000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, "3.1.9"

    const/high16 v14, -0x80000000

    move-object v6, v2

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 720
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.autoSlowLog"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "autoSlowLog"

    const/4 v4, 0x1

    const-string v6, "5.1.4"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 723
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v7, "blobsAreStrings"

    const/4 v8, 0x0

    const-string v9, "Should the driver always treat BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v10, "5.0.8"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 727
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v7, "functionsNeverReturnBlobs"

    const-string v9, "Should the driver always treat data from functions returning BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v10, "5.0.8"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 732
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.cacheCallableStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "cacheCallableStmts"

    const-string v10, "3.1.2"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 735
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.cachePrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "cachePrepStmts"

    const-string v10, "3.0.10"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 738
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.cacheRSMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "cacheResultSetMetadata"

    const-string v10, "3.1.1"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 743
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-class v3, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v3, "ConnectionProperties.serverConfigCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "serverConfigCacheFactory"

    const-string v10, "5.1.1"

    const/16 v12, 0xc

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 747
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.cacheServerConfiguration"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "cacheServerConfiguration"

    const/4 v8, 0x0

    const-string v10, "3.1.5"

    const/high16 v12, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 750
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.callableStmtCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "callableStmtCacheSize"

    const/16 v8, 0x64

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "3.1.2"

    const/4 v14, 0x5

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 753
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.capitalizeTypeNames"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "capitalizeTypeNames"

    const/4 v8, 0x1

    const-string v10, "2.0.7"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 756
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.characterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "characterEncoding"

    const/4 v8, 0x0

    const-string v10, "1.1g"

    const/4 v12, 0x5

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 759
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 761
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingIsAliasForSjis:Z

    .line 763
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.characterSetResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "characterSetResults"

    const-string v10, "3.0.13"

    const/4 v12, 0x6

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 766
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.connectionAttributes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "connectionAttributes"

    const-string v10, "5.1.25"

    const/4 v12, 0x7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 769
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.clientInfoProvider"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "clientInfoProvider"

    const-string v4, "com.mysql.jdbc.JDBC4CommentClientInfoProvider"

    const-string v6, "5.1.0"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 772
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.clobberStreamingResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "clobberStreamingResults"

    const/4 v8, 0x0

    const-string v10, "3.0.9"

    const/high16 v12, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 775
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.clobCharacterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "clobCharacterEncoding"

    const/4 v8, 0x0

    const-string v10, "5.0.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 778
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.compensateOnDuplicateKeyUpdateCounts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "compensateOnDuplicateKeyUpdateCounts"

    const/4 v8, 0x0

    const-string v10, "5.1.7"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 780
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.connectionCollation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "connectionCollation"

    const/4 v8, 0x0

    const-string v10, "3.0.13"

    const/4 v12, 0x7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 783
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.connectionLifecycleInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v28, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const-string v20, "connectionLifecycleInterceptors"

    const/16 v21, 0x0

    const-string v23, "5.1.4"

    const v25, 0x7fffffff

    move-object/from16 v19, v2

    move-object/from16 v24, v28

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 786
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.connectTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "connectTimeout"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const-string v9, "3.0.1"

    const/16 v11, 0x9

    move-object v3, v2

    move-object/from16 v10, v28

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 789
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.continueBatchOnError"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "continueBatchOnError"

    const/4 v8, 0x1

    const-string v10, "3.0.3"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 792
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.createDatabaseIfNotExist"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "createDatabaseIfNotExist"

    const/4 v8, 0x0

    const-string v10, "3.1.9"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 795
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.defaultFetchSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "defaultFetchSize"

    const-string v10, "3.1.9"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 800
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useServerPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useServerPrepStmts"

    const-string v10, "3.1.0"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 803
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.dontTrackOpenResources"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "dontTrackOpenResources"

    const-string v10, "3.1.7"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 806
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.dumpQueriesOnException"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "dumpQueriesOnException"

    const/4 v4, 0x0

    const-string v6, "3.1.3"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 809
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.dynamicCalendars"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "dynamicCalendars"

    const/4 v8, 0x0

    const-string v10, "3.1.5"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 812
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.eliseSetAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "elideSetAutoCommits"

    const-string v10, "3.1.3"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 815
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.emptyStringsConvertToZero"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "emptyStringsConvertToZero"

    const/4 v8, 0x1

    const-string v10, "3.1.8"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 818
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.emulateLocators"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "emulateLocators"

    const/4 v8, 0x0

    const-string v10, "3.1.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 821
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.emulateUnsupportedPstmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "emulateUnsupportedPstmts"

    const/4 v8, 0x1

    const-string v10, "3.1.7"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 824
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.enablePacketDebug"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "enablePacketDebug"

    const-string v6, "3.1.3"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 827
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.enableQueryTimeouts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "enableQueryTimeouts"

    const/4 v8, 0x1

    const-string v10, "5.0.6"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 830
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.explainSlowQueries"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "explainSlowQueries"

    const-string v6, "3.1.2"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 833
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.exceptionInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "exceptionInterceptors"

    const/4 v8, 0x0

    const-string v10, "5.1.8"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 837
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.failoverReadOnly"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "failOverReadOnly"

    const/4 v4, 0x1

    const-string v6, "3.0.12"

    const/4 v8, 0x2

    move-object v2, v9

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 840
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.gatherPerfMetrics"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "gatherPerfMetrics"

    const/4 v4, 0x0

    const-string v6, "3.1.2"

    const/4 v8, 0x1

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 843
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.generateSimpleParameterMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "generateSimpleParameterMetadata"

    const/4 v8, 0x0

    const-string v10, "5.0.5"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 846
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 848
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.holdRSOpenOverStmtClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "holdResultsOpenOverStatementClose"

    const-string v10, "3.1.7"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 851
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.includeInnodbStatusInDeadlockExceptions"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "includeInnodbStatusInDeadlockExceptions"

    const-string v6, "5.0.7"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 854
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.includeThreadDumpInDeadlockExceptions"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "includeThreadDumpInDeadlockExceptions"

    const-string v6, "5.1.15"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 857
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.includeThreadNamesAsStatementComment"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "includeThreadNamesAsStatementComment"

    const-string v6, "5.1.15"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 860
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.ignoreNonTxTables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "ignoreNonTxTables"

    const/4 v8, 0x0

    const-string v10, "3.0.9"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 863
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.initialTimeout"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "initialTimeout"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const-string v8, "1.1"

    const/4 v10, 0x5

    move-object v2, v11

    move-object/from16 v9, v26

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 866
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.interactiveClient"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "interactiveClient"

    const/4 v5, 0x0

    const-string v7, "3.1.0"

    const/high16 v9, -0x80000000

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 869
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.jdbcCompliantTruncation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "jdbcCompliantTruncation"

    const/4 v8, 0x1

    const-string v10, "3.1.2"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 872
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 874
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v3, "ConnectionProperties.largeRowSizeThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "largeRowSizeThreshold"

    const/16 v8, 0x800

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "5.1.1"

    const/high16 v14, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 877
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceStrategy"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "loadBalanceStrategy"

    const-string v8, "random"

    const/4 v9, 0x0

    const-string v11, "5.0.6"

    const/high16 v13, -0x80000000

    move-object v6, v2

    move-object/from16 v12, v18

    invoke-direct/range {v6 .. v13}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 880
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.serverAffinityOrder"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "serverAffinityOrder"

    const-string v8, ""

    const-string v11, "5.1.43"

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 883
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceBlacklistTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "loadBalanceBlacklistTimeout"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "5.1.0"

    move-object v6, v2

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 886
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalancePingTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "loadBalancePingTimeout"

    const-string v12, "5.1.13"

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 889
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceValidateConnectionOnSwapServer"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceValidateConnectionOnSwapServer"

    const-string v10, "5.1.13"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 892
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceConnectionGroup"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceConnectionGroup"

    const/4 v8, 0x0

    const-string v10, "5.1.13"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 895
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceExceptionChecker"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "loadBalanceExceptionChecker"

    const-string v8, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    const/4 v9, 0x0

    const-string v11, "5.1.13"

    const/high16 v13, -0x80000000

    move-object v6, v2

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v13}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 899
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceSQLStateFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceSQLStateFailover"

    const/4 v8, 0x0

    const-string v10, "5.1.13"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 902
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceSQLExceptionSubclassFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceSQLExceptionSubclassFailover"

    const-string v10, "5.1.13"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 905
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v19, "ConnectionProperties.loadBalanceEnableJMX"

    invoke-static/range {v19 .. v19}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceEnableJMX"

    const/4 v8, 0x0

    const-string v10, "5.1.13"

    const v12, 0x7fffffff

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 908
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceHostRemovalGracePeriod"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "loadBalanceHostRemovalGracePeriod"

    const/16 v8, 0x3a98

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "5.1.39"

    const v14, 0x7fffffff

    move-object v6, v2

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 911
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceAutoCommitStatementRegex"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "loadBalanceAutoCommitStatementRegex"

    const/4 v8, 0x0

    const-string v10, "5.1.15"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 914
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.loadBalanceAutoCommitStatementThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "loadBalanceAutoCommitStatementThreshold"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "5.1.15"

    const/high16 v14, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 917
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.localSocketAddress"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "localSocketAddress"

    const/4 v5, 0x0

    const-string v7, "5.0.5"

    const/high16 v9, -0x80000000

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 920
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v3, "ConnectionProperties.locatorFetchBufferSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "locatorFetchBufferSize"

    const/high16 v8, 0x100000

    const/4 v9, 0x0

    const-string v12, "3.2.1"

    move-object v6, v2

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 923
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    sget-object v4, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const-class v3, Lcom/mysql/jdbc/log/Log;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v14, 0x1

    aput-object v4, v2, v14

    const-string v3, "ConnectionProperties.logger"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "logger"

    const-string v6, "3.1.1"

    const/4 v8, 0x0

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 927
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.logSlowQueries"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "logSlowQueries"

    const/4 v4, 0x0

    const-string v6, "3.1.2"

    const/high16 v8, -0x80000000

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 930
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.logXaCommands"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "logXaCommands"

    const-string v6, "5.0.5"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 933
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.maintainTimeStats"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "maintainTimeStats"

    const/4 v8, 0x1

    const-string v10, "3.1.9"

    const v12, 0x7fffffff

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 936
    iput-boolean v14, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 938
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.maxQuerySizeToLog"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "maxQuerySizeToLog"

    const/16 v4, 0x800

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-string v8, "3.1.3"

    const/4 v10, 0x4

    move-object v2, v11

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 941
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.maxReconnects"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "maxReconnects"

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v8, "1.1"

    move-object v2, v11

    move-object/from16 v9, v26

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 944
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.retriesAllDown"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "retriesAllDown"

    const/16 v4, 0x78

    const/4 v5, 0x0

    const-string v8, "5.1.6"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 947
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.maxRows"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "ConnectionProperties.allVersions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "maxRows"

    const/4 v8, -0x1

    const/4 v9, -0x1

    const v10, 0x7fffffff

    const/high16 v3, -0x80000000

    move-object v6, v2

    move-object/from16 v13, v17

    const/4 v5, 0x1

    move v14, v3

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 950
    const/4 v2, -0x1

    iput v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 952
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.metadataCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "metadataCacheSize"

    const/16 v8, 0x32

    const/4 v9, 0x1

    const-string v12, "3.1.1"

    const/4 v14, 0x5

    move-object v6, v2

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 955
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.netTimeoutForStreamingResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "netTimeoutForStreamingResults"

    const/16 v8, 0x258

    const/4 v9, 0x0

    const-string v12, "5.1.0"

    const/high16 v14, -0x80000000

    move-object v6, v2

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 958
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v7, "noAccessToProcedureBodies"

    const/4 v8, 0x0

    const-string v9, "When determining procedure parameter types for CallableStatements, and the connected user  can\'t access procedure bodies through \"SHOW CREATE PROCEDURE\" or select on mysql.proc  should the driver instead create basic metadata (all parameters reported as IN VARCHARs, but allowing registerOutParameter() to be called on them anyway) instead of throwing an exception?"

    const-string v10, "5.0.3"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 965
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.noDatetimeStringSync"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "noDatetimeStringSync"

    const-string v10, "3.1.7"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 968
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.noTzConversionForTimeType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "noTimezoneConversionForTimeType"

    const-string v10, "5.0.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 971
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.noTzConversionForDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "noTimezoneConversionForDateType"

    const/4 v8, 0x1

    const-string v10, "5.1.35"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 974
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.cacheDefaultTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "cacheDefaultTimezone"

    const-string v10, "5.1.35"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 977
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.nullCatalogMeansCurrent"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "nullCatalogMeansCurrent"

    const-string v10, "3.1.8"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 980
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.nullNamePatternMatchesAll"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "nullNamePatternMatchesAll"

    const-string v10, "3.1.8"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 983
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.packetDebugBufferSize"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "packetDebugBufferSize"

    const/16 v4, 0x14

    const/4 v6, 0x1

    const v8, 0x7fffffff

    const-string v9, "3.1.3"

    const/4 v10, 0x7

    move-object v2, v11

    const/4 v14, 0x1

    move v5, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 986
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.padCharsWithSpace"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "padCharsWithSpace"

    const/4 v8, 0x0

    const-string v10, "5.0.6"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 989
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.paranoid"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "paranoid"

    const/4 v11, 0x0

    const-string v13, "3.0.1"

    const/high16 v3, -0x80000000

    move-object v9, v2

    const/4 v5, 0x1

    move-object/from16 v14, v16

    const/16 v20, 0x2

    move v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 992
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.pedantic"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "pedantic"

    const-string v10, "3.0.0"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 995
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.pinGlobalTxToPhysicalConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "pinGlobalTxToPhysicalConnection"

    const-string v10, "5.0.1"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 998
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.populateInsertRowWithDefaultValues"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "populateInsertRowWithDefaultValues"

    const-string v10, "5.0.5"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1001
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.prepStmtCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "prepStmtCacheSize"

    const/16 v8, 0x19

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-string v12, "3.0.10"

    const/16 v14, 0xa

    move-object v6, v2

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1004
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.prepStmtCacheSqlLimit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "prepStmtCacheSqlLimit"

    const/16 v8, 0x100

    const/4 v9, 0x1

    const-string v12, "3.0.10"

    const/16 v14, 0xb

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1007
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-class v3, Lcom/mysql/jdbc/PerConnectionLRUFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v3, "ConnectionProperties.parseInfoCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "parseInfoCacheFactory"

    const-string v10, "5.1.1"

    const/16 v12, 0xc

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1010
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.processEscapeCodesForPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "processEscapeCodesForPrepStmts"

    const/4 v8, 0x1

    const-string v10, "3.1.12"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1013
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.profilerEventHandler"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "profilerEventHandler"

    const-string v4, "com.mysql.jdbc.profiler.LoggingProfilerEventHandler"

    const-string v7, "5.1.6"

    const/high16 v8, -0x80000000

    move-object v2, v9

    const/4 v15, 0x1

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1017
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.profileSqlDeprecated"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "profileSql"

    const/4 v4, 0x0

    const-string v6, "2.0.14"

    const/4 v8, 0x3

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1020
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.profileSQL"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "profileSQL"

    const/4 v4, 0x0

    const-string v6, "3.1.0"

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1023
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 1025
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.connectionPropertiesTransform"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "propertiesTransform"

    const/4 v5, 0x0

    const-string v7, "3.1.4"

    const/high16 v9, -0x80000000

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1028
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.queriesBeforeRetryMaster"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "queriesBeforeRetryMaster"

    const/16 v4, 0x32

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-string v8, "3.0.2"

    const/4 v10, 0x7

    move-object v2, v11

    move-object/from16 v9, v26

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1031
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.queryTimeoutKillsConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "queryTimeoutKillsConnection"

    const/4 v8, 0x0

    const-string v10, "5.1.9"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1034
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.reconnectAtTxEnd"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "reconnectAtTxEnd"

    const/4 v4, 0x0

    const-string v6, "3.0.10"

    const/4 v8, 0x4

    move-object v2, v9

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1037
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 1039
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.relaxAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "relaxAutoCommit"

    const/4 v8, 0x0

    const-string v10, "2.0.13"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1042
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.reportMetricsIntervalMillis"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "reportMetricsIntervalMillis"

    const/16 v4, 0x7530

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-string v8, "3.1.2"

    const/4 v10, 0x3

    move-object v2, v11

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1045
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.requireSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "requireSSL"

    const/4 v11, 0x0

    const-string v13, "3.1.0"

    const/4 v3, 0x3

    move-object v9, v2

    move-object/from16 v14, v16

    const/4 v8, 0x1

    move v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1048
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.resourceId"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "resourceId"

    const/4 v4, 0x0

    const-string v6, "5.0.1"

    const/high16 v10, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v26

    const/4 v15, 0x1

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1051
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.resultSetSizeThreshold"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "resultSetSizeThreshold"

    const/16 v4, 0x64

    const-string v6, "5.0.5"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1054
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.retainStatementAfterResultSetClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "retainStatementAfterResultSetClose"

    const/4 v8, 0x0

    const-string v10, "3.1.11"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1057
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.rewriteBatchedStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "rewriteBatchedStatements"

    const-string v10, "3.1.13"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1060
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.rollbackOnPooledClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "rollbackOnPooledClose"

    const/4 v8, 0x1

    const-string v10, "3.0.15"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1063
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.roundRobinLoadBalance"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "roundRobinLoadBalance"

    const/4 v4, 0x0

    const-string v6, "3.1.2"

    const/4 v8, 0x5

    move-object v2, v9

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1066
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.runningCTS13"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "runningCTS13"

    const/4 v8, 0x0

    const-string v10, "3.1.7"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1069
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.secondsBeforeRetryMaster"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "secondsBeforeRetryMaster"

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-string v8, "3.0.2"

    const/16 v10, 0x8

    move-object v2, v11

    move-object/from16 v9, v26

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1072
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.selfDestructOnPingSecondsLifetime"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "selfDestructOnPingSecondsLifetime"

    const/4 v4, 0x0

    const-string v8, "5.1.6"

    const v10, 0x7fffffff

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1075
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.selfDestructOnPingMaxOperations"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "selfDestructOnPingMaxOperations"

    const-string v8, "5.1.6"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1078
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-static/range {v19 .. v19}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "replicationEnableJMX"

    const-string v6, "5.1.27"

    const v8, 0x7fffffff

    move-object v2, v9

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1081
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.serverTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "serverTimezone"

    const/4 v8, 0x0

    const-string v10, "3.0.2"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1084
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.sessionVariables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "sessionVariables"

    const-string v10, "3.1.8"

    const v12, 0x7fffffff

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1087
    new-instance v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.slowQueryThresholdMillis"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "slowQueryThresholdMillis"

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-string v8, "3.1.2"

    const/16 v10, 0x9

    move-object v2, v11

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1090
    new-instance v10, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    const-string v2, "ConnectionProperties.slowQueryThresholdNanos"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "slowQueryThresholdNanos"

    const-wide/16 v4, 0x0

    const-string v7, "5.0.7"

    const/16 v9, 0xa

    move-object v2, v10

    move-object/from16 v8, v27

    invoke-direct/range {v2 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v10, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    .line 1093
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-class v3, Lcom/mysql/jdbc/StandardSocketFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "ConnectionProperties.socketFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "socketFactory"

    const-string v7, "3.0.3"

    const/4 v9, 0x4

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1096
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.socksProxyHost"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const-string v30, "socksProxyHost"

    const/16 v31, 0x0

    const-string v33, "5.1.34"

    const/16 v35, 0x1

    move-object/from16 v29, v2

    move-object/from16 v34, v19

    invoke-direct/range {v29 .. v35}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1099
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    sget v5, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    const-string v3, "ConnectionProperties.socksProxyPort"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "socksProxyPort"

    const/4 v6, 0x0

    const v7, 0xffff

    const-string v9, "5.1.34"

    const/4 v11, 0x2

    move-object v3, v2

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1102
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "ConnectionProperties.socketTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "socketTimeout"

    const/4 v5, 0x0

    const v7, 0x7fffffff

    const-string v9, "3.0.1"

    const/16 v11, 0xa

    move-object v3, v2

    move-object/from16 v10, v28

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1105
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.statementInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "statementInterceptors"

    const/4 v8, 0x0

    const-string v10, "5.1.1"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1108
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.strictFloatingPoint"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "strictFloatingPoint"

    const/4 v8, 0x0

    const-string v10, "3.0.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1111
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.strictUpdates"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "strictUpdates"

    const/4 v8, 0x1

    const-string v10, "3.0.4"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1114
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.overrideSupportsIEF"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "overrideSupportsIntegrityEnhancementFacility"

    const/4 v8, 0x0

    const-string v10, "3.1.12"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1118
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "true"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v3, "ConnectionProperties.tcpNoDelay"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "tcpNoDelay"

    const-string v7, "5.0.7"

    const/high16 v9, -0x80000000

    move-object v3, v2

    move-object/from16 v8, v19

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1122
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v3, "ConnectionProperties.tcpKeepAlive"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "tcpKeepAlive"

    const-string v7, "5.0.7"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1126
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v12, "0"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "ConnectionProperties.tcpSoRcvBuf"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "tcpRcvBuf"

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const-string v9, "5.0.7"

    const/high16 v11, -0x80000000

    move-object v3, v2

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1130
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "ConnectionProperties.tcpSoSndBuf"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "tcpSndBuf"

    const-string v9, "5.0.7"

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1134
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "ConnectionProperties.tcpTrafficClass"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "tcpTrafficClass"

    const/16 v7, 0xff

    const-string v9, "5.0.7"

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1138
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.tinyInt1isBit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "tinyInt1isBit"

    const/4 v8, 0x1

    const-string v10, "3.0.16"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1141
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.traceProtocol"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "traceProtocol"

    const/4 v4, 0x0

    const-string v6, "3.1.2"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1144
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.treatUtilDateAsTimestamp"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "treatUtilDateAsTimestamp"

    const/4 v8, 0x1

    const-string v10, "5.0.5"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1147
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.transformedBitIsBoolean"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "transformedBitIsBoolean"

    const/4 v8, 0x0

    const-string v10, "3.1.9"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1150
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useBlobToStoreUTF8OutsideBMP"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useBlobToStoreUTF8OutsideBMP"

    const-string v10, "5.1.3"

    const/16 v12, 0x80

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1153
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.utf8OutsideBmpExcludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "utf8OutsideBmpExcludedColumnNamePattern"

    const/4 v8, 0x0

    const-string v10, "5.1.3"

    const/16 v12, 0x81

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1156
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.utf8OutsideBmpIncludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "utf8OutsideBmpIncludedColumnNamePattern"

    const-string v10, "5.1.3"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1159
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useCompression"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "useCompression"

    const/4 v5, 0x0

    const-string v7, "3.0.17"

    const/high16 v9, -0x80000000

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1162
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useColumnNamesInFindColumn"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useColumnNamesInFindColumn"

    const/4 v8, 0x0

    const-string v10, "5.1.7"

    const v12, 0x7fffffff

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1165
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "ConnectionProperties.useConfigs"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "useConfigs"

    const/4 v5, 0x0

    const-string v7, "3.1.5"

    const v9, 0x7fffffff

    move-object v3, v2

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1168
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useCursorFetch"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useCursorFetch"

    const/4 v8, 0x0

    const-string v10, "5.0.0"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1171
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useDynamicCharsetInfo"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useDynamicCharsetInfo"

    const/4 v8, 0x1

    const-string v10, "5.0.6"

    const/high16 v12, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1174
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v7, "useDirectRowUnpack"

    const-string v9, "Use newer result set row unpacking code that skips a copy from network buffers  to a MySQL packet instance and instead reads directly into the result set row data buffers."

    const-string v10, "5.1.1"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1179
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useFastIntParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useFastIntParsing"

    const-string v10, "3.1.4"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1182
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useFastDateParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useFastDateParsing"

    const-string v10, "5.0.5"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1185
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useHostsInPrivileges"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useHostsInPrivileges"

    const-string v10, "3.0.2"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1187
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useInformationSchema"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useInformationSchema"

    const/4 v8, 0x0

    const-string v10, "5.0.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1189
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useJDBCCompliantTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useJDBCCompliantTimezoneShift"

    const-string v10, "5.0.0"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1192
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useLocalSessionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useLocalSessionState"

    const-string v10, "3.1.7"

    const/4 v12, 0x5

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1195
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useLocalTransactionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useLocalTransactionState"

    const-string v10, "5.1.7"

    const/4 v12, 0x6

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1198
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useLegacyDatetimeCode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useLegacyDatetimeCode"

    const/4 v8, 0x1

    const-string v10, "5.1.6"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1201
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.sendFractionalSeconds"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "sendFractionalSeconds"

    const-string v10, "5.1.37"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1204
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.useNanosForElapsedTime"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "useNanosForElapsedTime"

    const/4 v4, 0x0

    const-string v6, "5.0.7"

    const/high16 v8, -0x80000000

    move-object v2, v9

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1207
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useOldAliasMetadataBehavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useOldAliasMetadataBehavior"

    const/4 v8, 0x0

    const-string v10, "5.0.4"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1210
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useOldUtf8Behavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useOldUTF8Behavior"

    const-string v10, "3.1.6"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1213
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 1215
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useOnlyServerErrorMessages"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useOnlyServerErrorMessages"

    const/4 v8, 0x1

    const-string v10, "3.0.15"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1218
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useReadAheadInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useReadAheadInput"

    const-string v10, "3.1.5"

    move-object v6, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1221
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useSqlStateCodes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useSqlStateCodes"

    const-string v10, "3.1.3"

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1224
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "useSSL"

    const/4 v11, 0x0

    const-string v13, "3.0.2"

    const/4 v3, 0x2

    move-object v9, v2

    const/4 v5, 0x1

    move v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1227
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useSSPSCompatibleTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useSSPSCompatibleTimezoneShift"

    const/4 v8, 0x0

    const-string v10, "5.0.5"

    const/high16 v12, -0x80000000

    move-object v6, v2

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1230
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useStreamLengthsInPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useStreamLengthsInPrepStmts"

    const/4 v8, 0x1

    const-string v10, "3.0.2"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1233
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useTimezone"

    const/4 v8, 0x0

    const-string v10, "3.0.2"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1236
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.ultraDevHack"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "ultraDevHack"

    const-string v10, "2.0.3"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1239
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useUnbufferedInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useUnbufferedInput"

    const/4 v8, 0x1

    const-string v10, "3.0.11"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1242
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.useUnicode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useUnicode"

    const-string v10, "1.1g"

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1246
    iput-boolean v5, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 1248
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.useUsageAdvisor"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "useUsageAdvisor"

    const-string v7, "3.1.1"

    const/16 v8, 0xa

    move-object v2, v9

    const/4 v13, 0x1

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1251
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 1253
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "ConnectionProperties.yearIsDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "yearIsDateType"

    const/4 v8, 0x1

    const-string v10, "3.1.9"

    const/high16 v12, -0x80000000

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1256
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "exception"

    const-string v4, "round"

    const-string v5, "convertToNull"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v13

    aput-object v5, v6, v20

    const-string v1, "ConnectionProperties.zeroDateTimeBehavior"

    invoke-static {v1, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "zeroDateTimeBehavior"

    const-string v8, "exception"

    const-string v11, "3.1.4"

    const/high16 v13, -0x80000000

    move-object v6, v2

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v13}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1262
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.useJvmCharsetConverters"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useJvmCharsetConverters"

    const/4 v8, 0x0

    const-string v10, "5.0.1"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1265
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.useGmtMillisForDatetimes"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useGmtMillisForDatetimes"

    const-string v10, "3.1.12"

    move-object v6, v1

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1268
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.dumpMetadataOnColumnNotFound"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "dumpMetadataOnColumnNotFound"

    const/4 v4, 0x0

    const-string v6, "3.1.13"

    const/high16 v8, -0x80000000

    move-object v2, v1

    move-object/from16 v7, v27

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1273
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.clientCertificateKeyStoreUrl"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "clientCertificateKeyStoreUrl"

    const/4 v11, 0x0

    const-string v13, "5.1.0"

    const/4 v15, 0x5

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1276
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.trustCertificateKeyStoreUrl"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "trustCertificateKeyStoreUrl"

    const-string v13, "5.1.0"

    const/16 v15, 0x8

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1279
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.clientCertificateKeyStoreType"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "clientCertificateKeyStoreType"

    const-string v11, "JKS"

    const-string v13, "5.1.0"

    const/4 v15, 0x6

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1282
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.clientCertificateKeyStorePassword"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "clientCertificateKeyStorePassword"

    const/4 v11, 0x0

    const-string v13, "5.1.0"

    const/4 v15, 0x7

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1285
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.trustCertificateKeyStoreType"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "trustCertificateKeyStoreType"

    const-string v11, "JKS"

    const-string v13, "5.1.0"

    const/16 v15, 0x9

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1288
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.trustCertificateKeyStorePassword"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "trustCertificateKeyStorePassword"

    const/4 v11, 0x0

    const-string v13, "5.1.0"

    const/16 v15, 0xa

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1291
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.verifyServerCertificate"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "verifyServerCertificate"

    const/4 v11, 0x1

    const-string v13, "5.1.6"

    const/4 v15, 0x4

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1294
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.useAffectedRows"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "useAffectedRows"

    const/4 v8, 0x0

    const-string v10, "5.1.7"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1297
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.passwordCharacterEncoding"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "passwordCharacterEncoding"

    const/4 v11, 0x0

    const-string v13, "5.1.7"

    const/high16 v15, -0x80000000

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1300
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v2, "ConnectionProperties.maxAllowedPacket"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "maxAllowedPacket"

    const/4 v5, -0x1

    const-string v7, "5.1.8"

    const/high16 v9, -0x80000000

    move-object v3, v1

    move-object/from16 v8, v19

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1303
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.authenticationPlugins"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "authenticationPlugins"

    const/4 v5, 0x0

    const-string v7, "5.1.19"

    move-object v3, v1

    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1306
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.disabledAuthenticationPlugins"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "disabledAuthenticationPlugins"

    const-string v7, "5.1.19"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1309
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.defaultAuthenticationPlugin"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "defaultAuthenticationPlugin"

    const-string v5, "com.mysql.jdbc.authentication.MysqlNativePasswordPlugin"

    const-string v7, "5.1.19"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1313
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.disconnectOnExpiredPasswords"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "disconnectOnExpiredPasswords"

    const/4 v5, 0x1

    const-string v7, "5.1.23"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1316
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.getProceduresReturnsFunctions"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "getProceduresReturnsFunctions"

    const/4 v8, 0x1

    const-string v10, "5.1.26"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1319
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.detectCustomCollations"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "detectCustomCollations"

    const/4 v8, 0x0

    const-string v10, "5.1.29"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1322
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.serverRSAPublicKeyFile"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "serverRSAPublicKeyFile"

    const/4 v11, 0x0

    const-string v13, "5.1.31"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1325
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.allowPublicKeyRetrieval"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "allowPublicKeyRetrieval"

    const/4 v11, 0x0

    const-string v13, "5.1.31"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1328
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.dontCheckOnDuplicateKeyUpdateInSQL"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "dontCheckOnDuplicateKeyUpdateInSQL"

    const-string v10, "5.1.32"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1331
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.readOnlyPropagatesToServer"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "readOnlyPropagatesToServer"

    const/4 v8, 0x1

    const-string v10, "5.1.35"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1334
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.enabledSSLCipherSuites"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "enabledSSLCipherSuites"

    const/4 v11, 0x0

    const-string v13, "5.1.35"

    const/16 v15, 0xb

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1337
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v2, "ConnectionProperties.enabledTLSProtocols"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "enabledTLSProtocols"

    const-string v13, "5.1.44"

    const/16 v15, 0xc

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1340
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "ConnectionProperties.enableEscapeProcessing"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "enableEscapeProcessing"

    const-string v10, "5.1.37"

    const/high16 v12, -0x80000000

    move-object v6, v1

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1424
    return-void
.end method

.method protected static exposeAsDriverPropertyInfo(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 1
    .param p0, "info"    # Ljava/util/Properties;
    .param p1, "slotsToReserve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 666
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;->exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 9
    .param p1, "info"    # Ljava/util/Properties;
    .param p2, "slotsToReserve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 1346
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    .local v0, "numProperties":I
    add-int v1, v0, p2

    .line 1350
    .local v1, "listSize":I
    new-array v2, v1, [Ljava/sql/DriverPropertyInfo;

    .line 1352
    .local v2, "driverProperties":[Ljava/sql/DriverPropertyInfo;
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1353
    sget-object v4, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    sub-int v5, v3, p2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 1356
    .local v4, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1358
    .local v5, "propToExpose":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 1362
    :cond_0
    invoke-virtual {v5}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAsDriverPropertyInfo()Ljava/sql/DriverPropertyInfo;

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    .end local v5    # "propToExpose":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    nop

    .line 1352
    .end local v4    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1363
    .restart local v4    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    .line 1364
    .local v5, "iae":Ljava/lang/IllegalAccessException;
    const-string v6, "ConnectionProperties.InternalPropertiesFailure"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    const-string v8, "S1000"

    invoke-static {v6, v8, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6

    .line 1369
    .end local v3    # "i":I
    .end local v4    # "propertyField":Ljava/lang/reflect/Field;
    .end local v5    # "iae":Ljava/lang/IllegalAccessException;
    :cond_1
    return-object v2
.end method

.method protected exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 7
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object p1, v0

    .line 1377
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1379
    .local v0, "numPropertiesToSet":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1380
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 1383
    .local v2, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1385
    .local v3, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v4

    .line 1387
    .local v4, "propValue":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 1388
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .end local v3    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .end local v4    # "propValue":Ljava/lang/Object;
    :cond_1
    nop

    .line 1379
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1390
    .restart local v2    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 1391
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "Internal properties failure"

    const-string v6, "S1000"

    invoke-static {v5, v6, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1395
    .end local v1    # "i":I
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :cond_2
    return-object p1
.end method

.method public exposeAsProperties(Ljava/util/Properties;Z)Ljava/util/Properties;
    .locals 7
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "explicitOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1399
    if-nez p1, :cond_0

    .line 1400
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object p1, v0

    .line 1403
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1405
    .local v0, "numPropertiesToSet":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1406
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 1409
    .local v2, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1411
    .local v3, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v4

    .line 1413
    .local v4, "propValue":Ljava/lang/Object;
    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->isExplicitlySet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1414
    :cond_1
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    .end local v3    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .end local v4    # "propValue":Ljava/lang/Object;
    :cond_2
    nop

    .line 1405
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    .restart local v2    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 1417
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "Internal properties failure"

    const-string v6, "S1000"

    invoke-static {v5, v6, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1421
    .end local v1    # "i":I
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :cond_3
    return-object p1
.end method

.method public exposeAsXml()Ljava/lang/String;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1435
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 1436
    .local v2, "xmlBuf":Ljava/lang/StringBuilder;
    const-string v0, "<ConnectionProperties>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1440
    .local v3, "numPropertiesToSet":I
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    array-length v4, v0

    .line 1442
    .local v4, "numCategories":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 1444
    .local v5, "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1445
    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v6, v6, v0

    new-instance v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    invoke-direct {v7, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;-><init>(Lcom/mysql/jdbc/ConnectionPropertiesImpl;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const/4 v8, 0x0

    const-string v6, "ConnectionProperties.Username"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "ConnectionProperties.allVersions"

    invoke-static {v13}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v12, -0x7fffffff

    const-string v7, "user"

    move-object v6, v0

    move-object v11, v15

    invoke-direct/range {v6 .. v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    .local v6, "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const/16 v16, 0x0

    const-string v7, "ConnectionProperties.Password"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v13}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const v20, -0x7ffffffe

    const-string v7, "password"

    move-object v14, v0

    move-object v8, v15

    move-object v15, v7

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v0

    .line 1459
    .local v7, "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1460
    .local v8, "connectionSortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v9, v0

    .line 1461
    .local v9, "userMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object v0, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v10, v0

    .line 1466
    .local v10, "passwordMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    iget-object v0, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 1472
    :try_start_0
    sget-object v11, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Field;

    .line 1473
    .local v11, "propertyField":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1474
    .local v12, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getCategoryName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1475
    .local v13, "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    invoke-virtual {v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1477
    .local v14, "orderInCategory":I
    const/high16 v15, -0x80000000

    if-ne v14, v15, :cond_1

    .line 1478
    :try_start_1
    iget-object v15, v13, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v3

    goto :goto_3

    .line 1548
    .end local v0    # "i":I
    .end local v11    # "propertyField":Ljava/lang/reflect/Field;
    .end local v12    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .end local v13    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .end local v14    # "orderInCategory":I
    :catch_0
    move-exception v0

    move/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    goto/16 :goto_b

    .line 1480
    .restart local v0    # "i":I
    .restart local v11    # "propertyField":Ljava/lang/reflect/Field;
    .restart local v12    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .restart local v13    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .restart local v14    # "orderInCategory":I
    :cond_1
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1481
    .local v1, "order":Ljava/lang/Integer;
    iget-object v15, v13, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 1483
    .local v15, "orderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    if-nez v15, :cond_2

    .line 1484
    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v15, v16

    .line 1485
    move/from16 v16, v3

    .end local v3    # "numPropertiesToSet":I
    .local v16, "numPropertiesToSet":I
    :try_start_3
    iget-object v3, v13, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v3, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1483
    .end local v16    # "numPropertiesToSet":I
    .restart local v3    # "numPropertiesToSet":I
    :cond_2
    move/from16 v16, v3

    .line 1488
    .end local v3    # "numPropertiesToSet":I
    .restart local v16    # "numPropertiesToSet":I
    :goto_2
    invoke-virtual {v12}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1471
    .end local v1    # "order":Ljava/lang/Integer;
    .end local v11    # "propertyField":Ljava/lang/reflect/Field;
    .end local v12    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .end local v13    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .end local v14    # "orderInCategory":I
    .end local v15    # "orderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v16

    goto :goto_1

    .line 1548
    .end local v0    # "i":I
    :catch_1
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    goto/16 :goto_b

    .end local v16    # "numPropertiesToSet":I
    .restart local v3    # "numPropertiesToSet":I
    :catch_2
    move-exception v0

    move/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .end local v3    # "numPropertiesToSet":I
    .restart local v16    # "numPropertiesToSet":I
    goto/16 :goto_b

    .line 1471
    .end local v16    # "numPropertiesToSet":I
    .restart local v0    # "i":I
    .restart local v3    # "numPropertiesToSet":I
    :cond_3
    move/from16 v16, v3

    .line 1492
    .end local v0    # "i":I
    .end local v3    # "numPropertiesToSet":I
    .restart local v16    # "numPropertiesToSet":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4
    if-ge v0, v4, :cond_b

    .line 1493
    :try_start_4
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v3, v1, v0

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1495
    .local v3, "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    const-string v11, "\n <PropertyCategory name=\""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v1, "\">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    iget-object v1, v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7

    const-string v12, "\n  </Property>"

    const-string v13, "    "

    const-string v14, "\">\n"

    const-string v15, "\" default=\""

    const-string v17, "Yes"

    const-string v18, "No"

    move/from16 v19, v4

    .end local v4    # "numCategories":I
    .local v19, "numCategories":I
    const-string v4, "\" required=\""

    move-object/from16 v20, v5

    .end local v5    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .local v20, "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    const-string v5, "\n  <Property name=\""

    if-eqz v11, :cond_7

    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 1500
    .local v11, "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    move-object/from16 v23, v22

    .line 1501
    .local v23, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    move-object/from16 v22, v1

    .end local v1    # "i$":Ljava/util/Iterator;
    .local v22, "i$":Ljava/util/Iterator;
    invoke-virtual/range {v23 .. v23}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1504
    move-object/from16 v1, v23

    move-object/from16 v23, v6

    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .local v1, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .local v23, "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :try_start_6
    iget-boolean v6, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v6, :cond_4

    move-object/from16 v6, v17

    goto :goto_7

    :cond_4
    move-object/from16 v6, v18

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v6, :cond_5

    .line 1509
    :try_start_7
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 1548
    .end local v0    # "j":I
    .end local v1    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .end local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .end local v11    # "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v0

    move-object/from16 v25, v7

    goto/16 :goto_b

    .line 1512
    .restart local v0    # "j":I
    .restart local v1    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .restart local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .restart local v11    # "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_8
    :try_start_8
    const-string v6, "\" sortOrder=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1514
    const-string v6, "\" since=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object v6, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    iget-object v6, v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    .line 1519
    .local v6, "escapedDescription":Ljava/lang/String;
    move-object/from16 v24, v1

    .end local v1    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    .local v24, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    const-string v1, "&"
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v25, v7

    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .local v25, "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :try_start_9
    const-string v7, "&amp;"

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "<"

    move-object/from16 v26, v6

    .end local v6    # "escapedDescription":Ljava/lang/String;
    .local v26, "escapedDescription":Ljava/lang/String;
    const-string v6, "&lt;"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    .end local v26    # "escapedDescription":Ljava/lang/String;
    .local v1, "escapedDescription":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    move-object/from16 v1, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    .end local v1    # "escapedDescription":Ljava/lang/String;
    .end local v24    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    goto/16 :goto_6

    .line 1548
    .end local v0    # "j":I
    .end local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .end local v11    # "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :catch_4
    move-exception v0

    move-object/from16 v25, v7

    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    goto/16 :goto_b

    .line 1500
    .end local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v0    # "j":I
    .local v1, "i$":Ljava/util/Iterator;
    .restart local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .local v6, "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v11    # "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .line 1523
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v11    # "orderedEl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    move/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_5

    .line 1548
    .end local v0    # "j":I
    .end local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :catch_5
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    goto/16 :goto_b

    .line 1499
    .end local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v0    # "j":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    .restart local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :cond_7
    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .line 1526
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    iget-object v1, v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1527
    .local v6, "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-boolean v7, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v7, :cond_8

    move-object/from16 v7, v17

    goto :goto_a

    :cond_8
    move-object/from16 v7, v18

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1535
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1538
    :cond_9
    const-string v7, "\" sortOrder=\"alpha\" since=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget-object v7, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    iget-object v7, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1546
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "propToGet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    :cond_a
    const-string v1, "\n </PropertyCategory>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1492
    nop

    .end local v3    # "sortMaps":Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    goto/16 :goto_4

    .line 1548
    .end local v0    # "j":I
    :catch_6
    move-exception v0

    goto :goto_b

    .end local v19    # "numCategories":I
    .end local v20    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .end local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v4    # "numCategories":I
    .restart local v5    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .local v6, "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :catch_7
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .line 1549
    .end local v4    # "numCategories":I
    .end local v5    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    .restart local v19    # "numCategories":I
    .restart local v20    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .restart local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v3, "Internal properties failure"

    const-string v4, "S1000"

    invoke-static {v3, v4, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1492
    .end local v19    # "numCategories":I
    .end local v20    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .end local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .local v0, "j":I
    .restart local v4    # "numCategories":I
    .restart local v5    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .restart local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    :cond_b
    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .line 1550
    .end local v0    # "j":I
    .end local v4    # "numCategories":I
    .end local v5    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .end local v6    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .end local v7    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v19    # "numCategories":I
    .restart local v20    # "propertyListByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;>;"
    .restart local v23    # "userProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    .restart local v25    # "passwordProp":Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
    nop

    .line 1552
    const-string v0, "\n</ConnectionProperties>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowLoadLocalInfile()Z
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .line 4868
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMultiQueries()Z
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowNanAndInf()Z
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowPublicKeyRetrieval()Z
    .locals 1

    .line 4928
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowSlaveDownConnections()Z
    .locals 1

    .line 4876
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowUrlInLocalInfile()Z
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAlwaysSendSetIsolation()Z
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 4816
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoClosePStmtStreams()Z
    .locals 1

    .line 3702
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoDeserialize()Z
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoGenerateTestcaseScript()Z
    .locals 1

    .line 1617
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    return v0
.end method

.method public getAutoReconnectForPools()Z
    .locals 1

    .line 1626
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    return v0
.end method

.method public getAutoSlowLog()Z
    .locals 1

    .line 4565
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getBlobSendChunkSize()I
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getBlobsAreStrings()Z
    .locals 1

    .line 4549
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStatements()Z
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStmts()Z
    .locals 1

    .line 3959
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCacheCallableStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheDefaultTimezone()Z
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCachePrepStmts()Z
    .locals 1

    .line 3977
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCachePreparedStatements()Z

    move-result v0

    return v0
.end method

.method public getCachePreparedStatements()Z
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCacheResultSetMetadata()Z
    .locals 1

    .line 1662
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    return v0
.end method

.method public getCacheServerConfiguration()Z
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCallableStatementCacheSize()I
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getCallableStmtCacheSize()I
    .locals 1

    .line 3995
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCallableStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getCapitalizeTypeNames()Z
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCharacterSetResults()Ljava/lang/String;
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 4076
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 4094
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 4112
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProvider()Ljava/lang/String;
    .locals 1

    .line 4400
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobberStreamingResults()Z
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCompensateOnDuplicateKeyUpdateCounts()Z
    .locals 1

    .line 4645
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getConnectionAttributes()Ljava/lang/String;
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCollation()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionLifecycleInterceptors()Ljava/lang/String;
    .locals 1

    .line 4573
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinueBatchOnError()Z
    .locals 1

    .line 1751
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCreateDatabaseIfNotExist()Z
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDefaultAuthenticationPlugin()Ljava/lang/String;
    .locals 1

    .line 4832
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFetchSize()I
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getDetectCustomCollations()Z
    .locals 1

    .line 4912
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDisabledAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 4824
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectOnExpiredPasswords()Z
    .locals 1

    .line 4856
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontCheckOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 4945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontTrackOpenResources()Z
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpMetadataOnColumnNotFound()Z
    .locals 1

    .line 3756
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpQueriesOnException()Z
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDynamicCalendars()Z
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getElideSetAutoCommits()Z
    .locals 1

    .line 1806
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyStringsConvertToZero()Z
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateLocators()Z
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateUnsupportedPstmts()Z
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableEscapeProcessing()Z
    .locals 1

    .line 4989
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnablePacketDebug()Z
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableQueryTimeouts()Z
    .locals 1

    .line 4346
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnabledSSLCipherSuites()Ljava/lang/String;
    .locals 1

    .line 4973
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTLSProtocols()Ljava/lang/String;
    .locals 1

    .line 4981
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionInterceptors()Ljava/lang/String;
    .locals 1

    .line 4704
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplainSlowQueries()Z
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFailOverReadOnly()Z
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFunctionsNeverReturnBlobs()Z
    .locals 1

    .line 4557
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGatherPerfMetrics()Z
    .locals 1

    .line 3878
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    return v0
.end method

.method public getGatherPerformanceMetrics()Z
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGenerateSimpleParameterMetadata()Z
    .locals 1

    .line 4274
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGetProceduresReturnsFunctions()Z
    .locals 1

    .line 4904
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method protected getHighAvailability()Z
    .locals 1

    .line 1884
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    return v0
.end method

.method public getHoldResultsOpenOverStatementClose()Z
    .locals 1

    .line 1893
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIgnoreNonTxTables()Z
    .locals 1

    .line 1902
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeInnodbStatusInDeadlockExceptions()Z
    .locals 1

    .line 4541
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadDumpInDeadlockExceptions()Z
    .locals 1

    .line 4800
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadNamesAsStatementComment()Z
    .locals 1

    .line 4808
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getInitialTimeout()I
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getInteractiveClient()Z
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIsInteractiveClient()Z
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncation()Z
    .locals 1

    .line 1938
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncationForReads()Z
    .locals 1

    .line 3810
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    return v0
.end method

.method public getLargeRowSizeThreshold()Ljava/lang/String;
    .locals 1

    .line 4509
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
    .locals 1

    .line 4792
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementThreshold()I
    .locals 1

    .line 4784
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceBlacklistTimeout()I
    .locals 1

    .line 4653
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 4732
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceEnableJMX()Z
    .locals 1

    .line 4764
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLoadBalanceExceptionChecker()Ljava/lang/String;
    .locals 1

    .line 4740
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceHostRemovalGracePeriod()I
    .locals 1

    .line 4776
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalancePingTimeout()I
    .locals 1

    .line 4661
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
    .locals 1

    .line 4756
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSQLStateFailover()Ljava/lang/String;
    .locals 1

    .line 4748
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceStrategy()Ljava/lang/String;
    .locals 1

    .line 4421
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceValidateConnectionOnSwapServer()Z
    .locals 1

    .line 4724
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/lang/String;
    .locals 1

    .line 4238
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorFetchBufferSize()I
    .locals 1

    .line 1947
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLogSlowQueries()Z
    .locals 1

    .line 1974
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogXaCommands()Z
    .locals 1

    .line 4292
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerClassName()Ljava/lang/String;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainTimeStats()Z
    .locals 1

    .line 1983
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    return v0
.end method

.method public getMaxAllowedPacket()I
    .locals 1

    .line 4712
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxQuerySizeToLog()I
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxReconnects()I
    .locals 1

    .line 2001
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 2010
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    return v0
.end method

.method public getMetadataCacheSize()I
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNetTimeoutForStreamingResults()I
    .locals 1

    .line 4328
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNoAccessToProcedureBodies()Z
    .locals 1

    .line 4040
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoDatetimeStringSync()Z
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForDateType()Z
    .locals 1

    .line 3648
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForTimeType()Z
    .locals 1

    .line 3630
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullCatalogMeansCurrent()Z
    .locals 1

    .line 2037
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullNamePatternMatchesAll()Z
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getOverrideSupportsIntegrityEnhancementFacility()Z
    .locals 1

    .line 3612
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPacketDebugBufferSize()I
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getPadCharsWithSpace()Z
    .locals 1

    .line 4364
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParanoid()Z
    .locals 1

    .line 2064
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParseInfoCacheFactory()Ljava/lang/String;
    .locals 1

    .line 4840
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordCharacterEncoding()Ljava/lang/String;
    .locals 2

    .line 4690
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4691
    return-object v1

    .line 4693
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 4694
    return-object v1

    .line 4696
    :cond_1
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPedantic()Z
    .locals 1

    .line 2073
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPinGlobalTxToPhysicalConnection()Z
    .locals 1

    .line 3846
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPopulateInsertRowWithDefaultValues()Z
    .locals 1

    .line 4413
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSize()I
    .locals 1

    .line 4013
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSqlLimit()I
    .locals 1

    .line 4031
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSize()I
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSqlLimit()I
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProcessEscapeCodesForPrepStmts()Z
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSQL()Z
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSql()Z
    .locals 1

    .line 2100
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    return v0
.end method

.method public getProfilerEventHandler()Ljava/lang/String;
    .locals 1

    .line 4581
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesTransform()Ljava/lang/String;
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBeforeRetryMaster()I
    .locals 1

    .line 2127
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getQueryTimeoutKillsConnection()Z
    .locals 1

    .line 4716
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadFromMasterWhenNoSlaves()Z
    .locals 1

    .line 4884
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadOnlyPropagatesToServer()Z
    .locals 1

    .line 4965
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReconnectAtTxEnd()Z
    .locals 1

    .line 2136
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    return v0
.end method

.method public getRelaxAutoCommit()Z
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReplicationConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 4860
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .line 4892
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReportMetricsIntervalMillis()I
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 3774
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetSizeThreshold()I
    .locals 1

    .line 4310
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRetainStatementAfterResultSetClose()Z
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRetriesAllDown()I
    .locals 1

    .line 4673
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRewriteBatchedStatements()Z
    .locals 1

    .line 3792
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRollbackOnPooledClose()Z
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRoundRobinLoadBalance()Z
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRunningCTS13()Z
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getSecondsBeforeRetryMaster()I
    .locals 1

    .line 2203
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingMaxOperations()I
    .locals 1

    .line 4621
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingSecondsLifetime()I
    .locals 1

    .line 4613
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSendFractionalSeconds()Z
    .locals 1

    .line 4605
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getServerAffinityOrder()Ljava/lang/String;
    .locals 1

    .line 4429
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfigCacheFactory()Ljava/lang/String;
    .locals 1

    .line 4848
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerRSAPublicKeyFile()Ljava/lang/String;
    .locals 1

    .line 4916
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezone()Ljava/lang/String;
    .locals 1

    .line 2212
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionVariables()Ljava/lang/String;
    .locals 1

    .line 2221
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowQueryThresholdMillis()I
    .locals 1

    .line 2230
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSlowQueryThresholdNanos()J
    .locals 2

    .line 4485
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .line 3923
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 2248
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSocksProxyHost()Ljava/lang/String;
    .locals 1

    .line 4953
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocksProxyPort()I
    .locals 1

    .line 4961
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getStatementInterceptors()Ljava/lang/String;
    .locals 1

    .line 4493
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrictFloatingPoint()Z
    .locals 1

    .line 2257
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getStrictUpdates()Z
    .locals 1

    .line 2266
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpKeepAlive()Z
    .locals 1

    .line 4445
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .line 4437
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpRcvBuf()I
    .locals 1

    .line 4453
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpSndBuf()I
    .locals 1

    .line 4461
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpTrafficClass()I
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTinyInt1isBit()Z
    .locals 1

    .line 2275
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTraceProtocol()Z
    .locals 1

    .line 2284
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTransformedBitIsBoolean()Z
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTreatUtilDateAsTimestamp()Z
    .locals 1

    .line 4202
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTrustCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 4130
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 4148
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 4166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltraDevHack()Z
    .locals 1

    .line 3896
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUltraDevWorkAround()Z

    move-result v0

    return v0
.end method

.method public getUseAffectedRows()Z
    .locals 1

    .line 4681
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseBlobToStoreUTF8OutsideBMP()Z
    .locals 1

    .line 4517
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseColumnNamesInFindColumn()Z
    .locals 1

    .line 4629
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseCompression()Z
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseConfigs()Ljava/lang/String;
    .locals 1

    .line 4265
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCursorFetch()Z
    .locals 1

    .line 3594
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDirectRowUnpack()Z
    .locals 1

    .line 4501
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDynamicCharsetInfo()Z
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastDateParsing()Z
    .locals 1

    .line 4220
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastIntParsing()Z
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseGmtMillisForDatetimes()Z
    .locals 1

    .line 3738
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseHostsInPrivileges()Z
    .locals 1

    .line 2320
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseInformationSchema()Z
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJDBCCompliantTimezoneShift()Z
    .locals 1

    .line 3684
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJvmCharsetConverters()Z
    .locals 1

    .line 3828
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLegacyDatetimeCode()Z
    .locals 1

    .line 4597
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalSessionState()Z
    .locals 1

    .line 2338
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalTransactionState()Z
    .locals 1

    .line 4637
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseNanosForElapsedTime()Z
    .locals 1

    .line 4477
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldAliasMetadataBehavior()Z
    .locals 1

    .line 4058
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldUTF8Behavior()Z
    .locals 1

    .line 2347
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    return v0
.end method

.method public getUseOnlyServerErrorMessages()Z
    .locals 1

    .line 2356
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseReadAheadInput()Z
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSL()Z
    .locals 1

    .line 2392
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSPSCompatibleTimezoneShift()Z
    .locals 1

    .line 4184
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseServerPrepStmts()Z
    .locals 1

    .line 3941
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseServerPreparedStmts()Z

    move-result v0

    return v0
.end method

.method public getUseServerPreparedStmts()Z
    .locals 1

    .line 2374
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSqlStateCodes()Z
    .locals 1

    .line 2383
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseStreamLengthsInPrepStmts()Z
    .locals 1

    .line 2410
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseTimezone()Z
    .locals 1

    .line 2419
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUltraDevWorkAround()Z
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnbufferedInput()Z
    .locals 1

    .line 2437
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnicode()Z
    .locals 1

    .line 2446
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    return v0
.end method

.method public getUseUsageAdvisor()Z
    .locals 1

    .line 2455
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    return v0
.end method

.method public getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 4525
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 4533
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyServerCertificate()Z
    .locals 1

    .line 4589
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getYearIsDateType()Z
    .locals 1

    .line 2464
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getZeroDateTimeBehavior()Ljava/lang/String;
    .locals 1

    .line 2473
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeFromRef(Ljavax/naming/Reference;)V
    .locals 7
    .param p1, "ref"    # Ljavax/naming/Reference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2486
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2488
    .local v0, "numPropertiesToSet":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2489
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2492
    .local v2, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 2494
    .local v3, "propToSet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    if-eqz p1, :cond_0

    .line 2495
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljavax/naming/Reference;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    .end local v3    # "propToSet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    :cond_0
    nop

    .line 2488
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2497
    .restart local v2    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 2498
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "Internal properties failure"

    const-string v6, "S1000"

    invoke-static {v5, v6, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 2502
    .end local v1    # "i":I
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    .line 2503
    return-void
.end method

.method protected initializeProperties(Ljava/util/Properties;)V
    .locals 9
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2513
    if-eqz p1, :cond_2

    .line 2515
    const-string v0, "profileSql"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2517
    .local v1, "profileSqlLc":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2518
    const-string v2, "profileSQL"

    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    .line 2523
    .local v2, "infoCopy":Ljava/util/Properties;
    const-string v3, "HOST"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string v3, "DBNAME"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string v3, "PORT"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2532
    .local v0, "numPropertiesToSet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2533
    sget-object v4, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 2536
    .local v4, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 2538
    .local v5, "propToSet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2542
    .end local v5    # "propToSet":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    nop

    .line 2532
    .end local v4    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2539
    .restart local v4    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    .line 2540
    .local v5, "iae":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectionProperties.unableToInitDriverProperties"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    const-string v8, "S1000"

    invoke-static {v6, v8, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6

    .line 2545
    .end local v3    # "i":I
    .end local v4    # "propertyField":Ljava/lang/reflect/Field;
    .end local v5    # "iae":Ljava/lang/IllegalAccessException;
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    .line 2547
    .end local v0    # "numPropertiesToSet":I
    .end local v1    # "profileSqlLc":Ljava/lang/String;
    .end local v2    # "infoCopy":Ljava/util/Properties;
    :cond_2
    return-void
.end method

.method public isUseSSLExplicit()Z
    .locals 1

    .line 2401
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-boolean v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    return v0
.end method

.method protected postInitialization()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2552
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2556
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 2559
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getMaxRows()I

    move-result v0

    if-nez v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    .line 2567
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2569
    .local v0, "testEncoding":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2572
    :try_start_0
    const-string v3, "abc"

    .line 2573
    .local v3, "testString":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    nop

    .end local v3    # "testString":Ljava/lang/String;
    goto :goto_0

    .line 2574
    :catch_0
    move-exception v3

    .line 2575
    .local v3, "UE":Ljava/io/UnsupportedEncodingException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "ConnectionProperties.unsupportedCharacterEncoding"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v4, "0S100"

    invoke-static {v1, v4, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2582
    .end local v3    # "UE":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2584
    :try_start_1
    const-string v3, "java.util.LinkedHashMap"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2587
    goto :goto_1

    .line 2585
    :catch_1
    move-exception v3

    .line 2586
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v4, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2590
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    .line 2591
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 2592
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 2593
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 2594
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 2595
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 2596
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 2597
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 2598
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 2599
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 2600
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 2601
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getJdbcCompliantTruncation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 2603
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseCursorFetch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2605
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDetectServerPreparedStmts(Z)V

    .line 2607
    :cond_4
    return-void
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2615
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2616
    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1
    .param p1, "connectIfMasterDown"    # Z

    .line 4872
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4873
    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2624
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2625
    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2633
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2634
    return-void
.end method

.method public setAllowPublicKeyRetrieval(Z)V
    .locals 3
    .param p1, "allowPublicKeyRetrieval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4932
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getUpdateCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4937
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4938
    return-void

    .line 4933
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\'allowPublicKeyRetrieval\'"

    aput-object v2, v0, v1

    const-string v1, "ConnectionProperties.dynamicChangeIsNotAllowed"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAllowSlaveDownConnections(Z)V
    .locals 1
    .param p1, "connectIfSlaveDown"    # Z

    .line 4880
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4881
    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2642
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2643
    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2651
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2652
    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "authenticationPlugins"    # Ljava/lang/String;

    .line 4812
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4813
    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3711
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3712
    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2660
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2661
    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2670
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 2671
    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2679
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2680
    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2688
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2689
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 2690
    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2698
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2699
    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4569
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4570
    return-void
.end method

.method public setBlobSendChunkSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2707
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2708
    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4553
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4554
    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2716
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2717
    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 3950
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheCallableStatements(Z)V

    .line 3951
    return-void
.end method

.method public setCacheDefaultTimezone(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3675
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3676
    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 3968
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCachePreparedStatements(Z)V

    .line 3969
    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2725
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2726
    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2734
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2735
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    .line 2736
    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2744
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2745
    return-void
.end method

.method public setCallableStatementCacheSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2753
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2754
    return-void
.end method

.method public setCallableStmtCacheSize(I)V
    .locals 0
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3986
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCallableStatementCacheSize(I)V

    .line 3987
    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2762
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2763
    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2771
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2772
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 2780
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2781
    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 2789
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2790
    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4085
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4086
    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4103
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4104
    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4121
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4122
    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 4409
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4410
    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 2807
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2808
    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2798
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2799
    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4649
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4650
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2825
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2826
    return-void
.end method

.method public setConnectionAttributes(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 1706
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 1707
    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 1
    .param p1, "collation"    # Ljava/lang/String;

    .line 2816
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2817
    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "interceptors"    # Ljava/lang/String;

    .line 4577
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4578
    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2834
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2835
    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2843
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2844
    return-void
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultAuthenticationPlugin"    # Ljava/lang/String;

    .line 4828
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4829
    return-void
.end method

.method public setDefaultFetchSize(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2852
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2853
    return-void
.end method

.method public setDetectCustomCollations(Z)V
    .locals 1
    .param p1, "detectCustomCollations"    # Z

    .line 4908
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4909
    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2861
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2862
    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledAuthenticationPlugins"    # Ljava/lang/String;

    .line 4820
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4821
    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 1
    .param p1, "disconnectOnExpiredPasswords"    # Z

    .line 4852
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4853
    return-void
.end method

.method public setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
    .locals 1
    .param p1, "dontCheckOnDuplicateKeyUpdateInSQL"    # Z

    .line 4941
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4942
    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2870
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2871
    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3765
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3766
    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2879
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2880
    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2888
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2889
    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2897
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2898
    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2906
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2907
    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2915
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2916
    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2924
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2925
    return-void
.end method

.method public setEnableEscapeProcessing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4993
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4994
    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2933
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2934
    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4355
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4356
    return-void
.end method

.method public setEnabledSSLCipherSuites(Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 4977
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4978
    return-void
.end method

.method public setEnabledTLSProtocols(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # Ljava/lang/String;

    .line 4985
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledTLSProtocols:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4986
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 2942
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2943
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 2944
    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionInterceptors"    # Ljava/lang/String;

    .line 4700
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4701
    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2952
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2953
    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2961
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2962
    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4561
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4562
    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 3869
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGatherPerformanceMetrics(Z)V

    .line 3870
    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2970
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2971
    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4283
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4284
    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 1
    .param p1, "getProcedureReturnsFunctions"    # Z

    .line 4900
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4901
    return-void
.end method

.method protected setHighAvailability(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2974
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2975
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 2976
    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2984
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2985
    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 2993
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2994
    return-void
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4545
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4546
    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4797
    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4804
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4805
    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3002
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3003
    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 0
    .param p1, "property"    # Z

    .line 3905
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIsInteractiveClient(Z)V

    .line 3906
    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3011
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3012
    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3020
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3021
    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 0
    .param p1, "jdbcCompliantTruncationForReads"    # Z

    .line 3819
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 3820
    return-void
.end method

.method public setLargeRowSizeThreshold(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4513
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4514
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceAutoCommitStatementRegex"    # Ljava/lang/String;

    .line 4788
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4789
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementThreshold(I)V
    .locals 2
    .param p1, "loadBalanceAutoCommitStatementThreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4780
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4781
    return-void
.end method

.method public setLoadBalanceBlacklistTimeout(I)V
    .locals 2
    .param p1, "loadBalanceBlacklistTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4657
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4658
    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceConnectionGroup"    # Ljava/lang/String;

    .line 4736
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4737
    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 1
    .param p1, "loadBalanceEnableJMX"    # Z

    .line 4768
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4769
    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceExceptionChecker"    # Ljava/lang/String;

    .line 4744
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4745
    return-void
.end method

.method public setLoadBalanceHostRemovalGracePeriod(I)V
    .locals 2
    .param p1, "loadBalanceHostRemovalGracePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4772
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4773
    return-void
.end method

.method public setLoadBalancePingTimeout(I)V
    .locals 2
    .param p1, "loadBalancePingTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4665
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4666
    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLExceptionSubclassFailover"    # Ljava/lang/String;

    .line 4760
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4761
    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadBalanceSQLStateFailover"    # Ljava/lang/String;

    .line 4752
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4753
    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1, "strategy"    # Ljava/lang/String;

    .line 4425
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4426
    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 1
    .param p1, "loadBalanceValidateConnectionOnSwapServer"    # Z

    .line 4728
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4729
    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 4247
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4248
    return-void
.end method

.method public setLocatorFetchBufferSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3029
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3030
    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3056
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3057
    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4301
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4302
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 3038
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    .line 3039
    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 3047
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3048
    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3065
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3066
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 3067
    return-void
.end method

.method public setMaxAllowedPacket(I)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4708
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4709
    return-void
.end method

.method public setMaxQuerySizeToLog(I)V
    .locals 2
    .param p1, "sizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3075
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3076
    return-void
.end method

.method public setMaxReconnects(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3084
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3085
    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3093
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3094
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 3095
    return-void
.end method

.method public setMetadataCacheSize(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3103
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3104
    return-void
.end method

.method public setNetTimeoutForStreamingResults(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4337
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4338
    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4049
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4050
    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3112
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3113
    return-void
.end method

.method public setNoTimezoneConversionForDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3657
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3658
    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3639
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3640
    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 3121
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3122
    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 3130
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3131
    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3621
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3622
    return-void
.end method

.method public setPacketDebugBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3139
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3140
    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4373
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4374
    return-void
.end method

.method public setParanoid(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3148
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3149
    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 4836
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4837
    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "characterSet"    # Ljava/lang/String;

    .line 4685
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4686
    return-void
.end method

.method public setPedantic(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3157
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3158
    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3855
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3856
    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4417
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4418
    return-void
.end method

.method public setPrepStmtCacheSize(I)V
    .locals 0
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4004
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSize(I)V

    .line 4005
    return-void
.end method

.method public setPrepStmtCacheSqlLimit(I)V
    .locals 0
    .param p1, "sqlLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4022
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSqlLimit(I)V

    .line 4023
    return-void
.end method

.method public setPreparedStatementCacheSize(I)V
    .locals 2
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3167
    return-void
.end method

.method public setPreparedStatementCacheSqlLimit(I)V
    .locals 2
    .param p1, "cacheSqlLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3175
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3176
    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3729
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3730
    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3194
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3195
    return-void
.end method

.method public setProfileSql(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3184
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3185
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 3186
    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Ljava/lang/String;

    .line 4585
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4586
    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3203
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method public setQueriesBeforeRetryMaster(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3212
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3213
    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 1
    .param p1, "queryTimeoutKillsConnection"    # Z

    .line 4720
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4721
    return-void
.end method

.method public setReadFromMasterWhenNoSlaves(Z)V
    .locals 1
    .param p1, "useMasterIfSlavesDown"    # Z

    .line 4888
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4889
    return-void
.end method

.method public setReadOnlyPropagatesToServer(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4969
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4970
    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3221
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3222
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 3223
    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3231
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3232
    return-void
.end method

.method public setReplicationConnectionGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "replicationConnectionGroup"    # Ljava/lang/String;

    .line 4864
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4865
    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1
    .param p1, "replicationEnableJMX"    # Z

    .line 4896
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4897
    return-void
.end method

.method public setReportMetricsIntervalMillis(I)V
    .locals 2
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3240
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3241
    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3249
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3250
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 3783
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3784
    return-void
.end method

.method public setResultSetSizeThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4319
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4320
    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3258
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3259
    return-void
.end method

.method public setRetriesAllDown(I)V
    .locals 2
    .param p1, "retriesAllDown"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4670
    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3801
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3802
    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3267
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3268
    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3276
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3277
    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3285
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3286
    return-void
.end method

.method public setSecondsBeforeRetryMaster(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3294
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3295
    return-void
.end method

.method public setSelfDestructOnPingMaxOperations(I)V
    .locals 2
    .param p1, "maxOperations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4625
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4626
    return-void
.end method

.method public setSelfDestructOnPingSecondsLifetime(I)V
    .locals 2
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4617
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4618
    return-void
.end method

.method public setSendFractionalSeconds(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4609
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4610
    return-void
.end method

.method public setServerAffinityOrder(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostsList"    # Ljava/lang/String;

    .line 4433
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4434
    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "factoryClassname"    # Ljava/lang/String;

    .line 4844
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4845
    return-void
.end method

.method public setServerRSAPublicKeyFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "serverRSAPublicKeyFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4920
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getUpdateCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4924
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4925
    return-void

    .line 4921
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\'serverRSAPublicKeyFile\'"

    aput-object v2, v0, v1

    const-string v1, "ConnectionProperties.dynamicChangeIsNotAllowed"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 3303
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3304
    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 1
    .param p1, "variables"    # Ljava/lang/String;

    .line 3312
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3313
    return-void
.end method

.method public setSlowQueryThresholdMillis(I)V
    .locals 2
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3321
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3322
    return-void
.end method

.method public setSlowQueryThresholdNanos(J)V
    .locals 2
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4489
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4490
    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 3914
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 3915
    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 3330
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3331
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3339
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3340
    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "socksProxyHost"    # Ljava/lang/String;

    .line 4949
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4950
    return-void
.end method

.method public setSocksProxyPort(I)V
    .locals 2
    .param p1, "socksProxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4957
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4958
    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4497
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4498
    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3348
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3349
    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3357
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3358
    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4449
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4450
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4441
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4442
    return-void
.end method

.method public setTcpRcvBuf(I)V
    .locals 2
    .param p1, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4457
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4458
    return-void
.end method

.method public setTcpSndBuf(I)V
    .locals 2
    .param p1, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4465
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4466
    return-void
.end method

.method public setTcpTrafficClass(I)V
    .locals 2
    .param p1, "classFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4473
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4474
    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3366
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3367
    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3375
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3376
    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3384
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3385
    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4211
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4212
    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4139
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4140
    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4157
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4158
    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4175
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4176
    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 3887
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUltraDevWorkAround(Z)V

    .line 3888
    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4677
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4678
    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4521
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4522
    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4633
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4634
    return-void
.end method

.method public setUseCompression(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3393
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3394
    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 1
    .param p1, "configs"    # Ljava/lang/String;

    .line 4256
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4257
    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3603
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3604
    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4505
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4506
    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4391
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4392
    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4229
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4230
    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3402
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3403
    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3747
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3748
    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3411
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3412
    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3420
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3421
    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3693
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3694
    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3837
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3838
    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4601
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4602
    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3429
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3430
    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4641
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4642
    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4481
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4482
    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4067
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4068
    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3438
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3439
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 3440
    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3448
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3449
    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3457
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3458
    return-void
.end method

.method public setUseSSL(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3484
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3485
    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4193
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4194
    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 3932
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseServerPreparedStmts(Z)V

    .line 3933
    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3466
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3467
    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3475
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3476
    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3493
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3494
    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3502
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3503
    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 1
    .param p1, "property"    # Z

    .line 3511
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3512
    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3520
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3521
    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3529
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3530
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 3531
    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 1
    .param p1, "useUsageAdvisorFlag"    # Z

    .line 3539
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3540
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 3541
    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 4529
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4530
    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regexPattern"    # Ljava/lang/String;

    .line 4537
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 4538
    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 4593
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 4594
    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 3549
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3550
    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 1
    .param p1, "behavior"    # Ljava/lang/String;

    .line 3558
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 3559
    return-void
.end method

.method protected storeToRef(Ljavax/naming/Reference;)V
    .locals 6
    .param p1, "ref"    # Ljavax/naming/Reference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3562
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3564
    .local v0, "numPropertiesToSet":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3565
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 3568
    .local v2, "propertyField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 3570
    .local v3, "propToStore":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    if-eqz p1, :cond_0

    .line 3571
    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->storeTo(Ljavax/naming/Reference;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3575
    .end local v3    # "propToStore":Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
    :cond_0
    nop

    .line 3564
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3573
    .restart local v2    # "propertyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 3574
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    const-string v4, "ConnectionProperties.errorNotExpected"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 3577
    .end local v1    # "i":I
    .end local v2    # "propertyField":Ljava/lang/reflect/Field;
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :cond_1
    return-void
.end method

.method public useUnbufferedInput()Z
    .locals 1

    .line 3585
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method
