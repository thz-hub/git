.class public interface abstract Lcom/mysql/jdbc/MySQLConnection;
.super Ljava/lang/Object;
.source "MySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/Connection;
.implements Lcom/mysql/jdbc/ConnectionProperties;


# virtual methods
.method public abstract createNewIO(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract dumpTestcaseQuery(Ljava/lang/String;)V
.end method

.method public abstract duplicate()Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
.end method

.method public abstract getActiveStatementCount()I
.end method

.method public abstract getAutoIncrementIncrement()I
.end method

.method public abstract getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
.end method

.method public abstract getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
.end method

.method public abstract getCancelTimer()Ljava/util/Timer;
.end method

.method public abstract getCharacterSetMetadata()Ljava/lang/String;
.end method

.method public abstract getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getCharsetNameForIndex(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getConnectionAttributes()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getDefaultTimeZone()Ljava/util/TimeZone;
.end method

.method public abstract getEncodingForIndex(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getErrorMessageEncoding()Ljava/lang/String;
.end method

.method public abstract getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getHostPortPair()Ljava/lang/String;
.end method

.method public abstract getIO()Lcom/mysql/jdbc/MysqlIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getId()J
.end method

.method public abstract getIdleFor()J
.end method

.method public abstract getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLog()Lcom/mysql/jdbc/log/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getMaxBytesPerChar(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getMetadataSafeStatement()Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
.end method

.method public abstract getNetBufferLength()I
.end method

.method public abstract getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
.end method

.method public abstract getProperties()Ljava/util/Properties;
.end method

.method public abstract getQueryTimingUnits()Ljava/lang/String;
.end method

.method public abstract getRequiresEscapingEncoder()Z
.end method

.method public abstract getServerCharset()Ljava/lang/String;
.end method

.method public abstract getServerMajorVersion()I
.end method

.method public abstract getServerMinorVersion()I
.end method

.method public abstract getServerSubMinorVersion()I
.end method

.method public abstract getServerTimezoneTZ()Ljava/util/TimeZone;
.end method

.method public abstract getServerVariable(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getServerVersion()Ljava/lang/String;
.end method

.method public abstract getSessionLockedCalendar()Ljava/util/Calendar;
.end method

.method public abstract getStatementComment()Ljava/lang/String;
.end method

.method public abstract getStatementInterceptorsInstances()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract getUtcCalendar()Ljava/util/Calendar;
.end method

.method public abstract incrementNumberOfPreparedExecutes()V
.end method

.method public abstract incrementNumberOfPrepares()V
.end method

.method public abstract incrementNumberOfResultSetsCreated()V
.end method

.method public abstract initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract initializeSafeStatementInterceptors()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isAbonormallyLongQuery(J)Z
.end method

.method public abstract isClientTzUTC()Z
.end method

.method public abstract isCursorFetchEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isProxySet()Z
.end method

.method public abstract isReadInfoMsgEnabled()Z
.end method

.method public abstract isReadOnly()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isReadOnly(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isRunningOnJDK13()Z
.end method

.method public abstract isServerTruncatesFracSecs()Z
.end method

.method public abstract isServerTzUTC()Z
.end method

.method public abstract lowerCaseTableNames()Z
.end method

.method public abstract pingInternal(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract realClose(ZZZLjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract registerQueryExecutionTime(J)V
.end method

.method public abstract registerStatement(Lcom/mysql/jdbc/Statement;)V
.end method

.method public abstract reportNumberOfTablesAccessed(I)V
.end method

.method public abstract serverSupportsConvertFn()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
.end method

.method public abstract setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
.end method

.method public abstract setReadInfoMsgEnabled(Z)V
.end method

.method public abstract setReadOnlyInternal(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract shutdownServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract storesLowerCaseTableName()Z
.end method

.method public abstract throwConnectionClosedException()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract transactionBegun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract transactionCompleted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract unSafeStatementInterceptors()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract unregisterStatement(Lcom/mysql/jdbc/Statement;)V
.end method

.method public abstract useAnsiQuotedIdentifiers()Z
.end method
