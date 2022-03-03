.class public interface abstract Lcom/mysql/jdbc/ConnectionProperties;
.super Ljava/lang/Object;
.source "ConnectionProperties.java"


# virtual methods
.method public abstract exposeAsXml()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getAllowLoadLocalInfile()Z
.end method

.method public abstract getAllowMasterDownConnections()Z
.end method

.method public abstract getAllowMultiQueries()Z
.end method

.method public abstract getAllowNanAndInf()Z
.end method

.method public abstract getAllowPublicKeyRetrieval()Z
.end method

.method public abstract getAllowSlaveDownConnections()Z
.end method

.method public abstract getAllowUrlInLocalInfile()Z
.end method

.method public abstract getAlwaysSendSetIsolation()Z
.end method

.method public abstract getAuthenticationPlugins()Ljava/lang/String;
.end method

.method public abstract getAutoClosePStmtStreams()Z
.end method

.method public abstract getAutoDeserialize()Z
.end method

.method public abstract getAutoGenerateTestcaseScript()Z
.end method

.method public abstract getAutoReconnectForPools()Z
.end method

.method public abstract getAutoSlowLog()Z
.end method

.method public abstract getBlobSendChunkSize()I
.end method

.method public abstract getBlobsAreStrings()Z
.end method

.method public abstract getCacheCallableStatements()Z
.end method

.method public abstract getCacheCallableStmts()Z
.end method

.method public abstract getCacheDefaultTimezone()Z
.end method

.method public abstract getCachePrepStmts()Z
.end method

.method public abstract getCachePreparedStatements()Z
.end method

.method public abstract getCacheResultSetMetadata()Z
.end method

.method public abstract getCacheServerConfiguration()Z
.end method

.method public abstract getCallableStatementCacheSize()I
.end method

.method public abstract getCallableStmtCacheSize()I
.end method

.method public abstract getCapitalizeTypeNames()Z
.end method

.method public abstract getCharacterSetResults()Ljava/lang/String;
.end method

.method public abstract getClientCertificateKeyStorePassword()Ljava/lang/String;
.end method

.method public abstract getClientCertificateKeyStoreType()Ljava/lang/String;
.end method

.method public abstract getClientCertificateKeyStoreUrl()Ljava/lang/String;
.end method

.method public abstract getClientInfoProvider()Ljava/lang/String;
.end method

.method public abstract getClobCharacterEncoding()Ljava/lang/String;
.end method

.method public abstract getClobberStreamingResults()Z
.end method

.method public abstract getCompensateOnDuplicateKeyUpdateCounts()Z
.end method

.method public abstract getConnectTimeout()I
.end method

.method public abstract getConnectionAttributes()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getConnectionCollation()Ljava/lang/String;
.end method

.method public abstract getConnectionLifecycleInterceptors()Ljava/lang/String;
.end method

.method public abstract getContinueBatchOnError()Z
.end method

.method public abstract getCreateDatabaseIfNotExist()Z
.end method

.method public abstract getDefaultAuthenticationPlugin()Ljava/lang/String;
.end method

.method public abstract getDefaultFetchSize()I
.end method

.method public abstract getDetectCustomCollations()Z
.end method

.method public abstract getDisabledAuthenticationPlugins()Ljava/lang/String;
.end method

.method public abstract getDisconnectOnExpiredPasswords()Z
.end method

.method public abstract getDontCheckOnDuplicateKeyUpdateInSQL()Z
.end method

.method public abstract getDontTrackOpenResources()Z
.end method

.method public abstract getDumpMetadataOnColumnNotFound()Z
.end method

.method public abstract getDumpQueriesOnException()Z
.end method

.method public abstract getDynamicCalendars()Z
.end method

.method public abstract getElideSetAutoCommits()Z
.end method

.method public abstract getEmptyStringsConvertToZero()Z
.end method

.method public abstract getEmulateLocators()Z
.end method

.method public abstract getEmulateUnsupportedPstmts()Z
.end method

.method public abstract getEnableEscapeProcessing()Z
.end method

.method public abstract getEnablePacketDebug()Z
.end method

.method public abstract getEnableQueryTimeouts()Z
.end method

.method public abstract getEnabledSSLCipherSuites()Ljava/lang/String;
.end method

.method public abstract getEnabledTLSProtocols()Ljava/lang/String;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
.end method

.method public abstract getExceptionInterceptors()Ljava/lang/String;
.end method

.method public abstract getExplainSlowQueries()Z
.end method

.method public abstract getFailOverReadOnly()Z
.end method

.method public abstract getFunctionsNeverReturnBlobs()Z
.end method

.method public abstract getGatherPerfMetrics()Z
.end method

.method public abstract getGatherPerformanceMetrics()Z
.end method

.method public abstract getGenerateSimpleParameterMetadata()Z
.end method

.method public abstract getGetProceduresReturnsFunctions()Z
.end method

.method public abstract getHoldResultsOpenOverStatementClose()Z
.end method

.method public abstract getIgnoreNonTxTables()Z
.end method

.method public abstract getIncludeInnodbStatusInDeadlockExceptions()Z
.end method

.method public abstract getIncludeThreadDumpInDeadlockExceptions()Z
.end method

.method public abstract getIncludeThreadNamesAsStatementComment()Z
.end method

.method public abstract getInitialTimeout()I
.end method

.method public abstract getInteractiveClient()Z
.end method

.method public abstract getIsInteractiveClient()Z
.end method

.method public abstract getJdbcCompliantTruncation()Z
.end method

.method public abstract getJdbcCompliantTruncationForReads()Z
.end method

.method public abstract getLargeRowSizeThreshold()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceAutoCommitStatementThreshold()I
.end method

.method public abstract getLoadBalanceBlacklistTimeout()I
.end method

.method public abstract getLoadBalanceConnectionGroup()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceEnableJMX()Z
.end method

.method public abstract getLoadBalanceExceptionChecker()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceHostRemovalGracePeriod()I
.end method

.method public abstract getLoadBalancePingTimeout()I
.end method

.method public abstract getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceSQLStateFailover()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceStrategy()Ljava/lang/String;
.end method

.method public abstract getLoadBalanceValidateConnectionOnSwapServer()Z
.end method

.method public abstract getLocalSocketAddress()Ljava/lang/String;
.end method

.method public abstract getLocatorFetchBufferSize()I
.end method

.method public abstract getLogSlowQueries()Z
.end method

.method public abstract getLogXaCommands()Z
.end method

.method public abstract getLogger()Ljava/lang/String;
.end method

.method public abstract getLoggerClassName()Ljava/lang/String;
.end method

.method public abstract getMaintainTimeStats()Z
.end method

.method public abstract getMaxAllowedPacket()I
.end method

.method public abstract getMaxQuerySizeToLog()I
.end method

.method public abstract getMaxReconnects()I
.end method

.method public abstract getMaxRows()I
.end method

.method public abstract getMetadataCacheSize()I
.end method

.method public abstract getNetTimeoutForStreamingResults()I
.end method

.method public abstract getNoAccessToProcedureBodies()Z
.end method

.method public abstract getNoDatetimeStringSync()Z
.end method

.method public abstract getNoTimezoneConversionForDateType()Z
.end method

.method public abstract getNoTimezoneConversionForTimeType()Z
.end method

.method public abstract getNullCatalogMeansCurrent()Z
.end method

.method public abstract getNullNamePatternMatchesAll()Z
.end method

.method public abstract getOverrideSupportsIntegrityEnhancementFacility()Z
.end method

.method public abstract getPacketDebugBufferSize()I
.end method

.method public abstract getPadCharsWithSpace()Z
.end method

.method public abstract getParanoid()Z
.end method

.method public abstract getParseInfoCacheFactory()Ljava/lang/String;
.end method

.method public abstract getPasswordCharacterEncoding()Ljava/lang/String;
.end method

.method public abstract getPedantic()Z
.end method

.method public abstract getPinGlobalTxToPhysicalConnection()Z
.end method

.method public abstract getPopulateInsertRowWithDefaultValues()Z
.end method

.method public abstract getPrepStmtCacheSize()I
.end method

.method public abstract getPrepStmtCacheSqlLimit()I
.end method

.method public abstract getPreparedStatementCacheSize()I
.end method

.method public abstract getPreparedStatementCacheSqlLimit()I
.end method

.method public abstract getProcessEscapeCodesForPrepStmts()Z
.end method

.method public abstract getProfileSQL()Z
.end method

.method public abstract getProfileSql()Z
.end method

.method public abstract getProfilerEventHandler()Ljava/lang/String;
.end method

.method public abstract getPropertiesTransform()Ljava/lang/String;
.end method

.method public abstract getQueriesBeforeRetryMaster()I
.end method

.method public abstract getQueryTimeoutKillsConnection()Z
.end method

.method public abstract getReadFromMasterWhenNoSlaves()Z
.end method

.method public abstract getReadOnlyPropagatesToServer()Z
.end method

.method public abstract getReconnectAtTxEnd()Z
.end method

.method public abstract getRelaxAutoCommit()Z
.end method

.method public abstract getReplicationEnableJMX()Z
.end method

.method public abstract getReportMetricsIntervalMillis()I
.end method

.method public abstract getRequireSSL()Z
.end method

.method public abstract getResourceId()Ljava/lang/String;
.end method

.method public abstract getResultSetSizeThreshold()I
.end method

.method public abstract getRetainStatementAfterResultSetClose()Z
.end method

.method public abstract getRetriesAllDown()I
.end method

.method public abstract getRewriteBatchedStatements()Z
.end method

.method public abstract getRollbackOnPooledClose()Z
.end method

.method public abstract getRoundRobinLoadBalance()Z
.end method

.method public abstract getRunningCTS13()Z
.end method

.method public abstract getSecondsBeforeRetryMaster()I
.end method

.method public abstract getSelfDestructOnPingMaxOperations()I
.end method

.method public abstract getSelfDestructOnPingSecondsLifetime()I
.end method

.method public abstract getSendFractionalSeconds()Z
.end method

.method public abstract getServerAffinityOrder()Ljava/lang/String;
.end method

.method public abstract getServerConfigCacheFactory()Ljava/lang/String;
.end method

.method public abstract getServerRSAPublicKeyFile()Ljava/lang/String;
.end method

.method public abstract getServerTimezone()Ljava/lang/String;
.end method

.method public abstract getSessionVariables()Ljava/lang/String;
.end method

.method public abstract getSlowQueryThresholdMillis()I
.end method

.method public abstract getSlowQueryThresholdNanos()J
.end method

.method public abstract getSocketFactory()Ljava/lang/String;
.end method

.method public abstract getSocketFactoryClassName()Ljava/lang/String;
.end method

.method public abstract getSocketTimeout()I
.end method

.method public abstract getSocksProxyHost()Ljava/lang/String;
.end method

.method public abstract getSocksProxyPort()I
.end method

.method public abstract getStatementInterceptors()Ljava/lang/String;
.end method

.method public abstract getStrictFloatingPoint()Z
.end method

.method public abstract getStrictUpdates()Z
.end method

.method public abstract getTcpKeepAlive()Z
.end method

.method public abstract getTcpNoDelay()Z
.end method

.method public abstract getTcpRcvBuf()I
.end method

.method public abstract getTcpSndBuf()I
.end method

.method public abstract getTcpTrafficClass()I
.end method

.method public abstract getTinyInt1isBit()Z
.end method

.method public abstract getTraceProtocol()Z
.end method

.method public abstract getTransformedBitIsBoolean()Z
.end method

.method public abstract getTreatUtilDateAsTimestamp()Z
.end method

.method public abstract getTrustCertificateKeyStorePassword()Ljava/lang/String;
.end method

.method public abstract getTrustCertificateKeyStoreType()Ljava/lang/String;
.end method

.method public abstract getTrustCertificateKeyStoreUrl()Ljava/lang/String;
.end method

.method public abstract getUltraDevHack()Z
.end method

.method public abstract getUseAffectedRows()Z
.end method

.method public abstract getUseBlobToStoreUTF8OutsideBMP()Z
.end method

.method public abstract getUseColumnNamesInFindColumn()Z
.end method

.method public abstract getUseCompression()Z
.end method

.method public abstract getUseConfigs()Ljava/lang/String;
.end method

.method public abstract getUseCursorFetch()Z
.end method

.method public abstract getUseDirectRowUnpack()Z
.end method

.method public abstract getUseDynamicCharsetInfo()Z
.end method

.method public abstract getUseFastDateParsing()Z
.end method

.method public abstract getUseFastIntParsing()Z
.end method

.method public abstract getUseGmtMillisForDatetimes()Z
.end method

.method public abstract getUseHostsInPrivileges()Z
.end method

.method public abstract getUseInformationSchema()Z
.end method

.method public abstract getUseJDBCCompliantTimezoneShift()Z
.end method

.method public abstract getUseJvmCharsetConverters()Z
.end method

.method public abstract getUseLegacyDatetimeCode()Z
.end method

.method public abstract getUseLocalSessionState()Z
.end method

.method public abstract getUseLocalTransactionState()Z
.end method

.method public abstract getUseNanosForElapsedTime()Z
.end method

.method public abstract getUseOldAliasMetadataBehavior()Z
.end method

.method public abstract getUseOldUTF8Behavior()Z
.end method

.method public abstract getUseOnlyServerErrorMessages()Z
.end method

.method public abstract getUseReadAheadInput()Z
.end method

.method public abstract getUseSSL()Z
.end method

.method public abstract getUseSSPSCompatibleTimezoneShift()Z
.end method

.method public abstract getUseServerPrepStmts()Z
.end method

.method public abstract getUseServerPreparedStmts()Z
.end method

.method public abstract getUseSqlStateCodes()Z
.end method

.method public abstract getUseStreamLengthsInPrepStmts()Z
.end method

.method public abstract getUseTimezone()Z
.end method

.method public abstract getUseUltraDevWorkAround()Z
.end method

.method public abstract getUseUnbufferedInput()Z
.end method

.method public abstract getUseUnicode()Z
.end method

.method public abstract getUseUsageAdvisor()Z
.end method

.method public abstract getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
.end method

.method public abstract getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
.end method

.method public abstract getVerifyServerCertificate()Z
.end method

.method public abstract getYearIsDateType()Z
.end method

.method public abstract getZeroDateTimeBehavior()Ljava/lang/String;
.end method

.method public abstract isUseSSLExplicit()Z
.end method

.method public abstract setAllowLoadLocalInfile(Z)V
.end method

.method public abstract setAllowMasterDownConnections(Z)V
.end method

.method public abstract setAllowMultiQueries(Z)V
.end method

.method public abstract setAllowNanAndInf(Z)V
.end method

.method public abstract setAllowPublicKeyRetrieval(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setAllowSlaveDownConnections(Z)V
.end method

.method public abstract setAllowUrlInLocalInfile(Z)V
.end method

.method public abstract setAlwaysSendSetIsolation(Z)V
.end method

.method public abstract setAuthenticationPlugins(Ljava/lang/String;)V
.end method

.method public abstract setAutoClosePStmtStreams(Z)V
.end method

.method public abstract setAutoDeserialize(Z)V
.end method

.method public abstract setAutoGenerateTestcaseScript(Z)V
.end method

.method public abstract setAutoReconnect(Z)V
.end method

.method public abstract setAutoReconnectForConnectionPools(Z)V
.end method

.method public abstract setAutoReconnectForPools(Z)V
.end method

.method public abstract setAutoSlowLog(Z)V
.end method

.method public abstract setBlobSendChunkSize(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setBlobsAreStrings(Z)V
.end method

.method public abstract setCacheCallableStatements(Z)V
.end method

.method public abstract setCacheCallableStmts(Z)V
.end method

.method public abstract setCacheDefaultTimezone(Z)V
.end method

.method public abstract setCachePrepStmts(Z)V
.end method

.method public abstract setCachePreparedStatements(Z)V
.end method

.method public abstract setCacheResultSetMetadata(Z)V
.end method

.method public abstract setCacheServerConfiguration(Z)V
.end method

.method public abstract setCallableStatementCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setCallableStmtCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setCapitalizeDBMDTypes(Z)V
.end method

.method public abstract setCapitalizeTypeNames(Z)V
.end method

.method public abstract setCharacterEncoding(Ljava/lang/String;)V
.end method

.method public abstract setCharacterSetResults(Ljava/lang/String;)V
.end method

.method public abstract setClientCertificateKeyStorePassword(Ljava/lang/String;)V
.end method

.method public abstract setClientCertificateKeyStoreType(Ljava/lang/String;)V
.end method

.method public abstract setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
.end method

.method public abstract setClientInfoProvider(Ljava/lang/String;)V
.end method

.method public abstract setClobCharacterEncoding(Ljava/lang/String;)V
.end method

.method public abstract setClobberStreamingResults(Z)V
.end method

.method public abstract setCompensateOnDuplicateKeyUpdateCounts(Z)V
.end method

.method public abstract setConnectTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setConnectionCollation(Ljava/lang/String;)V
.end method

.method public abstract setConnectionLifecycleInterceptors(Ljava/lang/String;)V
.end method

.method public abstract setContinueBatchOnError(Z)V
.end method

.method public abstract setCreateDatabaseIfNotExist(Z)V
.end method

.method public abstract setDefaultAuthenticationPlugin(Ljava/lang/String;)V
.end method

.method public abstract setDefaultFetchSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setDetectCustomCollations(Z)V
.end method

.method public abstract setDetectServerPreparedStmts(Z)V
.end method

.method public abstract setDisabledAuthenticationPlugins(Ljava/lang/String;)V
.end method

.method public abstract setDisconnectOnExpiredPasswords(Z)V
.end method

.method public abstract setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
.end method

.method public abstract setDontTrackOpenResources(Z)V
.end method

.method public abstract setDumpMetadataOnColumnNotFound(Z)V
.end method

.method public abstract setDumpQueriesOnException(Z)V
.end method

.method public abstract setDynamicCalendars(Z)V
.end method

.method public abstract setElideSetAutoCommits(Z)V
.end method

.method public abstract setEmptyStringsConvertToZero(Z)V
.end method

.method public abstract setEmulateLocators(Z)V
.end method

.method public abstract setEmulateUnsupportedPstmts(Z)V
.end method

.method public abstract setEnableEscapeProcessing(Z)V
.end method

.method public abstract setEnablePacketDebug(Z)V
.end method

.method public abstract setEnableQueryTimeouts(Z)V
.end method

.method public abstract setEnabledSSLCipherSuites(Ljava/lang/String;)V
.end method

.method public abstract setEnabledTLSProtocols(Ljava/lang/String;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setExceptionInterceptors(Ljava/lang/String;)V
.end method

.method public abstract setExplainSlowQueries(Z)V
.end method

.method public abstract setFailOverReadOnly(Z)V
.end method

.method public abstract setFunctionsNeverReturnBlobs(Z)V
.end method

.method public abstract setGatherPerfMetrics(Z)V
.end method

.method public abstract setGatherPerformanceMetrics(Z)V
.end method

.method public abstract setGenerateSimpleParameterMetadata(Z)V
.end method

.method public abstract setGetProceduresReturnsFunctions(Z)V
.end method

.method public abstract setHoldResultsOpenOverStatementClose(Z)V
.end method

.method public abstract setIgnoreNonTxTables(Z)V
.end method

.method public abstract setIncludeInnodbStatusInDeadlockExceptions(Z)V
.end method

.method public abstract setIncludeThreadDumpInDeadlockExceptions(Z)V
.end method

.method public abstract setIncludeThreadNamesAsStatementComment(Z)V
.end method

.method public abstract setInitialTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setInteractiveClient(Z)V
.end method

.method public abstract setIsInteractiveClient(Z)V
.end method

.method public abstract setJdbcCompliantTruncation(Z)V
.end method

.method public abstract setJdbcCompliantTruncationForReads(Z)V
.end method

.method public abstract setLargeRowSizeThreshold(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceAutoCommitStatementThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLoadBalanceBlacklistTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLoadBalanceConnectionGroup(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceEnableJMX(Z)V
.end method

.method public abstract setLoadBalanceExceptionChecker(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceHostRemovalGracePeriod(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLoadBalancePingTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceStrategy(Ljava/lang/String;)V
.end method

.method public abstract setLoadBalanceValidateConnectionOnSwapServer(Z)V
.end method

.method public abstract setLocalSocketAddress(Ljava/lang/String;)V
.end method

.method public abstract setLocatorFetchBufferSize(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setLogSlowQueries(Z)V
.end method

.method public abstract setLogXaCommands(Z)V
.end method

.method public abstract setLogger(Ljava/lang/String;)V
.end method

.method public abstract setLoggerClassName(Ljava/lang/String;)V
.end method

.method public abstract setMaintainTimeStats(Z)V
.end method

.method public abstract setMaxQuerySizeToLog(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setMaxReconnects(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setMaxRows(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setMetadataCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setNetTimeoutForStreamingResults(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setNoAccessToProcedureBodies(Z)V
.end method

.method public abstract setNoDatetimeStringSync(Z)V
.end method

.method public abstract setNoTimezoneConversionForDateType(Z)V
.end method

.method public abstract setNoTimezoneConversionForTimeType(Z)V
.end method

.method public abstract setNullCatalogMeansCurrent(Z)V
.end method

.method public abstract setNullNamePatternMatchesAll(Z)V
.end method

.method public abstract setOverrideSupportsIntegrityEnhancementFacility(Z)V
.end method

.method public abstract setPacketDebugBufferSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setPadCharsWithSpace(Z)V
.end method

.method public abstract setParanoid(Z)V
.end method

.method public abstract setParseInfoCacheFactory(Ljava/lang/String;)V
.end method

.method public abstract setPasswordCharacterEncoding(Ljava/lang/String;)V
.end method

.method public abstract setPedantic(Z)V
.end method

.method public abstract setPinGlobalTxToPhysicalConnection(Z)V
.end method

.method public abstract setPopulateInsertRowWithDefaultValues(Z)V
.end method

.method public abstract setPrepStmtCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setPrepStmtCacheSqlLimit(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setPreparedStatementCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setPreparedStatementCacheSqlLimit(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setProcessEscapeCodesForPrepStmts(Z)V
.end method

.method public abstract setProfileSQL(Z)V
.end method

.method public abstract setProfileSql(Z)V
.end method

.method public abstract setProfilerEventHandler(Ljava/lang/String;)V
.end method

.method public abstract setPropertiesTransform(Ljava/lang/String;)V
.end method

.method public abstract setQueriesBeforeRetryMaster(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setQueryTimeoutKillsConnection(Z)V
.end method

.method public abstract setReadFromMasterWhenNoSlaves(Z)V
.end method

.method public abstract setReadOnlyPropagatesToServer(Z)V
.end method

.method public abstract setReconnectAtTxEnd(Z)V
.end method

.method public abstract setRelaxAutoCommit(Z)V
.end method

.method public abstract setReplicationEnableJMX(Z)V
.end method

.method public abstract setReportMetricsIntervalMillis(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setRequireSSL(Z)V
.end method

.method public abstract setResourceId(Ljava/lang/String;)V
.end method

.method public abstract setResultSetSizeThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setRetainStatementAfterResultSetClose(Z)V
.end method

.method public abstract setRetriesAllDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setRewriteBatchedStatements(Z)V
.end method

.method public abstract setRollbackOnPooledClose(Z)V
.end method

.method public abstract setRoundRobinLoadBalance(Z)V
.end method

.method public abstract setRunningCTS13(Z)V
.end method

.method public abstract setSecondsBeforeRetryMaster(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSelfDestructOnPingMaxOperations(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSelfDestructOnPingSecondsLifetime(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSendFractionalSeconds(Z)V
.end method

.method public abstract setServerAffinityOrder(Ljava/lang/String;)V
.end method

.method public abstract setServerConfigCacheFactory(Ljava/lang/String;)V
.end method

.method public abstract setServerRSAPublicKeyFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setServerTimezone(Ljava/lang/String;)V
.end method

.method public abstract setSessionVariables(Ljava/lang/String;)V
.end method

.method public abstract setSlowQueryThresholdMillis(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSlowQueryThresholdNanos(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSocketFactory(Ljava/lang/String;)V
.end method

.method public abstract setSocketFactoryClassName(Ljava/lang/String;)V
.end method

.method public abstract setSocketTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSocksProxyHost(Ljava/lang/String;)V
.end method

.method public abstract setSocksProxyPort(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setStatementInterceptors(Ljava/lang/String;)V
.end method

.method public abstract setStrictFloatingPoint(Z)V
.end method

.method public abstract setStrictUpdates(Z)V
.end method

.method public abstract setTcpKeepAlive(Z)V
.end method

.method public abstract setTcpNoDelay(Z)V
.end method

.method public abstract setTcpRcvBuf(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setTcpSndBuf(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setTcpTrafficClass(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setTinyInt1isBit(Z)V
.end method

.method public abstract setTraceProtocol(Z)V
.end method

.method public abstract setTransformedBitIsBoolean(Z)V
.end method

.method public abstract setTreatUtilDateAsTimestamp(Z)V
.end method

.method public abstract setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
.end method

.method public abstract setTrustCertificateKeyStoreType(Ljava/lang/String;)V
.end method

.method public abstract setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
.end method

.method public abstract setUltraDevHack(Z)V
.end method

.method public abstract setUseAffectedRows(Z)V
.end method

.method public abstract setUseBlobToStoreUTF8OutsideBMP(Z)V
.end method

.method public abstract setUseColumnNamesInFindColumn(Z)V
.end method

.method public abstract setUseCompression(Z)V
.end method

.method public abstract setUseConfigs(Ljava/lang/String;)V
.end method

.method public abstract setUseCursorFetch(Z)V
.end method

.method public abstract setUseDirectRowUnpack(Z)V
.end method

.method public abstract setUseDynamicCharsetInfo(Z)V
.end method

.method public abstract setUseFastDateParsing(Z)V
.end method

.method public abstract setUseFastIntParsing(Z)V
.end method

.method public abstract setUseGmtMillisForDatetimes(Z)V
.end method

.method public abstract setUseHostsInPrivileges(Z)V
.end method

.method public abstract setUseInformationSchema(Z)V
.end method

.method public abstract setUseJDBCCompliantTimezoneShift(Z)V
.end method

.method public abstract setUseJvmCharsetConverters(Z)V
.end method

.method public abstract setUseLegacyDatetimeCode(Z)V
.end method

.method public abstract setUseLocalSessionState(Z)V
.end method

.method public abstract setUseLocalTransactionState(Z)V
.end method

.method public abstract setUseNanosForElapsedTime(Z)V
.end method

.method public abstract setUseOldAliasMetadataBehavior(Z)V
.end method

.method public abstract setUseOldUTF8Behavior(Z)V
.end method

.method public abstract setUseOnlyServerErrorMessages(Z)V
.end method

.method public abstract setUseReadAheadInput(Z)V
.end method

.method public abstract setUseSSL(Z)V
.end method

.method public abstract setUseSSPSCompatibleTimezoneShift(Z)V
.end method

.method public abstract setUseServerPrepStmts(Z)V
.end method

.method public abstract setUseServerPreparedStmts(Z)V
.end method

.method public abstract setUseSqlStateCodes(Z)V
.end method

.method public abstract setUseStreamLengthsInPrepStmts(Z)V
.end method

.method public abstract setUseTimezone(Z)V
.end method

.method public abstract setUseUltraDevWorkAround(Z)V
.end method

.method public abstract setUseUnbufferedInput(Z)V
.end method

.method public abstract setUseUnicode(Z)V
.end method

.method public abstract setUseUsageAdvisor(Z)V
.end method

.method public abstract setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
.end method

.method public abstract setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
.end method

.method public abstract setVerifyServerCertificate(Z)V
.end method

.method public abstract setYearIsDateType(Z)V
.end method

.method public abstract setZeroDateTimeBehavior(Ljava/lang/String;)V
.end method

.method public abstract useUnbufferedInput()Z
.end method
