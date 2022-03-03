.class public Lcom/mysql/jdbc/PreparedStatement;
.super Lcom/mysql/jdbc/StatementImpl;
.source "PreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;,
        Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$ParseInfo;,
        Lcom/mysql/jdbc/PreparedStatement$EndPoint;,
        Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[B

.field private static final JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected batchCommandIndex:I

.field protected batchHasPlainStatements:Z

.field protected batchedValuesClause:Ljava/lang/String;

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private compensateForOnDuplicateKeyUpdate:Z

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private ddf:Ljava/text/SimpleDateFormat;

.field private doPingInstead:Z

.field protected firstCharOfStmt:C

.field protected isLoadDataQuery:Z

.field protected isNull:[Z

.field private isStream:[Z

.field protected numberOfExecutions:I

.field protected originalSql:Ljava/lang/String;

.field protected parameterCount:I

.field protected parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

.field private parameterStreams:[Ljava/io/InputStream;

.field protected parameterTypes:[I

.field private parameterValues:[[B

.field protected parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

.field protected rewrittenBatchSize:I

.field protected serverSupportsFracSecs:Z

.field private staticSqlStrings:[[B

.field private streamConvertBuf:[B

.field private streamLengths:[I

.field private tdf:Ljava/text/SimpleDateFormat;

.field private tsdf:Ljava/text/SimpleDateFormat;

.field protected useTrueBoolean:Z

.field protected usingAnsiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42PreparedStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4PreparedStatement"

    .line 85
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 86
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v7, v4, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 87
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v7, v4, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    aput-object v2, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "jdbc4ClassName":Ljava/lang/String;
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 98
    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 99
    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 673
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 716
    iput-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 719
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 721
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 723
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 725
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 728
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 735
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 737
    move-object v2, v1

    check-cast v2, [[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 743
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 749
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 751
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 753
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 755
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 764
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 772
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 778
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2293
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 842
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 843
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 844
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 864
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 716
    iput-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 719
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 721
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 723
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 725
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 728
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 735
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 737
    move-object v2, v1

    check-cast v2, [[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 743
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 749
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 751
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 753
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 755
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 764
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 772
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 778
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2293
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 866
    if-eqz p2, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 871
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 873
    const-string v0, "/* ping */"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    .line 875
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 877
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 879
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 881
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 883
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 885
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 888
    :cond_0
    return-void

    .line 867
    :cond_1
    const-string v0, "PreparedStatement.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    .locals 4
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "cachedParseInfo"    # Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 905
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 716
    iput-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 719
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 721
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 723
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 725
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 728
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 735
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 737
    move-object v2, v1

    check-cast v2, [[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 743
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 749
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 751
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 753
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 755
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 764
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 772
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 778
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2293
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 907
    if-eqz p2, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 912
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 916
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 918
    iput-object p4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 920
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    .line 922
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 924
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 926
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 929
    :cond_0
    return-void

    .line 908
    :cond_1
    const-string v0, "PreparedStatement.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected static canRewrite(Ljava/lang/String;ZII)Z
    .locals 10
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "isOnDuplicateKeyUpdate"    # Z
    .param p2, "locationOfOnDuplicateKeyUpdate"    # I
    .param p3, "statementStartPos"    # I

    .line 5165
    const-string v0, "INSERT"

    invoke-static {p0, v0, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 5166
    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v6, "SELECT"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    move v4, p3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 5167
    return v2

    .line 5169
    :cond_0
    if-eqz p1, :cond_2

    .line 5170
    const-string v0, " UPDATE "

    invoke-static {p2, p0, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5171
    .local v0, "updateClausePos":I
    if-eq v0, v3, :cond_2

    .line 5172
    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v6, "LAST_INSERT_ID"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    move v4, v0

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5175
    .end local v0    # "updateClausePos":I
    :cond_2
    return v1

    .line 5178
    :cond_3
    const-string v0, "REPLACE"

    invoke-static {p0, v0, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v6, "SELECT"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    move v4, p3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private checkAllParametersSet([BLjava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterString"    # [B
    .param p2, "parameterStream"    # Ljava/io/InputStream;
    .param p3, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2266
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.40"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "07001"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2271
    :cond_1
    :goto_0
    return-void
.end method

.method private doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;ILjava/util/Calendar;)V
    .locals 16
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "fractionalLength"    # I
    .param p4, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4394
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4395
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4399
    .local v0, "sessionCalendar2":Ljava/util/Calendar;
    :goto_0
    move-object/from16 v3, p4

    :try_start_1
    invoke-static {v0, v3}, Lcom/mysql/jdbc/TimeUtil;->setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 4401
    .end local v0    # "sessionCalendar2":Ljava/util/Calendar;
    .local v4, "sessionCalendar2":Ljava/util/Calendar;
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4402
    :try_start_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v5, v0

    .line 4405
    .local v5, "oldTime":Ljava/util/Date;
    move-object/from16 v6, p2

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4407
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 4408
    .local v7, "year":I
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v0

    .line 4409
    .local v8, "month":I
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4411
    .local v0, "date":I
    const/16 v9, 0xb

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 4412
    .local v9, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4413
    .local v10, "minute":I
    const/16 v11, 0xd

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 4415
    .local v11, "seconds":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 4417
    .local v12, "tsBuf":Ljava/lang/StringBuilder;
    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4418
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4420
    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4422
    const/16 v14, 0x30

    const/16 v15, 0xa

    if-ge v8, v15, :cond_1

    .line 4423
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4426
    :cond_1
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4428
    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4430
    if-ge v0, v15, :cond_2

    .line 4431
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4434
    :cond_2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4436
    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4438
    if-ge v9, v15, :cond_3

    .line 4439
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4442
    :cond_3
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4444
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4446
    if-ge v10, v15, :cond_4

    .line 4447
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4450
    :cond_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4452
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4454
    if-ge v11, v15, :cond_5

    .line 4455
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4458
    :cond_5
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4460
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4461
    invoke-virtual/range {p2 .. p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v13

    iget-boolean v14, v1, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v15, p3

    :try_start_4
    invoke-static {v13, v14, v15}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4464
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v14, p1

    :try_start_5
    invoke-virtual {v1, v14, v13}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4466
    .end local v0    # "date":I
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v11    # "seconds":I
    .end local v12    # "tsBuf":Ljava/lang/StringBuilder;
    nop

    .line 4471
    :try_start_6
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4468
    nop

    .line 4469
    .end local v5    # "oldTime":Ljava/util/Date;
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4470
    .end local v4    # "sessionCalendar2":Ljava/util/Calendar;
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 4471
    return-void

    .line 4467
    .restart local v4    # "sessionCalendar2":Ljava/util/Calendar;
    .restart local v5    # "oldTime":Ljava/util/Date;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v14, p1

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    move/from16 v15, p3

    .line 4471
    :goto_1
    :try_start_8
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4467
    nop

    .end local v4    # "sessionCalendar2":Ljava/util/Calendar;
    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Timestamp;
    .end local p3    # "fractionalLength":I
    .end local p4    # "targetCalendar":Ljava/util/Calendar;
    throw v0

    .line 4469
    .end local v5    # "oldTime":Ljava/util/Date;
    .restart local v4    # "sessionCalendar2":Ljava/util/Calendar;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Timestamp;
    .restart local p3    # "fractionalLength":I
    .restart local p4    # "targetCalendar":Ljava/util/Calendar;
    :catchall_3
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v6, p2

    move/from16 v15, p3

    :goto_2
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/sql/Timestamp;
    .end local p3    # "fractionalLength":I
    .end local p4    # "targetCalendar":Ljava/util/Calendar;
    :try_start_9
    throw v0

    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/sql/Timestamp;
    .restart local p3    # "fractionalLength":I
    .restart local p4    # "targetCalendar":Ljava/util/Calendar;
    :catchall_4
    move-exception v0

    goto :goto_2

    .line 4470
    .end local v4    # "sessionCalendar2":Ljava/util/Calendar;
    :catchall_5
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v6, p2

    move/from16 v15, p3

    goto :goto_3

    :catchall_6
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v3, p4

    :goto_3
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_3
.end method

.method private final escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1082
    const/4 v0, 0x0

    .line 1084
    .local v0, "lastwritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1085
    aget-byte v2, p1, v1

    .line 1087
    .local v2, "b":B
    const/16 v3, 0x5c

    if-nez v2, :cond_1

    .line 1089
    if-le v1, v0, :cond_0

    .line 1090
    sub-int v4, v1, v0

    invoke-virtual {p2, p1, v0, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1094
    :cond_0
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1095
    const/16 v3, 0x30

    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1096
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 1098
    :cond_1
    if-eq v2, v3, :cond_2

    const/16 v4, 0x27

    if-eq v2, v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v4, :cond_4

    const/16 v4, 0x22

    if-ne v2, v4, :cond_4

    .line 1100
    :cond_2
    if-le v1, v0, :cond_3

    .line 1101
    sub-int v4, v1, v0

    invoke-virtual {p2, p1, v0, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1105
    :cond_3
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1106
    move v0, v1

    .line 1084
    .end local v2    # "b":B
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .end local v1    # "i":I
    :cond_5
    if-ge v0, p3, :cond_6

    .line 1113
    sub-int v1, p3, v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1115
    :cond_6
    return-void
.end method

.method private final escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "bytesOut"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "size"    # I

    .line 1118
    const/4 v0, 0x0

    .line 1120
    .local v0, "lastwritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_8

    .line 1121
    aget-byte v2, p1, v1

    .line 1123
    .local v2, "b":B
    const/16 v3, 0x5c

    if-nez v2, :cond_1

    .line 1125
    if-le v1, v0, :cond_0

    .line 1126
    sub-int v4, v1, v0

    invoke-virtual {p2, p1, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1130
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1131
    const/16 v3, 0x30

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1132
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 1133
    :cond_1
    const/16 v4, 0x27

    if-ne v2, v4, :cond_4

    .line 1135
    if-le v1, v0, :cond_2

    .line 1136
    sub-int v5, v1, v0

    invoke-virtual {p2, p1, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1140
    :cond_2
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0x27

    :cond_3
    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1141
    move v0, v1

    goto :goto_1

    .line 1143
    :cond_4
    if-eq v2, v3, :cond_5

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v4, :cond_7

    const/16 v4, 0x22

    if-ne v2, v4, :cond_7

    .line 1145
    :cond_5
    if-le v1, v0, :cond_6

    .line 1146
    sub-int v4, v1, v0

    invoke-virtual {p2, p1, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1150
    :cond_6
    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1151
    move v0, v1

    .line 1120
    .end local v2    # "b":B
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    .end local v1    # "i":I
    :cond_8
    if-ge v0, p3, :cond_9

    .line 1158
    sub-int v1, p3, v0

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1160
    :cond_9
    return-void
.end method

.method private generateMultiStatementForBatch(I)Ljava/lang/String;
    .locals 4
    .param p1, "numBatches"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1514
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int v2, v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1516
    .local v1, "newStatementSql":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_0

    .line 1519
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1520
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1523
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1524
    .end local v1    # "newStatementSql":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .param p1, "dt"    # Ljava/lang/String;
    .param p2, "toTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2386
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2388
    .local v4, "dtLength":I
    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x2

    if-lt v4, v5, :cond_4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_4

    .line 2389
    const/4 v5, 0x0

    .line 2390
    .local v5, "dashCount":I
    const/4 v7, 0x1

    .line 2392
    .local v7, "isDateOnly":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 2393
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2395
    .local v9, "c":C
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/16 v11, 0x2d

    if-nez v10, :cond_1

    if-eq v9, v11, :cond_1

    .line 2396
    const/4 v7, 0x0

    .line 2398
    goto :goto_2

    .line 2401
    :cond_1
    if-ne v9, v11, :cond_2

    .line 2402
    add-int/lit8 v5, v5, 0x1

    .line 2392
    .end local v9    # "c":C
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2406
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    if-ne v5, v6, :cond_4

    .line 2407
    const-string v2, "yyyy-MM-dd"

    return-object v2

    .line 2414
    .end local v5    # "dashCount":I
    .end local v7    # "isDateOnly":Z
    :cond_4
    const/4 v5, 0x1

    .line 2416
    .local v5, "colonsOnly":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 2417
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2419
    .local v8, "c":C
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_5

    .line 2420
    const/4 v5, 0x0

    .line 2422
    goto :goto_4

    .line 2416
    .end local v8    # "c":C
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2426
    .end local v7    # "i":I
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 2427
    const-string v2, "HH:mm:ss"

    return-object v2

    .line 2436
    :cond_7
    new-instance v7, Ljava/io/StringReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2437
    .local v7, "reader":Ljava/io/StringReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2438
    .local v8, "vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2439
    .local v9, "vecRemovelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    .line 2441
    .local v11, "nv":[Ljava/lang/Object;
    const/16 v12, 0x79

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v11, v2

    .line 2442
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 2443
    aput-object v3, v11, v6

    .line 2444
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    const/16 v12, 0x68

    if-eqz p2, :cond_8

    .line 2447
    new-array v11, v10, [Ljava/lang/Object;

    .line 2448
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v11, v2

    .line 2449
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v14, v11, v13

    .line 2450
    aput-object v3, v11, v6

    .line 2451
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    :cond_8
    :goto_5
    invoke-virtual {v7}, Ljava/io/StringReader;->read()I

    move-result v3

    move v14, v3

    .local v14, "z":I
    const/4 v15, -0x1

    if-eq v3, v15, :cond_12

    .line 2455
    int-to-char v3, v14

    .line 2456
    .local v3, "separator":C
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2458
    .local v15, "maxvecs":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "count":I
    :goto_6
    if-ge v12, v15, :cond_10

    .line 2459
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, [Ljava/lang/Object;

    .line 2460
    .local v10, "v":[Ljava/lang/Object;
    aget-object v18, v10, v6

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2461
    .local v6, "n":I
    aget-object v18, v10, v2

    check-cast v18, Ljava/lang/Character;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Character;->charValue()C

    move-result v13

    invoke-direct {v0, v13, v6}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v13

    .line 2463
    .local v13, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v18

    if-nez v18, :cond_b

    .line 2464
    const/16 v18, 0x0

    aget-object v22, v10, v18

    check-cast v22, Ljava/lang/Character;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v13, v2, :cond_9

    const/16 v2, 0x53

    if-eq v13, v2, :cond_9

    .line 2465
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2467
    :cond_9
    const/4 v2, 0x1

    aget-object v22, v10, v2

    move-object/from16 v2, v22

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2469
    const/16 v2, 0x58

    if-eq v13, v2, :cond_a

    const/16 v2, 0x59

    if-ne v13, v2, :cond_f

    .line 2470
    :cond_a
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x2

    aput-object v2, v10, v18

    goto/16 :goto_8

    .line 2474
    :cond_b
    const/16 v2, 0x58

    if-ne v13, v2, :cond_c

    .line 2475
    const/16 v13, 0x79

    .line 2476
    const/4 v2, 0x3

    new-array v11, v2, [Ljava/lang/Object;

    .line 2477
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    aget-object v20, v10, v18

    check-cast v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aput-object v2, v11, v18

    .line 2478
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v11, v2

    .line 2479
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v11, v2

    .line 2480
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    goto :goto_7

    .line 2481
    :cond_c
    const/16 v1, 0x59

    if-ne v13, v1, :cond_d

    .line 2482
    const/16 v13, 0x4d

    .line 2483
    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/Object;

    .line 2484
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    aget-object v19, v10, v18

    check-cast v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aput-object v2, v11, v18

    .line 2485
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v1, 0x0

    aput-object v2, v11, v1

    .line 2486
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v11, v2

    .line 2487
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2481
    :cond_d
    const/16 v18, 0x1

    .line 2490
    :goto_7
    aget-object v1, v10, v18

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2492
    const/4 v1, 0x0

    aget-object v2, v10, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v13, v1, :cond_e

    .line 2493
    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v10, v2

    goto :goto_8

    .line 2495
    :cond_e
    const/4 v2, 0x2

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v18, 0x0

    aput-object v1, v10, v18

    .line 2496
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v10, v2

    .line 2458
    :cond_f
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x3

    const/4 v13, 0x1

    goto/16 :goto_6

    .line 2501
    .end local v6    # "n":I
    .end local v10    # "v":[Ljava/lang/Object;
    .end local v13    # "c":C
    :cond_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2503
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_11

    .line 2504
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 2505
    .local v6, "v":[Ljava/lang/Object;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2503
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2508
    .end local v2    # "i":I
    .end local v6    # "v":[Ljava/lang/Object;
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2509
    .end local v1    # "size":I
    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x3

    const/16 v12, 0x68

    const/4 v13, 0x1

    goto/16 :goto_5

    .line 2511
    .end local v3    # "separator":C
    .end local v12    # "count":I
    .end local v15    # "maxvecs":I
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2513
    .restart local v1    # "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 2514
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 2515
    .local v3, "v":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v10, v3, v6

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v6

    .line 2516
    .local v6, "c":C
    const/4 v10, 0x2

    aget-object v12, v3, v10

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2518
    .local v12, "n":I
    invoke-direct {v0, v6, v12}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v13

    if-eq v13, v6, :cond_13

    const/4 v13, 0x1

    goto :goto_b

    :cond_13
    const/4 v13, 0x0

    .line 2519
    .local v13, "bk":Z
    :goto_b
    const/16 v10, 0x73

    if-eq v6, v10, :cond_14

    const/16 v10, 0x6d

    if-eq v6, v10, :cond_14

    const/16 v10, 0x68

    if-ne v6, v10, :cond_15

    if-eqz p2, :cond_15

    goto :goto_c

    :cond_14
    const/16 v10, 0x68

    :goto_c
    if-eqz v13, :cond_15

    const/16 v16, 0x1

    goto :goto_d

    :cond_15
    const/16 v16, 0x0

    .line 2520
    .local v16, "atEnd":Z
    :goto_d
    if-eqz v13, :cond_16

    const/16 v10, 0x64

    if-ne v6, v10, :cond_17

    if-nez p2, :cond_17

    const/16 v17, 0x1

    goto :goto_e

    :cond_16
    const/16 v10, 0x64

    :cond_17
    const/16 v17, 0x0

    .line 2521
    .local v17, "finishesAtDate":Z
    :goto_e
    const/16 v19, 0x1

    aget-object v21, v3, v19

    check-cast v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x57

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v15, :cond_18

    const/4 v0, 0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    .line 2523
    .local v0, "containsEnd":Z
    :goto_f
    if-nez v16, :cond_19

    if-eqz v17, :cond_1a

    :cond_19
    if-eqz v0, :cond_1b

    .line 2524
    :cond_1a
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    .end local v0    # "containsEnd":Z
    .end local v13    # "bk":Z
    .end local v16    # "atEnd":Z
    .end local v17    # "finishesAtDate":Z
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    .line 2528
    .end local v2    # "i":I
    .end local v3    # "v":[Ljava/lang/Object;
    .end local v6    # "c":C
    .end local v12    # "n":I
    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2530
    .end local v1    # "size":I
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1d

    .line 2531
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2530
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2534
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2535
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2537
    .local v1, "v":[Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/StringBuilder;

    .line 2538
    .local v3, "format":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 790
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object v0

    .line 794
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    return-object v0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 805
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 809
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    return-object v0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "cachedParseInfo"    # Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 820
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    return-object v0

    .line 824
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    return-object v0
.end method

.method private final getSuccessor(CI)C
    .locals 8
    .param p1, "c"    # C
    .param p2, "n"    # I

    .line 2652
    const/16 v0, 0x73

    const/16 v1, 0x6d

    const/16 v2, 0x48

    const/16 v3, 0x64

    const/16 v4, 0x79

    const/16 v5, 0x4d

    const/4 v6, 0x2

    if-ne p1, v4, :cond_0

    if-ne p2, v6, :cond_0

    const/16 v0, 0x58

    goto :goto_5

    :cond_0
    if-ne p1, v4, :cond_1

    const/4 v7, 0x4

    if-ge p2, v7, :cond_1

    const/16 v0, 0x79

    goto :goto_5

    :cond_1
    if-ne p1, v4, :cond_2

    :goto_0
    const/16 v0, 0x4d

    goto :goto_5

    :cond_2
    if-ne p1, v5, :cond_3

    if-ne p2, v6, :cond_3

    const/16 v0, 0x59

    goto :goto_5

    :cond_3
    if-ne p1, v5, :cond_4

    const/4 v4, 0x3

    if-ge p2, v4, :cond_4

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    :goto_1
    const/16 v0, 0x64

    goto :goto_5

    :cond_5
    if-ne p1, v3, :cond_6

    if-ge p2, v6, :cond_6

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_7

    :goto_2
    const/16 v0, 0x48

    goto :goto_5

    :cond_7
    if-ne p1, v2, :cond_8

    if-ge p2, v6, :cond_8

    goto :goto_2

    :cond_8
    if-ne p1, v2, :cond_9

    :goto_3
    const/16 v0, 0x6d

    goto :goto_5

    :cond_9
    if-ne p1, v1, :cond_a

    if-ge p2, v6, :cond_a

    goto :goto_3

    :cond_a
    if-ne p1, v1, :cond_b

    :goto_4
    goto :goto_5

    :cond_b
    if-ne p1, v0, :cond_c

    if-ge p2, v6, :cond_c

    goto :goto_4

    :cond_c
    const/16 v0, 0x57

    :goto_5
    return v0
.end method

.method private final hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2677
    aget-byte v1, p1, v0

    .line 2678
    .local v1, "b":B
    and-int/lit16 v2, v1, 0xff

    div-int/lit8 v2, v2, 0x10

    .line 2679
    .local v2, "lowBits":I
    and-int/lit16 v3, v1, 0xff

    rem-int/lit8 v3, v3, 0x10

    .line 2681
    .local v3, "highBits":I
    sget-object v4, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v5, v4, v2

    invoke-virtual {p2, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2682
    aget-byte v4, v4, v3

    invoke-virtual {p2, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2676
    .end local v1    # "b":B
    .end local v2    # "lowBits":I
    .end local v3    # "highBits":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2684
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initializeFromParseInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2687
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2688
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2689
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 2690
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-char v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iput-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 2692
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 2694
    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2695
    new-array v2, v1, [Ljava/io/InputStream;

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2696
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2697
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2698
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2699
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2701
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 2703
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v1, v2, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 2703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2706
    .end local v1    # "j":I
    :cond_0
    monitor-exit v0

    .line 2707
    return-void

    .line 2706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isEscapeNeededForString(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "stringLength"    # I

    .line 4103
    const/4 v0, 0x0

    .line 4105
    .local v0, "needsHexEscape":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 4106
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4108
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 4124
    :sswitch_0
    const/4 v0, 0x1

    .line 4126
    goto :goto_1

    .line 4129
    :sswitch_1
    const/4 v0, 0x1

    .line 4131
    goto :goto_1

    .line 4134
    :sswitch_2
    const/4 v0, 0x1

    .line 4136
    goto :goto_1

    .line 4139
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_1

    .line 4120
    :sswitch_4
    const/4 v0, 0x1

    .line 4121
    goto :goto_1

    .line 4115
    :sswitch_5
    const/4 v0, 0x1

    .line 4117
    goto :goto_1

    .line 4111
    :sswitch_6
    const/4 v0, 0x1

    .line 4112
    nop

    .line 4143
    :goto_1
    if-eqz v0, :cond_0

    .line 4144
    goto :goto_2

    .line 4105
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4147
    .end local v1    # "i":I
    :cond_1
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x1a -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4385
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4386
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd\'\'"

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    :goto_0
    invoke-static {v1, v2, p3, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    .line 4389
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4390
    monitor-exit v0

    .line 4391
    return-void

    .line 4390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4376
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4377
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'HH:mm:ss\'\'"

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    :goto_0
    invoke-static {v1, v2, p3, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    .line 4380
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4381
    monitor-exit v0

    .line 4382
    return-void

    .line 4381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4361
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4362
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd HH:mm:ss"

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    :goto_0
    invoke-static {v1, v2, p3, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 4365
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4366
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4367
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4368
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4369
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4371
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4372
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    monitor-exit v0

    .line 4373
    return-void

    .line 4372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static readFully(Ljava/io/Reader;[CI)I
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "buf"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "numCharsRead":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 690
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 692
    .local v1, "count":I
    if-gez v1, :cond_0

    .line 693
    goto :goto_1

    .line 696
    :cond_0
    add-int/2addr v0, v1

    .line 697
    .end local v1    # "count":I
    goto :goto_0

    .line 699
    :cond_1
    :goto_1
    return v0
.end method

.method private final readblock(Ljava/io/InputStream;[B)I
    .locals 4
    .param p1, "i"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2717
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2718
    :catchall_0
    move-exception v0

    .line 2719
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2721
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2723
    throw v1
.end method

.method private final readblock(Ljava/io/InputStream;[BI)I
    .locals 4
    .param p1, "i"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2729
    move v0, p3

    .line 2731
    .local v0, "lengthToRead":I
    :try_start_0
    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 2732
    array-length v1, p2

    move v0, v1

    .line 2735
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2736
    .end local v0    # "lengthToRead":I
    :catchall_0
    move-exception v0

    .line 2737
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2739
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2741
    throw v1
.end method

.method private setNumericObject(ILjava/lang/Object;II)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "parameterObj"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3481
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 3482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3481
    const/4 v2, 0x0

    .line 3482
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3481
    if-eqz v0, :cond_1

    .line 3482
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    move-object v0, v1

    .local v0, "parameterAsNum":Ljava/lang/Number;
    goto :goto_3

    .line 3483
    .end local v0    # "parameterAsNum":Ljava/lang/Number;
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3484
    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    .line 3522
    .restart local v0    # "parameterAsNum":Ljava/lang/Number;
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 3509
    :sswitch_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 3511
    goto :goto_3

    .line 3515
    :sswitch_1
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 3517
    goto :goto_3

    .line 3504
    :sswitch_2
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 3506
    goto :goto_3

    .line 3499
    :sswitch_3
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3501
    goto :goto_3

    .line 3486
    .end local v0    # "parameterAsNum":Ljava/lang/Number;
    :sswitch_4
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 3489
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3491
    .local v0, "parameterAsBoolean":Z
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    move-object v0, v1

    .line 3494
    .local v0, "parameterAsNum":Ljava/lang/Number;
    goto :goto_3

    .line 3487
    .end local v0    # "parameterAsNum":Ljava/lang/Number;
    :cond_4
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .restart local v0    # "parameterAsNum":Ljava/lang/Number;
    goto :goto_3

    .line 3525
    .end local v0    # "parameterAsNum":Ljava/lang/Number;
    :cond_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 3528
    .restart local v0    # "parameterAsNum":Ljava/lang/Number;
    :goto_3
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 3543
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 3545
    goto/16 :goto_5

    .line 3549
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 3551
    goto/16 :goto_5

    .line 3556
    :pswitch_3
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6

    .line 3557
    const/4 v1, 0x0

    .line 3560
    .local v1, "scaledBigDecimal":Ljava/math/BigDecimal;
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v2, p4}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 3568
    goto :goto_4

    .line 3561
    :catch_0
    move-exception v2

    .line 3563
    .local v2, "ex":Ljava/lang/ArithmeticException;
    :try_start_1
    move-object v3, v0

    check-cast v3, Ljava/math/BigDecimal;

    const/4 v4, 0x4

    invoke-virtual {v3, p4, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 3567
    nop

    .line 3570
    .end local v2    # "ex":Ljava/lang/ArithmeticException;
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 3571
    .end local v1    # "scaledBigDecimal":Ljava/math/BigDecimal;
    goto :goto_5

    .line 3564
    .restart local v1    # "scaledBigDecimal":Ljava/math/BigDecimal;
    .restart local v2    # "ex":Ljava/lang/ArithmeticException;
    :catch_1
    move-exception v3

    .line 3565
    .local v3, "arEx":Ljava/lang/ArithmeticException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set scale of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\' for DECIMAL argument \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const-string v6, "S1009"

    invoke-static {v4, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 3571
    .end local v1    # "scaledBigDecimal":Ljava/math/BigDecimal;
    .end local v2    # "ex":Ljava/lang/ArithmeticException;
    .end local v3    # "arEx":Ljava/lang/ArithmeticException;
    :cond_6
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    .line 3572
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/math/BigInteger;

    invoke-direct {v1, v2, p4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_5

    .line 3574
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_5

    .line 3538
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 3540
    goto :goto_5

    .line 3533
    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 3535
    nop

    .line 3579
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_4
        -0x6 -> :sswitch_3
        -0x5 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final setSerializableObject(ILjava/lang/Object;)V
    .locals 7
    .param p1, "parameterIndex"    # I
    .param p2, "parameterObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3890
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3891
    .local v0, "bytesOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3892
    .local v1, "objectOut":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3893
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 3894
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3895
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 3896
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3898
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 3899
    .local v2, "buf":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3900
    .local v3, "bytesIn":Ljava/io/ByteArrayInputStream;
    array-length v4, v2

    invoke-virtual {p0, p1, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 3901
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3908
    .end local v0    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "objectOut":Ljava/io/ObjectOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "bytesIn":Ljava/io/ByteArrayInputStream;
    nop

    .line 3909
    return-void

    .line 3902
    :catch_0
    move-exception v0

    .line 3903
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.54"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3905
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3907
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

    .line 4204
    const/16 v0, 0x5c

    if-nez p2, :cond_0

    .line 4205
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4209
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    .line 4210
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V

    goto :goto_0

    .line 4212
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 4214
    .local v1, "sessionCalendar":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v7

    move-object v3, v1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p2

    .line 4216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4219
    .end local v1    # "sessionCalendar":Ljava/util/Calendar;
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v0, v1, v2

    .line 4221
    :goto_1
    return-void
.end method

.method private final streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V
    .locals 9
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "escape"    # Z
    .param p4, "streamLength"    # I
    .param p5, "useLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4521
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4523
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v1, :cond_0

    .line 4524
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 4527
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4529
    .local v1, "connectionEncoding":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4532
    .local v2, "hexEscape":Z
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 4534
    :cond_1
    const/4 v2, 0x1

    .line 4540
    :cond_2
    nop

    .line 4542
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 4543
    const/4 p5, 0x0

    .line 4546
    :cond_3
    const/4 v3, -0x1

    .line 4548
    .local v3, "bc":I
    if-eqz p5, :cond_4

    .line 4549
    :try_start_2
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v4, p4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 4551
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v4

    move v3, v4

    .line 4554
    :goto_0
    sub-int v4, p4, v3

    .line 4556
    .local v4, "lengthLeftToRead":I
    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 4557
    const-string v6, "x"

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto :goto_1

    .line 4558
    :cond_5
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v5}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4559
    const-string v6, "_binary"

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 4562
    :cond_6
    :goto_1
    const/16 v6, 0x27

    if-eqz p3, :cond_7

    .line 4563
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4566
    :cond_7
    :goto_2
    if-lez v3, :cond_b

    .line 4567
    if-eqz v2, :cond_8

    .line 4568
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v7, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V

    goto :goto_3

    .line 4569
    :cond_8
    if-eqz p3, :cond_9

    .line 4570
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v7, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V

    goto :goto_3

    .line 4572
    :cond_9
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-virtual {p1, v7, v5, v3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 4575
    :goto_3
    if-eqz p5, :cond_a

    .line 4576
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v7, v4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v7

    move v3, v7

    .line 4578
    if-lez v3, :cond_7

    .line 4579
    sub-int/2addr v4, v3

    goto :goto_2

    .line 4582
    :cond_a
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v7}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v7

    move v3, v7

    goto :goto_2

    .line 4586
    :cond_b
    if-eqz p3, :cond_c

    .line 4587
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4589
    .end local v1    # "connectionEncoding":Ljava/lang/String;
    .end local v2    # "hexEscape":Z
    .end local v3    # "bc":I
    .end local v4    # "lengthLeftToRead":I
    :cond_c
    nop

    .line 4600
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_d

    .line 4592
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4594
    goto :goto_4

    .line 4593
    :catch_0
    move-exception v1

    .line 4596
    :goto_4
    const/4 p2, 0x0

    :cond_d
    nop

    .line 4598
    nop

    .line 4599
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4600
    return-void

    .line 4536
    .restart local v1    # "connectionEncoding":Ljava/lang/String;
    .restart local v2    # "hexEscape":Z
    :catch_1
    move-exception v3

    .line 4537
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1009"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 4538
    .local v4, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4539
    nop

    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "escape":Z
    .end local p4    # "streamLength":I
    .end local p5    # "useLength":Z
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4590
    .end local v1    # "connectionEncoding":Ljava/lang/String;
    .end local v2    # "hexEscape":Z
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "escape":Z
    .restart local p4    # "streamLength":I
    .restart local p5    # "useLength":Z
    :catchall_0
    move-exception v1

    .line 4596
    :try_start_7
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_e

    .line 4592
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4594
    goto :goto_5

    .line 4593
    :catch_2
    move-exception v2

    .line 4596
    :goto_5
    const/4 p2, 0x0

    .line 4590
    :cond_e
    nop

    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "escape":Z
    .end local p4    # "streamLength":I
    .end local p5    # "useLength":Z
    :try_start_9
    throw v1

    .line 4599
    .restart local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "escape":Z
    .restart local p4    # "streamLength":I
    .restart local p5    # "useLength":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method

.method private final streamToBytes(Ljava/io/InputStream;ZIZ)[B
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "escape"    # Z
    .param p3, "streamLength"    # I
    .param p4, "useLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4603
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4604
    const v1, 0x7fffffff

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4606
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v1, :cond_0

    .line 4607
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 4609
    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 4610
    const/4 p4, 0x0

    .line 4613
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4615
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, -0x1

    .line 4617
    .local v2, "bc":I
    if-eqz p4, :cond_2

    .line 4618
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3, p3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 4620
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v3

    move v2, v3

    .line 4623
    :goto_0
    sub-int v3, p3, v2

    .line 4625
    .local v3, "lengthLeftToRead":I
    const/16 v4, 0x27

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 4626
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4627
    const/16 v6, 0x5f

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4628
    const/16 v6, 0x62

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4629
    const/16 v6, 0x69

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4630
    const/16 v6, 0x6e

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4631
    const/16 v6, 0x61

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4632
    const/16 v6, 0x72

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4633
    const/16 v6, 0x79

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4636
    :cond_3
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4639
    :cond_4
    :goto_1
    if-lez v2, :cond_7

    .line 4640
    if-eqz p2, :cond_5

    .line 4641
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v6, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    goto :goto_2

    .line 4643
    :cond_5
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-virtual {v1, v6, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 4646
    :goto_2
    if-eqz p4, :cond_6

    .line 4647
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v6, v3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v6

    move v2, v6

    .line 4649
    if-lez v2, :cond_4

    .line 4650
    sub-int/2addr v3, v2

    goto :goto_1

    .line 4653
    :cond_6
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v6

    move v2, v6

    goto :goto_1

    .line 4657
    :cond_7
    if-eqz p2, :cond_8

    .line 4658
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4661
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4676
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bc":I
    .end local v3    # "lengthLeftToRead":I
    nop

    .line 4664
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4666
    goto :goto_3

    .line 4665
    :catch_0
    move-exception v5

    .line 4667
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_9

    .line 4669
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4671
    goto :goto_4

    .line 4670
    :catch_1
    move-exception v5

    .line 4673
    :goto_4
    const/4 p1, 0x0

    :cond_9
    nop

    .line 4661
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bc":I
    .restart local v3    # "lengthLeftToRead":I
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v4

    .line 4663
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bc":I
    .end local v3    # "lengthLeftToRead":I
    :catchall_0
    move-exception v1

    .line 4673
    nop

    .line 4664
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4666
    goto :goto_5

    .line 4665
    :catch_2
    move-exception v2

    .line 4667
    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_a

    .line 4669
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4671
    goto :goto_6

    .line 4670
    :catch_3
    move-exception v2

    .line 4673
    :goto_6
    const/4 p1, 0x0

    :cond_a
    nop

    .line 4663
    nop

    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "escape":Z
    .end local p3    # "streamLength":I
    .end local p4    # "useLength":Z
    :try_start_9
    throw v1

    .line 4676
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "escape":Z
    .restart local p3    # "streamLength":I
    .restart local p4    # "useLength":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method


# virtual methods
.method public addBatch()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 942
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    .line 945
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 946
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/PreparedStatement$BatchParams;-><init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 956
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 958
    invoke-super {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->addBatch(Ljava/lang/String;)V

    .line 959
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asSql()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 10
    .param p1, "quoteStreamsAndUnknowns"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 969
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    .local v1, "buf":Ljava/lang/StringBuilder;
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 973
    .local v2, "realParameterCount":I
    const/4 v3, 0x0

    .line 974
    .local v3, "batchArg":Ljava/lang/Object;
    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 975
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 978
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_c

    .line 979
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 980
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 982
    :cond_1
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :goto_1
    const/4 v6, 0x0

    .line 986
    .local v6, "val":[B
    if-eqz v3, :cond_2

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 987
    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    goto/16 :goto_4

    .line 990
    :cond_2
    iget v7, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v7, v5, :cond_3

    .line 991
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v7, v7, v4

    move-object v6, v7

    goto :goto_2

    .line 993
    :cond_3
    move-object v7, v3

    check-cast v7, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v7, v7, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v7, v7, v4

    move-object v6, v7

    .line 996
    :goto_2
    const/4 v7, 0x0

    .line 997
    .local v7, "isStreamParam":Z
    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v8, v5, :cond_4

    .line 998
    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v8, v8, v4

    move v7, v8

    goto :goto_3

    .line 1000
    :cond_4
    move-object v8, v3

    check-cast v8, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v8, v8, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v8, v8, v4

    move v7, v8

    .line 1003
    :goto_3
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 1004
    if-eqz p1, :cond_5

    .line 1005
    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_5
    const-string v8, "** NOT SPECIFIED **"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    if-eqz p1, :cond_b

    .line 1011
    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1013
    :cond_6
    if-eqz v7, :cond_8

    .line 1014
    if-eqz p1, :cond_7

    .line 1015
    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :cond_7
    const-string v8, "** STREAM DATA **"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    if-eqz p1, :cond_b

    .line 1021
    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1024
    :cond_8
    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v8, :cond_9

    .line 1025
    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v8, v6}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1027
    :cond_9
    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 1028
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1030
    :cond_a
    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .end local v6    # "val":[B
    .end local v7    # "isStreamParam":Z
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v4    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1037
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v5, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v6

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1039
    :cond_d
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v5, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v6

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    .end local v2    # "realParameterCount":I
    .end local v3    # "batchArg":Ljava/lang/Object;
    :goto_5
    nop

    .line 1045
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1041
    :catch_0
    move-exception v2

    .line 1042
    .local v2, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreparedStatement.32"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PreparedStatement.33"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "quoteStreamsAndUnknowns":Z
    throw v3

    .line 1046
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "uue":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "quoteStreamsAndUnknowns":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    return v0
.end method

.method protected checkBounds(II)V
    .locals 4
    .param p1, "paramIndex"    # I
    .param p2, "parameterIndexOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3380
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3381
    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    .line 3384
    :try_start_0
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-gt p1, v2, :cond_2

    .line 3390
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3391
    :cond_0
    const-string v1, "Can\'t set IN parameter for return value of stored function call."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramIndex":I
    .end local p2    # "parameterIndexOffset":I
    throw v1

    .line 3394
    .restart local p1    # "paramIndex":I
    .restart local p2    # "parameterIndexOffset":I
    :cond_1
    :goto_0
    monitor-exit v0

    .line 3395
    return-void

    .line 3385
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.51"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.52"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.53"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramIndex":I
    .end local p2    # "parameterIndexOffset":I
    throw v1

    .line 3394
    .restart local p1    # "paramIndex":I
    .restart local p2    # "parameterIndexOffset":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3382
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.49"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.50"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "paramIndex":I
    .end local p2    # "parameterIndexOffset":I
    throw v1

    .line 3394
    .restart local p1    # "paramIndex":I
    .restart local p2    # "parameterIndexOffset":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkReadOnlySafeStatement()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 1171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1051
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1052
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 1054
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1055
    monitor-exit v0

    .line 1056
    return-void

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearParameters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1072
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1073
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aput-object v3, v2, v1

    .line 1074
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1075
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aput-boolean v3, v2, v1

    .line 1076
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aput v3, v2, v1

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1079
    return-void

    .line 1078
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected computeBatchSize(I)I
    .locals 11
    .param p1, "numBatchedArgs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1684
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1685
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->computeMaxParameterSetSizeAndBatchSize(I)[J

    move-result-object v1

    .line 1687
    .local v1, "combinedValues":[J
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    .line 1688
    .local v2, "maxSizeOfParameterSet":J
    const/4 v4, 0x1

    aget-wide v4, v1, v4

    .line 1690
    .local v4, "sizeOfEntireBatch":J
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v6

    .line 1692
    .local v6, "maxAllowedPacket":I
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v6, v7

    int-to-long v7, v7

    cmp-long v9, v4, v7

    if-gez v9, :cond_0

    .line 1693
    monitor-exit v0

    return p1

    .line 1696
    :cond_0
    const-wide/16 v7, 0x1

    iget-object v9, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v6, v9

    int-to-long v9, v9

    div-long/2addr v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    monitor-exit v0

    return v8

    .line 1697
    .end local v1    # "combinedValues":[J
    .end local v2    # "maxSizeOfParameterSet":J
    .end local v4    # "sizeOfEntireBatch":J
    .end local v6    # "maxAllowedPacket":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected computeMaxParameterSetSizeAndBatchSize(I)[J
    .locals 17
    .param p1, "numBatchedArgs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1707
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1708
    const-wide/16 v3, 0x0

    .line 1709
    .local v3, "sizeOfEntireBatch":J
    const-wide/16 v5, 0x0

    .line 1711
    .local v5, "maxSizeOfParameterSet":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move/from16 v8, p1

    if-ge v0, v8, :cond_6

    .line 1712
    :try_start_0
    iget-object v9, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 1714
    .local v9, "paramArg":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    iget-object v10, v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 1715
    .local v10, "isNullBatch":[Z
    iget-object v11, v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 1717
    .local v11, "isStreamBatch":[Z
    const-wide/16 v12, 0x0

    .line 1719
    .local v12, "sizeOfParameterSet":J
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v15, v10

    if-ge v14, v15, :cond_3

    .line 1720
    aget-boolean v15, v10, v14

    if-nez v15, :cond_2

    .line 1722
    aget-boolean v15, v11, v14

    if-eqz v15, :cond_1

    .line 1723
    iget-object v15, v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v15, v15, v14

    .line 1725
    .local v15, "streamLength":I
    const/4 v7, -0x1

    if-eq v15, v7, :cond_0

    .line 1726
    mul-int/lit8 v7, v15, 0x2

    int-to-long v7, v7

    add-long/2addr v12, v7

    move-object v8, v10

    move-object/from16 v16, v11

    goto :goto_2

    .line 1728
    :cond_0
    iget-object v7, v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v7, v7, v14

    array-length v7, v7

    .line 1729
    .local v7, "paramLength":I
    move-object v8, v10

    move-object/from16 v16, v11

    .end local v10    # "isNullBatch":[Z
    .end local v11    # "isStreamBatch":[Z
    .local v8, "isNullBatch":[Z
    .local v16, "isStreamBatch":[Z
    int-to-long v10, v7

    add-long/2addr v12, v10

    .line 1731
    .end local v7    # "paramLength":I
    .end local v15    # "streamLength":I
    :goto_2
    goto :goto_3

    .line 1732
    .end local v8    # "isNullBatch":[Z
    .end local v16    # "isStreamBatch":[Z
    .restart local v10    # "isNullBatch":[Z
    .restart local v11    # "isStreamBatch":[Z
    :cond_1
    move-object v8, v10

    move-object/from16 v16, v11

    .end local v10    # "isNullBatch":[Z
    .end local v11    # "isStreamBatch":[Z
    .restart local v8    # "isNullBatch":[Z
    .restart local v16    # "isStreamBatch":[Z
    iget-object v7, v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v7, v7, v14

    array-length v7, v7

    int-to-long v10, v7

    add-long/2addr v12, v10

    goto :goto_3

    .line 1735
    .end local v8    # "isNullBatch":[Z
    .end local v16    # "isStreamBatch":[Z
    .restart local v10    # "isNullBatch":[Z
    .restart local v11    # "isStreamBatch":[Z
    :cond_2
    move-object v8, v10

    move-object/from16 v16, v11

    .end local v10    # "isNullBatch":[Z
    .end local v11    # "isStreamBatch":[Z
    .restart local v8    # "isNullBatch":[Z
    .restart local v16    # "isStreamBatch":[Z
    const-wide/16 v10, 0x4

    add-long/2addr v12, v10

    .line 1719
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object v10, v8

    move-object/from16 v11, v16

    move/from16 v8, p1

    goto :goto_1

    .end local v8    # "isNullBatch":[Z
    .end local v16    # "isStreamBatch":[Z
    .restart local v10    # "isNullBatch":[Z
    .restart local v11    # "isStreamBatch":[Z
    :cond_3
    move-object v8, v10

    move-object/from16 v16, v11

    .line 1745
    .end local v10    # "isNullBatch":[Z
    .end local v11    # "isStreamBatch":[Z
    .end local v14    # "j":I
    .restart local v8    # "isNullBatch":[Z
    .restart local v16    # "isStreamBatch":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    int-to-long v10, v7

    add-long/2addr v12, v10

    goto :goto_4

    .line 1748
    :cond_4
    iget-object v7, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    int-to-long v10, v7

    add-long/2addr v12, v10

    .line 1751
    :goto_4
    add-long/2addr v3, v12

    .line 1753
    cmp-long v7, v12, v5

    if-lez v7, :cond_5

    .line 1754
    move-wide v5, v12

    .line 1711
    .end local v8    # "isNullBatch":[Z
    .end local v9    # "paramArg":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    .end local v12    # "sizeOfParameterSet":J
    .end local v16    # "isStreamBatch":[Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1758
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v7, 0x0

    aput-wide v5, v0, v7

    const/4 v7, 0x1

    aput-wide v3, v0, v7

    monitor-exit v2

    return-object v0

    .line 1759
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

    .line 2164
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected detectFractionalSecondsSupport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    .line 848
    return-void
.end method

.method public execute()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1186
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1188
    :try_start_0
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1190
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkReadOnlySafeStatement()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.20"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.21"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1195
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 1197
    .local v10, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    .line 1199
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    iput-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    .line 1203
    :cond_2
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1211
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1214
    monitor-exit v9

    return v13

    .line 1217
    :cond_3
    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1221
    .local v3, "sendPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v1, 0x0

    .line 1223
    .local v1, "oldCatalog":Ljava/lang/String;
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1224
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1225
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v14, v1

    goto :goto_1

    .line 1223
    :cond_4
    move-object v14, v1

    .line 1231
    .end local v1    # "oldCatalog":Ljava/lang/String;
    .local v14, "oldCatalog":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 1232
    .local v1, "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1233
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v2

    move-object v1, v2

    move-object v15, v1

    goto :goto_2

    .line 1232
    :cond_5
    move-object v15, v1

    .line 1236
    .end local v1    # "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v15, "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    :goto_2
    const/4 v1, 0x0

    .line 1238
    .local v1, "metadataFromCache":[Lcom/mysql/jdbc/Field;
    if-eqz v15, :cond_6

    .line 1239
    iget-object v2, v15, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_3

    .line 1238
    :cond_6
    move-object/from16 v16, v1

    .line 1242
    .end local v1    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .local v16, "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :goto_3
    const/4 v1, 0x0

    .line 1244
    .local v1, "oldInfoMsgState":Z
    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_7

    .line 1245
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v2

    move v1, v2

    .line 1246
    invoke-interface {v0, v13}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move v7, v1

    goto :goto_4

    .line 1244
    :cond_7
    move v7, v1

    .line 1252
    .end local v1    # "oldInfoMsgState":Z
    .local v7, "oldInfoMsgState":Z
    :goto_4
    iget-char v1, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_8

    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    goto :goto_5

    :cond_8
    const/4 v1, -0x1

    :goto_5
    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1254
    iget v4, v8, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v5

    iget-char v1, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    if-ne v1, v2, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    move v11, v7

    .end local v7    # "oldInfoMsgState":Z
    .local v11, "oldInfoMsgState":Z
    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1256
    .end local v10    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v15, :cond_a

    .line 1257
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v2, v15, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_7

    .line 1259
    :cond_a
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1260
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v2, v12, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1264
    :cond_b
    :goto_7
    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_c

    .line 1265
    invoke-interface {v0, v11}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1266
    iget-char v2, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 1269
    :cond_c
    if-eqz v14, :cond_d

    .line 1270
    invoke-interface {v0, v14}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1273
    :cond_d
    if-eqz v1, :cond_e

    .line 1274
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 1276
    iput-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1279
    :cond_e
    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v18, 0x1

    goto :goto_8

    :cond_f
    const/16 v18, 0x0

    :goto_8
    monitor-exit v9

    return v18

    .line 1280
    .end local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local v11    # "oldInfoMsgState":Z
    .end local v14    # "oldCatalog":Ljava/lang/String;
    .end local v15    # "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v16    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeBatchInternal()[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1285
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1292
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1298
    .local v1, "batchTimeout":I
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1300
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1303
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V

    .line 1305
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1307
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1309
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->canRewriteAsMultiValueInsertAtSqlLevel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1310
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchedInserts(I)[J

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    :try_start_2
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1323
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1310
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 1313
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 1315
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executePreparedBatchAsMultiStatement(I)[J

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1323
    :try_start_4
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1315
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    .line 1319
    :cond_2
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1323
    :try_start_6
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1319
    monitor-exit v0

    return-object v3

    .line 1321
    :catchall_0
    move-exception v3

    .line 1323
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1321
    throw v3

    .line 1293
    .end local v1    # "batchTimeout":I
    :cond_3
    :goto_0
    new-array v1, v2, [J

    monitor-exit v0

    return-object v1

    .line 1288
    :cond_4
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.26"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1325
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method protected executeBatchSerially(I)[J
    .locals 22
    .param p1, "batchTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1771
    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1772
    :try_start_0
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v11, v0

    .line 1774
    .local v11, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v11, :cond_0

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1778
    :cond_0
    const/4 v0, 0x0

    .line 1780
    .local v0, "updateCounts":[J
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v1, :cond_c

    .line 1781
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v13, v1

    .line 1782
    .local v13, "nbrCommands":I
    new-array v1, v13, [J

    move-object v14, v1

    .line 1784
    .end local v0    # "updateCounts":[J
    .local v14, "updateCounts":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const-wide/16 v15, -0x3

    if-ge v0, v13, :cond_1

    .line 1785
    aput-wide v15, v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1788
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 1790
    .local v1, "sqlEx":Ljava/sql/SQLException;
    const/4 v2, 0x0

    .line 1793
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_1
    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    const/4 v0, 0x5

    invoke-interface {v11, v0, v12, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1794
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v8, v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v2, v0

    .line 1795
    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    int-to-long v3, v9

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v17, v2

    goto :goto_1

    .line 1798
    :cond_2
    move-object/from16 v17, v2

    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v17, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_1
    :try_start_2
    iget-boolean v0, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_3

    .line 1799
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1852
    :catchall_0
    move-exception v0

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_c

    .line 1837
    :catch_0
    move-exception v0

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_b

    .line 1802
    :cond_3
    :goto_2
    :try_start_4
    iput v12, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v6, v1

    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .local v6, "sqlEx":Ljava/sql/SQLException;
    :goto_3
    :try_start_5
    iget v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ge v0, v13, :cond_8

    .line 1803
    :try_start_6
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v5, v0

    .line 1806
    .local v5, "arg":Ljava/lang/Object;
    const/4 v4, 0x1

    :try_start_7
    instance-of v0, v5, Ljava/lang/String;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_5

    .line 1807
    :try_start_8
    iget v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v8, v1, v4, v2}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v1

    aput-wide v1, v14, v0

    .line 1810
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_4

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v20, v5

    move-object v12, v6

    const/16 v18, 0x1

    goto :goto_6

    .line 1852
    .end local v5    # "arg":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_c

    .line 1837
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_b

    .line 1819
    .restart local v5    # "arg":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    move-object v12, v6

    const/16 v18, 0x1

    goto :goto_7

    .line 1812
    :cond_5
    :try_start_9
    move-object v0, v5

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 1813
    .local v0, "paramArg":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    iget v3, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    iget-object v4, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    iget-object v7, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    iget-object v12, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 v19, 0x1

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v21, v3

    move-object/from16 v3, v20

    const/16 v18, 0x1

    move-object/from16 v20, v5

    .end local v5    # "arg":Ljava/lang/Object;
    .local v20, "arg":Ljava/lang/Object;
    move-object v5, v7

    move-object v7, v6

    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .local v7, "sqlEx":Ljava/sql/SQLException;
    move-object v6, v12

    move-object v12, v7

    .end local v7    # "sqlEx":Ljava/sql/SQLException;
    .local v12, "sqlEx":Ljava/sql/SQLException;
    move/from16 v7, v19

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide v1

    aput-wide v1, v14, v21

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v8, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1831
    .end local v0    # "paramArg":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    :goto_6
    move-object v6, v12

    goto :goto_8

    .line 1819
    :catch_3
    move-exception v0

    goto :goto_7

    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v20    # "arg":Ljava/lang/Object;
    .restart local v5    # "arg":Ljava/lang/Object;
    .restart local v6    # "sqlEx":Ljava/sql/SQLException;
    :catch_4
    move-exception v0

    move-object/from16 v20, v5

    move-object v12, v6

    const/16 v18, 0x1

    .line 1820
    .end local v5    # "arg":Ljava/lang/Object;
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .local v0, "ex":Ljava/sql/SQLException;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v20    # "arg":Ljava/lang/Object;
    :goto_7
    :try_start_b
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    aput-wide v15, v14, v1

    .line 1822
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->continueBatchOnError:Z

    if-eqz v1, :cond_7

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v1, :cond_7

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v1, :cond_7

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v1, :cond_7

    .line 1824
    move-object v1, v0

    move-object v6, v1

    .line 1802
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v20    # "arg":Ljava/lang/Object;
    .restart local v6    # "sqlEx":Ljava/sql/SQLException;
    :goto_8
    :try_start_c
    iget v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1826
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local v0    # "ex":Ljava/sql/SQLException;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v20    # "arg":Ljava/lang/Object;
    :cond_7
    :try_start_d
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v2, v1, [J

    .line 1827
    .local v2, "newUpdateCounts":[J
    const/4 v3, 0x0

    invoke-static {v14, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "nbrCommands":I
    .end local v14    # "updateCounts":[J
    .end local v17    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v1
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1852
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v2    # "newUpdateCounts":[J
    .end local v20    # "arg":Ljava/lang/Object;
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "nbrCommands":I
    .restart local v14    # "updateCounts":[J
    .restart local v17    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catchall_2
    move-exception v0

    move-object v1, v12

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_c

    .line 1837
    :catch_5
    move-exception v0

    move-object v1, v12

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto/16 :goto_b

    .line 1852
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v6    # "sqlEx":Ljava/sql/SQLException;
    :catchall_3
    move-exception v0

    move-object v12, v6

    move-object v1, v12

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto :goto_9

    .line 1837
    :catch_6
    move-exception v0

    move-object v12, v6

    move-object v1, v12

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto :goto_a

    .line 1834
    :cond_8
    move-object v12, v6

    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    if-nez v12, :cond_a

    .line 1837
    nop

    .line 1864
    const/4 v3, -0x1

    :try_start_e
    iput v3, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 1854
    if-eqz v17, :cond_9

    .line 1855
    invoke-virtual/range {v17 .. v17}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1856
    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1859
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1860
    move-object v0, v14

    goto/16 :goto_d

    .line 1835
    :cond_a
    const/4 v3, -0x1

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v12, v14, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "nbrCommands":I
    .end local v14    # "updateCounts":[J
    .end local v17    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1852
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "nbrCommands":I
    .restart local v14    # "updateCounts":[J
    .restart local v17    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catchall_4
    move-exception v0

    move-object v1, v12

    move-object/from16 v2, v17

    goto :goto_c

    .line 1837
    :catch_7
    move-exception v0

    move-object v1, v12

    move-object/from16 v2, v17

    goto :goto_b

    .line 1852
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v6    # "sqlEx":Ljava/sql/SQLException;
    :catchall_5
    move-exception v0

    move-object v12, v6

    const/4 v3, -0x1

    move-object v1, v12

    move-object/from16 v2, v17

    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    :goto_9
    goto :goto_c

    .line 1837
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v6    # "sqlEx":Ljava/sql/SQLException;
    :catch_8
    move-exception v0

    move-object v12, v6

    const/4 v3, -0x1

    move-object v1, v12

    move-object/from16 v2, v17

    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "sqlEx":Ljava/sql/SQLException;
    :goto_a
    goto :goto_b

    .line 1852
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    :catchall_6
    move-exception v0

    const/4 v3, -0x1

    move-object/from16 v2, v17

    goto :goto_c

    .line 1837
    :catch_9
    move-exception v0

    const/4 v3, -0x1

    move-object/from16 v2, v17

    goto :goto_b

    .line 1852
    .end local v17    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v2, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_7
    move-exception v0

    const/4 v3, -0x1

    goto :goto_c

    .line 1837
    :catch_a
    move-exception v0

    const/4 v3, -0x1

    :goto_b
    move-object v4, v0

    .line 1839
    .local v4, "npe":Ljava/lang/NullPointerException;
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1848
    nop

    .line 1850
    nop

    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v13    # "nbrCommands":I
    .end local v14    # "updateCounts":[J
    .end local p1    # "batchTimeout":I
    :try_start_11
    throw v4

    .line 1852
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v13    # "nbrCommands":I
    .restart local v14    # "updateCounts":[J
    .restart local p1    # "batchTimeout":I
    :catchall_8
    move-exception v0

    goto :goto_c

    .line 1840
    .restart local v4    # "npe":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1841
    .local v0, "connectionClosedEx":Ljava/sql/SQLException;
    iget v5, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    aput-wide v15, v14, v5

    .line 1843
    iget v5, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v5, v5, [J

    .line 1845
    .local v5, "newUpdateCounts":[J
    iget v6, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v7, 0x0

    invoke-static {v14, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v13    # "nbrCommands":I
    .end local v14    # "updateCounts":[J
    .end local p1    # "batchTimeout":I
    throw v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1859
    .end local v0    # "connectionClosedEx":Ljava/sql/SQLException;
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .end local v5    # "newUpdateCounts":[J
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v13    # "nbrCommands":I
    .restart local v14    # "updateCounts":[J
    .restart local p1    # "batchTimeout":I
    :goto_c
    :try_start_12
    iput v3, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 1854
    if-eqz v2, :cond_b

    .line 1855
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1856
    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1859
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1852
    nop

    .end local p1    # "batchTimeout":I
    throw v0

    .line 1863
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v13    # "nbrCommands":I
    .end local v14    # "updateCounts":[J
    .local v0, "updateCounts":[J
    .restart local p1    # "batchTimeout":I
    :cond_c
    :goto_d
    if-eqz v0, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    new-array v1, v1, [J

    :goto_e
    monitor-exit v10

    return-object v1

    .line 1864
    .end local v0    # "updateCounts":[J
    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_9
    move-exception v0

    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v0
.end method

.method protected executeBatchedInserts(I)[J
    .locals 23
    .param p1, "batchTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1537
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1538
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1540
    .local v4, "valuesClause":Ljava/lang/String;
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v5, v0

    .line 1542
    .local v5, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v4, :cond_0

    .line 1543
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 1546
    :cond_0
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    .line 1548
    .local v6, "numBatchedArgs":I
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_1

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1552
    :cond_1
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v0

    .line 1554
    .local v0, "numValuesPerBatch":I
    if-ge v6, v0, :cond_2

    .line 1555
    move v0, v6

    move v7, v0

    goto :goto_0

    .line 1554
    :cond_2
    move v7, v0

    .line 1558
    .end local v0    # "numValuesPerBatch":I
    .local v7, "numValuesPerBatch":I
    :goto_0
    const/4 v8, 0x0

    .line 1560
    .local v8, "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    const/4 v9, 0x1

    .line 1561
    .local v9, "batchedParamIndex":I
    const-wide/16 v10, 0x0

    .line 1562
    .local v10, "updateCountRunningTotal":J
    const/4 v12, 0x0

    .line 1563
    .local v12, "numberToExecuteAsMultiValue":I
    const/4 v13, 0x0

    .line 1564
    .local v13, "batchCounter":I
    const/4 v14, 0x0

    .line 1565
    .local v14, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v15, 0x0

    .line 1567
    .local v15, "sqlEx":Ljava/sql/SQLException;
    new-array v0, v6, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move-object/from16 v16, v0

    .line 1571
    .local v16, "updateCounts":[J
    :try_start_1
    invoke-virtual {v1, v5, v7}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v0

    move-object v8, v0

    .line 1574
    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 v17, v4

    .end local v4    # "valuesClause":Ljava/lang/String;
    .local v17, "valuesClause":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    :try_start_2
    invoke-interface {v5, v0, v4, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1575
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v1, v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v14, v0

    .line 1576
    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v5

    .end local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .local v18, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    int-to-long v4, v2

    :try_start_3
    invoke-virtual {v0, v14, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1614
    :catchall_0
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    goto/16 :goto_f

    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_1
    move-exception v0

    move-object v2, v5

    move-object/from16 v4, v16

    .end local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    goto/16 :goto_f

    .line 1574
    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :cond_3
    move-object/from16 v18, v5

    .line 1579
    .end local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :goto_1
    if-ge v6, v7, :cond_4

    .line 1580
    move v0, v6

    move v12, v0

    .end local v12    # "numberToExecuteAsMultiValue":I
    .local v0, "numberToExecuteAsMultiValue":I
    goto :goto_2

    .line 1582
    .end local v0    # "numberToExecuteAsMultiValue":I
    .restart local v12    # "numberToExecuteAsMultiValue":I
    :cond_4
    :try_start_4
    div-int v0, v6, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move v12, v0

    .line 1585
    :goto_2
    mul-int v4, v12, v7

    .line 1587
    .local v4, "numberArgsToExecute":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 1588
    if-eqz v5, :cond_5

    :try_start_5
    rem-int v0, v5, v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_5

    .line 1590
    :try_start_6
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v20
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-long v10, v10, v20

    .line 1593
    move/from16 v20, v4

    move-object/from16 v4, v16

    goto :goto_4

    .line 1591
    :catch_0
    move-exception v0

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    .line 1592
    .local v0, "ex":Ljava/sql/SQLException;
    add-int/lit8 v2, v13, -0x1

    move/from16 v20, v4

    move-object/from16 v4, v16

    .end local v16    # "updateCounts":[J
    .local v4, "updateCounts":[J
    .local v20, "numberArgsToExecute":I
    :try_start_7
    invoke-virtual {v1, v2, v7, v4, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v2

    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .local v2, "sqlEx":Ljava/sql/SQLException;
    move-object v15, v2

    .line 1595
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_4
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V

    .line 1596
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1597
    const/4 v0, 0x1

    move v9, v0

    .end local v9    # "batchedParamIndex":I
    .local v0, "batchedParamIndex":I
    goto :goto_5

    .line 1614
    .end local v0    # "batchedParamIndex":I
    .end local v4    # "updateCounts":[J
    .end local v5    # "i":I
    .end local v20    # "numberArgsToExecute":I
    .restart local v9    # "batchedParamIndex":I
    .restart local v16    # "updateCounts":[J
    :catchall_2
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    .end local v16    # "updateCounts":[J
    .restart local v4    # "updateCounts":[J
    goto/16 :goto_f

    .line 1588
    .local v4, "numberArgsToExecute":I
    .restart local v5    # "i":I
    .restart local v16    # "updateCounts":[J
    :cond_5
    move/from16 v20, v4

    move-object/from16 v4, v16

    .line 1601
    .end local v16    # "updateCounts":[J
    .local v4, "updateCounts":[J
    .restart local v20    # "numberArgsToExecute":I
    :goto_5
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/lit8 v2, v13, 0x1

    .end local v13    # "batchCounter":I
    .local v2, "batchCounter":I
    :try_start_8
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v9, v0}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v9, v0

    .line 1587
    add-int/lit8 v5, v5, 0x1

    move v13, v2

    move-object/from16 v16, v4

    move/from16 v4, v20

    move/from16 v2, p1

    goto :goto_3

    .line 1614
    .end local v5    # "i":I
    .end local v20    # "numberArgsToExecute":I
    :catchall_3
    move-exception v0

    move v13, v2

    move-object/from16 v2, v18

    goto/16 :goto_f

    .line 1587
    .end local v2    # "batchCounter":I
    .local v4, "numberArgsToExecute":I
    .restart local v5    # "i":I
    .restart local v13    # "batchCounter":I
    .restart local v16    # "updateCounts":[J
    :cond_6
    move/from16 v20, v4

    move-object/from16 v4, v16

    .line 1605
    .end local v5    # "i":I
    .end local v16    # "updateCounts":[J
    .local v4, "updateCounts":[J
    .restart local v20    # "numberArgsToExecute":I
    :try_start_9
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v21
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-long v10, v10, v21

    .line 1608
    goto :goto_6

    .line 1614
    .end local v20    # "numberArgsToExecute":I
    :catchall_4
    move-exception v0

    move-object/from16 v2, v18

    goto/16 :goto_f

    .line 1606
    .restart local v20    # "numberArgsToExecute":I
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1607
    .local v0, "ex":Ljava/sql/SQLException;
    add-int/lit8 v2, v13, -0x1

    :try_start_a
    invoke-virtual {v1, v2, v7, v4, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v2

    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .local v2, "sqlEx":Ljava/sql/SQLException;
    move-object v15, v2

    .line 1610
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    :goto_6
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1612
    sub-int v7, v6, v13

    .line 1613
    .end local v20    # "numberArgsToExecute":I
    nop

    .line 1669
    if-eqz v8, :cond_7

    .line 1615
    :try_start_b
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1616
    const/4 v8, 0x0

    goto :goto_7

    .line 1662
    :catchall_5
    move-exception v0

    move-object/from16 v2, v18

    goto/16 :goto_11

    .line 1616
    :cond_7
    :goto_7
    nop

    .line 1618
    nop

    .line 1621
    if-lez v7, :cond_a

    .line 1622
    move-object/from16 v2, v18

    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .local v2, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :try_start_c
    invoke-virtual {v1, v2, v7}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object v5, v0

    .line 1624
    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .local v5, "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    if-eqz v14, :cond_8

    .line 1625
    :try_start_d
    iput-object v5, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    .line 1657
    :catchall_6
    move-exception v0

    move-object v8, v5

    goto/16 :goto_e

    .line 1628
    :cond_8
    :goto_8
    const/4 v0, 0x1

    move v8, v0

    .line 1630
    .end local v9    # "batchedParamIndex":I
    .local v8, "batchedParamIndex":I
    :goto_9
    if-ge v13, v6, :cond_9

    .line 1631
    :try_start_e
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "batchCounter":I
    .local v9, "batchCounter":I
    :try_start_f
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move v8, v0

    move v13, v9

    goto :goto_9

    .line 1657
    :catchall_7
    move-exception v0

    move v13, v9

    move v9, v8

    move-object v8, v5

    goto :goto_e

    .line 1635
    .end local v9    # "batchCounter":I
    .restart local v13    # "batchCounter":I
    :cond_9
    :try_start_10
    invoke-virtual {v5}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v20
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    add-long v10, v10, v20

    .line 1638
    goto :goto_a

    .line 1657
    :catchall_8
    move-exception v0

    move v9, v8

    move-object v8, v5

    goto :goto_e

    .line 1636
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 1637
    .restart local v0    # "ex":Ljava/sql/SQLException;
    add-int/lit8 v9, v13, -0x1

    :try_start_11
    invoke-virtual {v1, v9, v7, v4, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v9

    move-object v15, v9

    .line 1640
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_a
    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move v9, v8

    move-object v8, v5

    goto :goto_b

    .line 1657
    .end local v5    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .local v8, "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .local v9, "batchedParamIndex":I
    :catchall_9
    move-exception v0

    goto :goto_e

    .line 1621
    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :cond_a
    move-object/from16 v2, v18

    .line 1643
    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :goto_b
    if-nez v15, :cond_10

    .line 1647
    const/4 v0, 0x1

    if-le v6, v0, :cond_d

    .line 1648
    const-wide/16 v18, 0x0

    cmp-long v0, v10, v18

    if-lez v0, :cond_b

    const-wide/16 v18, -0x2

    .line 1649
    .local v18, "updCount":J
    :cond_b
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_c
    if-ge v0, v6, :cond_c

    .line 1650
    :try_start_12
    aput-wide v18, v4, v0

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1652
    .end local v0    # "j":I
    .end local v18    # "updCount":J
    :cond_c
    goto :goto_d

    .line 1653
    :cond_d
    const/4 v5, 0x0

    aput-wide v10, v4, v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1655
    :goto_d
    nop

    .line 1616
    if-eqz v8, :cond_e

    .line 1658
    :try_start_13
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :cond_e
    nop

    .line 1655
    nop

    .line 1658
    if-eqz v14, :cond_f

    .line 1663
    :try_start_14
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1664
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1667
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1655
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    return-object v4

    .line 1644
    :cond_10
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v15, v4, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "updateCounts":[J
    .end local v6    # "numBatchedArgs":I
    .end local v7    # "numValuesPerBatch":I
    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .end local v9    # "batchedParamIndex":I
    .end local v10    # "updateCountRunningTotal":J
    .end local v12    # "numberToExecuteAsMultiValue":I
    .end local v13    # "batchCounter":I
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .end local v17    # "valuesClause":Ljava/lang/String;
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1667
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v4    # "updateCounts":[J
    .restart local v6    # "numBatchedArgs":I
    .restart local v7    # "numValuesPerBatch":I
    .restart local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .restart local v9    # "batchedParamIndex":I
    .restart local v10    # "updateCountRunningTotal":J
    .restart local v12    # "numberToExecuteAsMultiValue":I
    .restart local v13    # "batchCounter":I
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v17    # "valuesClause":Ljava/lang/String;
    .restart local p1    # "batchTimeout":I
    :goto_e
    if-eqz v8, :cond_11

    .line 1658
    :try_start_16
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    :cond_11
    nop

    .line 1657
    nop

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "updateCounts":[J
    .end local v6    # "numBatchedArgs":I
    .end local v7    # "numValuesPerBatch":I
    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .end local v9    # "batchedParamIndex":I
    .end local v10    # "updateCountRunningTotal":J
    .end local v12    # "numberToExecuteAsMultiValue":I
    .end local v13    # "batchCounter":I
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .end local v17    # "valuesClause":Ljava/lang/String;
    .end local p1    # "batchTimeout":I
    throw v0

    .line 1614
    .restart local v4    # "updateCounts":[J
    .restart local v6    # "numBatchedArgs":I
    .restart local v7    # "numValuesPerBatch":I
    .restart local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .restart local v9    # "batchedParamIndex":I
    .restart local v10    # "updateCountRunningTotal":J
    .restart local v12    # "numberToExecuteAsMultiValue":I
    .restart local v13    # "batchCounter":I
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v17    # "valuesClause":Ljava/lang/String;
    .local v18, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "batchTimeout":I
    :catchall_a
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    goto :goto_f

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "updateCounts":[J
    .restart local v16    # "updateCounts":[J
    .restart local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_b
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    .end local v16    # "updateCounts":[J
    .end local v18    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v4    # "updateCounts":[J
    goto :goto_f

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v17    # "valuesClause":Ljava/lang/String;
    .local v4, "valuesClause":Ljava/lang/String;
    .local v5, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v16    # "updateCounts":[J
    :catchall_c
    move-exception v0

    move-object/from16 v17, v4

    move-object v2, v5

    move-object/from16 v4, v16

    .line 1616
    .end local v5    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v16    # "updateCounts":[J
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .local v4, "updateCounts":[J
    .restart local v17    # "valuesClause":Ljava/lang/String;
    :goto_f
    if-eqz v8, :cond_12

    .line 1615
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 1616
    const/4 v5, 0x0

    move-object v8, v5

    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .local v5, "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    goto :goto_10

    .line 1662
    .end local v5    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .restart local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_d
    move-exception v0

    goto :goto_11

    .line 1614
    :cond_12
    :goto_10
    nop

    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "updateCounts":[J
    .end local v6    # "numBatchedArgs":I
    .end local v7    # "numValuesPerBatch":I
    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .end local v9    # "batchedParamIndex":I
    .end local v10    # "updateCountRunningTotal":J
    .end local v12    # "numberToExecuteAsMultiValue":I
    .end local v13    # "batchCounter":I
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .end local v17    # "valuesClause":Ljava/lang/String;
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 1658
    .restart local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v4    # "updateCounts":[J
    .restart local v6    # "numBatchedArgs":I
    .restart local v7    # "numValuesPerBatch":I
    .restart local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .restart local v9    # "batchedParamIndex":I
    .restart local v10    # "updateCountRunningTotal":J
    .restart local v12    # "numberToExecuteAsMultiValue":I
    .restart local v13    # "batchCounter":I
    .restart local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v17    # "valuesClause":Ljava/lang/String;
    .restart local p1    # "batchTimeout":I
    :goto_11
    if-eqz v14, :cond_13

    .line 1663
    :try_start_17
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1664
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 1667
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1662
    nop

    .end local p1    # "batchTimeout":I
    throw v0

    .line 1669
    .end local v2    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v4    # "updateCounts":[J
    .end local v6    # "numBatchedArgs":I
    .end local v7    # "numValuesPerBatch":I
    .end local v8    # "batchedStatement":Lcom/mysql/jdbc/PreparedStatement;
    .end local v9    # "batchedParamIndex":I
    .end local v10    # "updateCountRunningTotal":J
    .end local v12    # "numberToExecuteAsMultiValue":I
    .end local v13    # "batchCounter":I
    .end local v14    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .end local v17    # "valuesClause":Ljava/lang/String;
    .restart local p1    # "batchTimeout":I
    :catchall_e
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    throw v0
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 17
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

    .line 1894
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1897
    :try_start_0
    iget-object v0, v12, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v14, v0

    .line 1899
    .local v14, "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    iget v0, v12, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v12, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1903
    const/4 v1, 0x0

    .line 1906
    .local v1, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_1
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v12, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {v14, v0, v15, v15}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v0, v12, v12}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V

    move-object v1, v0

    .line 1908
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, v12, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v11, v1

    goto :goto_0

    .line 1911
    :cond_0
    move-object v11, v1

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v11, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_0
    if-nez p6, :cond_1

    .line 1912
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1946
    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    move-object v1, v11

    .local v2, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto/16 :goto_4

    .line 1915
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iget v6, v12, Lcom/mysql/jdbc/PreparedStatement;->resultSetType:I

    iget v7, v12, Lcom/mysql/jdbc/PreparedStatement;->resultSetConcurrency:I

    iget-object v9, v12, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    move-object v15, v11

    .end local v11    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v15, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move/from16 v11, p6

    :try_start_4
    invoke-interface/range {v1 .. v11}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v2, v0

    .line 1918
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v15, :cond_3

    .line 1919
    :try_start_5
    invoke-virtual {v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1921
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1923
    iget-object v0, v15, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_2

    .line 1927
    const/4 v0, 0x0

    move-object v1, v0

    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_2

    .line 1924
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_2
    iget-object v0, v15, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1946
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :catchall_1
    move-exception v0

    move-object v1, v15

    goto :goto_4

    .line 1918
    :cond_3
    move-object v1, v15

    .line 1930
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_2
    :try_start_6
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1931
    :try_start_7
    iget-boolean v0, v12, Lcom/mysql/jdbc/PreparedStatement;->wasCancelled:Z

    if-eqz v0, :cond_5

    .line 1932
    const/4 v0, 0x0

    .line 1934
    .local v0, "cause":Ljava/sql/SQLException;
    iget-boolean v4, v12, Lcom/mysql/jdbc/PreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v4, :cond_4

    .line 1935
    new-instance v4, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v4}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 1937
    :cond_4
    new-instance v4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v4}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v4

    .line 1940
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1942
    nop

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v0

    .line 1944
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :cond_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1945
    nop

    .line 1963
    if-nez p6, :cond_6

    .line 1947
    :try_start_8
    iget-object v0, v12, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1950
    :cond_6
    if-eqz v1, :cond_7

    .line 1951
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1952
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_7
    nop

    .line 1954
    nop

    .line 1956
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    return-object v2

    .line 1944
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1946
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :catchall_3
    move-exception v0

    goto :goto_4

    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_4
    move-exception v0

    move-object/from16 v2, v16

    move-object v1, v15

    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto :goto_4

    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v11    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_5
    move-exception v0

    move-object v15, v11

    .end local v11    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    move-object/from16 v2, v16

    move-object v1, v15

    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto :goto_4

    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v15    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_6
    move-exception v0

    move-object/from16 v2, v16

    .line 1952
    .restart local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :goto_4
    if-nez p6, :cond_8

    .line 1947
    :try_start_c
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1950
    :cond_8
    if-eqz v1, :cond_9

    .line 1951
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1952
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    :cond_9
    nop

    .line 1946
    nop

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1963
    .end local v1    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v2    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v14    # "locallyScopedConnection":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :catchall_7
    move-exception v0

    goto :goto_5

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "npe":Ljava/lang/NullPointerException;
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1961
    nop

    .end local p1    # "maxRowsToRetrieve":I
    .end local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local p3    # "createStreamingResultSet":Z
    .end local p4    # "queryIsSelectOnly":Z
    .end local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .end local p6    # "isBatch":Z
    throw v0

    .line 1963
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    .restart local p1    # "maxRowsToRetrieve":I
    .restart local p2    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p3    # "createStreamingResultSet":Z
    .restart local p4    # "queryIsSelectOnly":Z
    .restart local p5    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .restart local p6    # "isBatch":Z
    :goto_5
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0
.end method

.method public executeLargeUpdate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5187
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected executePreparedBatchAsMultiStatement(I)[J
    .locals 20
    .param p1, "batchTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1347
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1349
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    .line 1353
    :cond_0
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v4, v0

    .line 1355
    .local v4, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move v5, v0

    .line 1356
    .local v5, "multiQueriesEnabled":Z
    const/4 v6, 0x0

    .line 1359
    .local v6, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1361
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 1363
    .local v7, "numBatchedArgs":I
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    if-eqz v0, :cond_1

    .line 1364
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1496
    .end local v7    # "numBatchedArgs":I
    :catchall_0
    move-exception v0

    goto/16 :goto_11

    .line 1367
    .restart local v7    # "numBatchedArgs":I
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v0

    .line 1369
    .local v0, "numValuesPerBatch":I
    if-ge v7, v0, :cond_2

    .line 1370
    move v0, v7

    move v8, v0

    goto :goto_1

    .line 1369
    :cond_2
    move v8, v0

    .line 1373
    .end local v0    # "numValuesPerBatch":I
    .local v8, "numValuesPerBatch":I
    :goto_1
    const/4 v9, 0x0

    .line 1375
    .local v9, "batchedStatement":Ljava/sql/PreparedStatement;
    const/4 v10, 0x1

    .line 1376
    .local v10, "batchedParamIndex":I
    const/4 v11, 0x0

    .line 1377
    .local v11, "numberToExecuteAsMultiValue":I
    const/4 v12, 0x0

    .line 1378
    .local v12, "batchCounter":I
    const/4 v13, 0x0

    .line 1379
    .local v13, "updateCountCounter":I
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->numberOfQueries:I

    mul-int v0, v0, v7

    new-array v0, v0, [J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    move-object v14, v0

    .line 1380
    .local v14, "updateCounts":[J
    const/4 v15, 0x0

    .line 1383
    .local v15, "sqlEx":Ljava/sql/SQLException;
    if-nez v5, :cond_3

    .line 1384
    :try_start_4
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1437
    :catchall_1
    move-exception v0

    goto/16 :goto_10

    .line 1387
    :cond_3
    :goto_2
    :try_start_5
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    move-object/from16 v16, v6

    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v16, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 1388
    :try_start_6
    invoke-direct {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Wrapper;

    const-class v6, Ljava/sql/PreparedStatement;

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/PreparedStatement;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v9, v0

    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .local v0, "batchedStatement":Ljava/sql/PreparedStatement;
    goto :goto_3

    .line 1437
    .end local v0    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    :catchall_2
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_10

    .line 1391
    :cond_4
    :try_start_7
    invoke-direct {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Wrapper;

    const-class v6, Ljava/sql/PreparedStatement;

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/PreparedStatement;

    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v0    # "batchedStatement":Ljava/sql/PreparedStatement;
    move-object v9, v0

    .line 1395
    .end local v0    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    :goto_3
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    const/4 v0, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1396
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v6, v9

    check-cast v6, Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    move-object v6, v0

    .line 1397
    .end local v16    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :try_start_8
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "batchedParamIndex":I
    .end local v11    # "numberToExecuteAsMultiValue":I
    .local v17, "batchedParamIndex":I
    .local v18, "numberToExecuteAsMultiValue":I
    int-to-long v10, v2

    :try_start_9
    invoke-virtual {v0, v6, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_4

    .line 1437
    .end local v17    # "batchedParamIndex":I
    .end local v18    # "numberToExecuteAsMultiValue":I
    .restart local v10    # "batchedParamIndex":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    :catchall_3
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "batchedParamIndex":I
    .end local v11    # "numberToExecuteAsMultiValue":I
    .restart local v17    # "batchedParamIndex":I
    .restart local v18    # "numberToExecuteAsMultiValue":I
    goto/16 :goto_10

    .line 1395
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v17    # "batchedParamIndex":I
    .end local v18    # "numberToExecuteAsMultiValue":I
    .restart local v10    # "batchedParamIndex":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    .restart local v16    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_5
    move/from16 v17, v10

    move/from16 v18, v11

    .line 1400
    .end local v10    # "batchedParamIndex":I
    .end local v11    # "numberToExecuteAsMultiValue":I
    .restart local v17    # "batchedParamIndex":I
    .restart local v18    # "numberToExecuteAsMultiValue":I
    move-object/from16 v6, v16

    .end local v16    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :goto_4
    if-ge v7, v8, :cond_6

    .line 1401
    move v0, v7

    move v11, v0

    .end local v18    # "numberToExecuteAsMultiValue":I
    .local v0, "numberToExecuteAsMultiValue":I
    goto :goto_5

    .line 1403
    .end local v0    # "numberToExecuteAsMultiValue":I
    .restart local v18    # "numberToExecuteAsMultiValue":I
    :cond_6
    div-int v0, v7, v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    move v11, v0

    .line 1406
    .end local v18    # "numberToExecuteAsMultiValue":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    :goto_5
    mul-int v10, v11, v8

    .line 1408
    .local v10, "numberArgsToExecute":I
    const/4 v0, 0x0

    move-object/from16 v16, v15

    move v15, v13

    move v13, v12

    move v12, v0

    .local v12, "i":I
    .local v13, "batchCounter":I
    .local v15, "updateCountCounter":I
    .local v16, "sqlEx":Ljava/sql/SQLException;
    :goto_6
    if-ge v12, v10, :cond_8

    .line 1409
    if-eqz v12, :cond_7

    :try_start_a
    rem-int v0, v12, v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v0, :cond_7

    .line 1411
    :try_start_b
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1414
    goto :goto_7

    .line 1412
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 1413
    .local v0, "ex":Ljava/sql/SQLException;
    :try_start_c
    invoke-virtual {v1, v13, v8, v14, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1416
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_7
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v15, v14}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    move v15, v0

    .line 1418
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1419
    const/4 v0, 0x1

    move-object/from16 v17, v16

    move/from16 v16, v15

    move v15, v0

    .end local v17    # "batchedParamIndex":I
    .local v0, "batchedParamIndex":I
    goto :goto_8

    .line 1422
    .end local v0    # "batchedParamIndex":I
    .restart local v17    # "batchedParamIndex":I
    :cond_7
    move-object/from16 v19, v16

    move/from16 v16, v15

    move/from16 v15, v17

    move-object/from16 v17, v19

    .local v15, "batchedParamIndex":I
    .local v16, "updateCountCounter":I
    .local v17, "sqlEx":Ljava/sql/SQLException;
    :goto_8
    :try_start_d
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    add-int/lit8 v18, v13, 0x1

    .end local v13    # "batchCounter":I
    .local v18, "batchCounter":I
    :try_start_e
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v9, v15, v0}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1408
    .end local v15    # "batchedParamIndex":I
    .restart local v0    # "batchedParamIndex":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v13, v18

    move/from16 v17, v0

    goto :goto_6

    .line 1437
    .end local v0    # "batchedParamIndex":I
    .end local v10    # "numberArgsToExecute":I
    .end local v12    # "i":I
    .restart local v15    # "batchedParamIndex":I
    :catchall_4
    move-exception v0

    move v10, v15

    move/from16 v13, v16

    move-object/from16 v15, v17

    move/from16 v12, v18

    goto/16 :goto_10

    .end local v18    # "batchCounter":I
    .restart local v13    # "batchCounter":I
    :catchall_5
    move-exception v0

    move v12, v13

    move v10, v15

    move/from16 v13, v16

    move-object/from16 v15, v17

    goto/16 :goto_10

    .line 1426
    .restart local v10    # "numberArgsToExecute":I
    .local v15, "updateCountCounter":I
    .local v16, "sqlEx":Ljava/sql/SQLException;
    .local v17, "batchedParamIndex":I
    :cond_8
    :try_start_f
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1429
    goto :goto_9

    .line 1437
    .end local v10    # "numberArgsToExecute":I
    :catchall_6
    move-exception v0

    move v12, v13

    move v13, v15

    move-object/from16 v15, v16

    move/from16 v10, v17

    goto/16 :goto_10

    .line 1427
    .restart local v10    # "numberArgsToExecute":I
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1428
    .local v0, "ex":Ljava/sql/SQLException;
    add-int/lit8 v12, v13, -0x1

    :try_start_10
    invoke-virtual {v1, v12, v8, v14, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v12

    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .local v12, "sqlEx":Ljava/sql/SQLException;
    move-object/from16 v16, v12

    .line 1431
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v12    # "sqlEx":Ljava/sql/SQLException;
    .restart local v16    # "sqlEx":Ljava/sql/SQLException;
    :goto_9
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v15, v14}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move v12, v0

    .line 1433
    .end local v15    # "updateCountCounter":I
    .local v12, "updateCountCounter":I
    :try_start_11
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1435
    sub-int v8, v7, v13

    .line 1436
    .end local v10    # "numberArgsToExecute":I
    nop

    .line 1509
    if-eqz v9, :cond_9

    .line 1438
    :try_start_12
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1439
    const/4 v9, 0x0

    :cond_9
    nop

    .line 1441
    nop

    .line 1444
    if-lez v8, :cond_d

    .line 1446
    :try_start_13
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_a

    .line 1447
    invoke-direct {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v4, v0, v10}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .local v0, "batchedStatement":Ljava/sql/PreparedStatement;
    goto :goto_a

    .line 1449
    .end local v0    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    :cond_a
    invoke-direct {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    move-object v9, v0

    .line 1452
    :goto_a
    if-eqz v6, :cond_b

    .line 1453
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    iput-object v0, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1456
    :cond_b
    const/4 v0, 0x1

    move v10, v0

    .line 1458
    .end local v17    # "batchedParamIndex":I
    .local v10, "batchedParamIndex":I
    :goto_b
    if-ge v13, v7, :cond_c

    .line 1459
    :try_start_14
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    add-int/lit8 v15, v13, 0x1

    .end local v13    # "batchCounter":I
    .local v15, "batchCounter":I
    :try_start_15
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v9, v10, v0}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move v10, v0

    move v13, v15

    goto :goto_b

    .line 1491
    :catchall_7
    move-exception v0

    move/from16 v17, v10

    move v13, v15

    goto/16 :goto_f

    .line 1463
    .end local v15    # "batchCounter":I
    .restart local v13    # "batchCounter":I
    :cond_c
    :try_start_16
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 1466
    goto :goto_c

    .line 1491
    :catchall_8
    move-exception v0

    move/from16 v17, v10

    goto/16 :goto_f

    .line 1464
    :catch_2
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 1465
    .local v0, "ex":Ljava/sql/SQLException;
    add-int/lit8 v15, v13, -0x1

    :try_start_17
    invoke-virtual {v1, v15, v8, v14, v0}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v15

    move-object/from16 v16, v15

    .line 1468
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_c
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v12, v14}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    move v12, v0

    .line 1470
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move/from16 v17, v10

    move-object/from16 v10, v16

    goto :goto_d

    .line 1491
    .end local v10    # "batchedParamIndex":I
    .restart local v17    # "batchedParamIndex":I
    :catchall_9
    move-exception v0

    goto :goto_f

    .line 1444
    :cond_d
    move-object/from16 v10, v16

    .line 1473
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .local v10, "sqlEx":Ljava/sql/SQLException;
    :goto_d
    if-eqz v6, :cond_f

    .line 1474
    :try_start_18
    iget-object v0, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_e

    .line 1478
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1480
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1482
    const/4 v0, 0x0

    move-object v6, v0

    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .local v0, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    goto :goto_e

    .line 1475
    .end local v0    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :cond_e
    iget-object v0, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "multiQueriesEnabled":Z
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v7    # "numBatchedArgs":I
    .end local v8    # "numValuesPerBatch":I
    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .end local v10    # "sqlEx":Ljava/sql/SQLException;
    .end local v11    # "numberToExecuteAsMultiValue":I
    .end local v12    # "updateCountCounter":I
    .end local v13    # "batchCounter":I
    .end local v14    # "updateCounts":[J
    .end local v17    # "batchedParamIndex":I
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1491
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "multiQueriesEnabled":Z
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "numBatchedArgs":I
    .restart local v8    # "numValuesPerBatch":I
    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v10    # "sqlEx":Ljava/sql/SQLException;
    .restart local v11    # "numberToExecuteAsMultiValue":I
    .restart local v12    # "updateCountCounter":I
    .restart local v13    # "batchCounter":I
    .restart local v14    # "updateCounts":[J
    .restart local v17    # "batchedParamIndex":I
    .restart local p1    # "batchTimeout":I
    :catchall_a
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_f

    .line 1485
    :cond_f
    :goto_e
    if-nez v10, :cond_13

    .line 1489
    nop

    .line 1439
    if-eqz v9, :cond_10

    .line 1492
    :try_start_19
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_10
    nop

    .line 1489
    nop

    .line 1492
    .end local v7    # "numBatchedArgs":I
    .end local v8    # "numValuesPerBatch":I
    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .end local v10    # "sqlEx":Ljava/sql/SQLException;
    .end local v11    # "numberToExecuteAsMultiValue":I
    .end local v12    # "updateCountCounter":I
    .end local v13    # "batchCounter":I
    .end local v14    # "updateCounts":[J
    .end local v17    # "batchedParamIndex":I
    if-eqz v6, :cond_11

    .line 1497
    :try_start_1a
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1498
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1501
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1503
    if-nez v5, :cond_12

    .line 1504
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1507
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    move v0, v7

    .local v0, "numBatchedArgs":I
    move-object v7, v10

    .local v7, "sqlEx":Ljava/sql/SQLException;
    move v10, v12

    .local v10, "updateCountCounter":I
    move-object v12, v14

    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .local v12, "updateCounts":[J
    move/from16 v15, v17

    .line 1489
    .restart local v8    # "numValuesPerBatch":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    .restart local v13    # "batchCounter":I
    .local v15, "batchedParamIndex":I
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    return-object v14

    .line 1486
    .end local v0    # "numBatchedArgs":I
    .end local v15    # "batchedParamIndex":I
    .local v7, "numBatchedArgs":I
    .local v10, "sqlEx":Ljava/sql/SQLException;
    .local v12, "updateCountCounter":I
    .restart local v14    # "updateCounts":[J
    .restart local v17    # "batchedParamIndex":I
    :cond_13
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v10, v14, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "multiQueriesEnabled":Z
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v7    # "numBatchedArgs":I
    .end local v8    # "numValuesPerBatch":I
    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .end local v10    # "sqlEx":Ljava/sql/SQLException;
    .end local v11    # "numberToExecuteAsMultiValue":I
    .end local v12    # "updateCountCounter":I
    .end local v13    # "batchCounter":I
    .end local v14    # "updateCounts":[J
    .end local v17    # "batchedParamIndex":I
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 1507
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "multiQueriesEnabled":Z
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v7    # "numBatchedArgs":I
    .restart local v8    # "numValuesPerBatch":I
    .restart local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .restart local v11    # "numberToExecuteAsMultiValue":I
    .restart local v12    # "updateCountCounter":I
    .restart local v13    # "batchCounter":I
    .restart local v14    # "updateCounts":[J
    .restart local v16    # "sqlEx":Ljava/sql/SQLException;
    .restart local v17    # "batchedParamIndex":I
    .restart local p1    # "batchTimeout":I
    :goto_f
    if-eqz v9, :cond_14

    .line 1492
    :try_start_1c
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V

    :cond_14
    nop

    .line 1491
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "multiQueriesEnabled":Z
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v0

    .line 1437
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "multiQueriesEnabled":Z
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catchall_b
    move-exception v0

    move-object/from16 v15, v16

    move/from16 v10, v17

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    goto :goto_10

    .end local v11    # "numberToExecuteAsMultiValue":I
    .end local v16    # "sqlEx":Ljava/sql/SQLException;
    .local v12, "batchCounter":I
    .local v13, "updateCountCounter":I
    .local v15, "sqlEx":Ljava/sql/SQLException;
    .local v18, "numberToExecuteAsMultiValue":I
    :catchall_c
    move-exception v0

    move/from16 v10, v17

    move/from16 v11, v18

    goto :goto_10

    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v17    # "batchedParamIndex":I
    .end local v18    # "numberToExecuteAsMultiValue":I
    .local v10, "batchedParamIndex":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    .local v16, "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    :catchall_d
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v6, v16

    .end local v10    # "batchedParamIndex":I
    .end local v11    # "numberToExecuteAsMultiValue":I
    .restart local v17    # "batchedParamIndex":I
    .restart local v18    # "numberToExecuteAsMultiValue":I
    goto :goto_10

    .end local v16    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local v17    # "batchedParamIndex":I
    .end local v18    # "numberToExecuteAsMultiValue":I
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local v10    # "batchedParamIndex":I
    .restart local v11    # "numberToExecuteAsMultiValue":I
    :catchall_e
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v10

    move/from16 v18, v11

    .line 1439
    :goto_10
    if-eqz v9, :cond_15

    .line 1438
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V

    .line 1439
    const/4 v9, 0x0

    .line 1437
    :cond_15
    nop

    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "multiQueriesEnabled":Z
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .end local p1    # "batchTimeout":I
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1496
    .end local v7    # "numBatchedArgs":I
    .end local v8    # "numValuesPerBatch":I
    .end local v9    # "batchedStatement":Ljava/sql/PreparedStatement;
    .end local v10    # "batchedParamIndex":I
    .end local v11    # "numberToExecuteAsMultiValue":I
    .end local v12    # "batchCounter":I
    .end local v13    # "updateCountCounter":I
    .end local v14    # "updateCounts":[J
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    .restart local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v5    # "multiQueriesEnabled":Z
    .restart local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catchall_f
    move-exception v0

    move-object/from16 v16, v6

    .line 1492
    :goto_11
    if-eqz v6, :cond_16

    .line 1497
    :try_start_1d
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1498
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Timer;->purge()I

    .line 1501
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1503
    if-nez v5, :cond_17

    .line 1504
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1507
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1496
    nop

    .end local p1    # "batchTimeout":I
    throw v0

    .line 1509
    .end local v4    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "multiQueriesEnabled":Z
    .end local v6    # "timeoutTask":Lcom/mysql/jdbc/StatementImpl$CancelTask;
    .restart local p1    # "batchTimeout":I
    :catchall_10
    move-exception v0

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    throw v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1976
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1978
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1980
    .local v1, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-char v3, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->checkForDml(Ljava/lang/String;C)V

    .line 1982
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1984
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1986
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1988
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1990
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-eqz v3, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1993
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v2

    .line 1996
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1998
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 2000
    .local v5, "sendPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v3, 0x0

    .line 2002
    .local v3, "oldCatalog":Ljava/lang/String;
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2003
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 2004
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_0

    .line 2002
    :cond_1
    move-object v10, v3

    .line 2010
    .end local v3    # "oldCatalog":Ljava/lang/String;
    .local v10, "oldCatalog":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 2011
    .local v3, "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2012
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v4

    move-object v3, v4

    move-object v11, v3

    goto :goto_1

    .line 2011
    :cond_2
    move-object v11, v3

    .line 2015
    .end local v3    # "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .local v11, "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    :goto_1
    const/4 v3, 0x0

    .line 2017
    .local v3, "metadataFromCache":[Lcom/mysql/jdbc/Field;
    if-eqz v11, :cond_3

    .line 2018
    iget-object v4, v11, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v3, v4

    move-object v12, v3

    goto :goto_2

    .line 2017
    :cond_3
    move-object v12, v3

    .line 2021
    .end local v3    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
    .local v12, "metadataFromCache":[Lcom/mysql/jdbc/Field;
    :goto_2
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 2023
    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, v12

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2025
    if-eqz v10, :cond_4

    .line 2026
    invoke-interface {v1, v10}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 2029
    :cond_4
    if-eqz v11, :cond_5

    .line 2030
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v2, v11, v3}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_3

    .line 2032
    :cond_5
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2033
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v3, v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2037
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 2039
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v2

    .line 2040
    .end local v1    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local v5    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "oldCatalog":Ljava/lang/String;
    .end local v11    # "cachedMetadata":Lcom/mysql/jdbc/CachedResultSetMetaData;
    .end local v12    # "metadataFromCache":[Lcom/mysql/jdbc/Field;
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

    .line 2055
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected executeUpdateInternal(ZZ)J
    .locals 9
    .param p1, "clearBatchedGeneratedKeysAndWarnings"    # Z
    .param p2, "isBatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2064
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2065
    if-eqz p1, :cond_0

    .line 2066
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 2067
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 2070
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v2, p0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J
    .locals 13
    .param p1, "batchedParameterStrings"    # [[B
    .param p2, "batchedParameterStreams"    # [Ljava/io/InputStream;
    .param p3, "batchedIsStream"    # [Z
    .param p4, "batchedStreamLengths"    # [I
    .param p5, "batchedIsNull"    # [Z
    .param p6, "isReallyBatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2096
    move-object v8, p0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2098
    :try_start_0
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2100
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2105
    iget-char v1, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    const-string v1, "PreparedStatement.37"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "01S03"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "batchedParameterStrings":[[B
    .end local p2    # "batchedParameterStreams":[Ljava/io/InputStream;
    .end local p3    # "batchedIsStream":[Z
    .end local p4    # "batchedStreamLengths":[I
    .end local p5    # "batchedIsNull":[Z
    .end local p6    # "isReallyBatch":Z
    throw v1

    .line 2109
    .restart local p1    # "batchedParameterStrings":[[B
    .restart local p2    # "batchedParameterStreams":[Ljava/io/InputStream;
    .restart local p3    # "batchedIsStream":[Z
    .restart local p4    # "batchedStreamLengths":[I
    .restart local p5    # "batchedIsNull":[Z
    .restart local p6    # "isReallyBatch":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 2111
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 2113
    const/4 v10, 0x0

    .line 2115
    .local v10, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual/range {p0 .. p4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 2117
    .local v3, "sendPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v1, 0x0

    .line 2119
    .local v1, "oldCatalog":Ljava/lang/String;
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2120
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2121
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_1

    .line 2119
    :cond_2
    move-object v11, v1

    .line 2127
    .end local v1    # "oldCatalog":Ljava/lang/String;
    .local v11, "oldCatalog":Ljava/lang/String;
    :goto_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 2129
    const/4 v1, 0x0

    .line 2131
    .local v1, "oldInfoMsgState":Z
    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_3

    .line 2132
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v2

    move v1, v2

    .line 2133
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move v12, v1

    goto :goto_2

    .line 2131
    :cond_3
    move v12, v1

    .line 2136
    .end local v1    # "oldInfoMsgState":Z
    .local v12, "oldInfoMsgState":Z
    :goto_2
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 2138
    .end local v10    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_4

    .line 2139
    invoke-interface {v0, v12}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 2140
    iget-char v2, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 2143
    :cond_4
    if-eqz v11, :cond_5

    .line 2144
    invoke-interface {v0, v11}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 2147
    :cond_5
    iput-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2149
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2151
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz v2, :cond_7

    .line 2152
    iget-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v6, 0x2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    iget-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    .line 2153
    :cond_6
    const-wide/16 v4, 0x1

    iput-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2157
    :cond_7
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 2159
    iget-wide v4, v8, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    monitor-exit v9

    return-wide v4

    .line 2101
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v3    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local v11    # "oldCatalog":Ljava/lang/String;
    .end local v12    # "oldInfoMsgState":Z
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.34"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.35"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "batchedParameterStrings":[[B
    .end local p2    # "batchedParameterStreams":[Ljava/io/InputStream;
    .end local p3    # "batchedIsStream":[Z
    .end local p4    # "batchedStreamLengths":[I
    .end local p5    # "batchedIsNull":[Z
    .end local p6    # "isReallyBatch":Z
    throw v1

    .line 2160
    .end local v0    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "batchedParameterStrings":[[B
    .restart local p2    # "batchedParameterStreams":[Ljava/io/InputStream;
    .restart local p3    # "batchedIsStream":[Z
    .restart local p4    # "batchedStreamLengths":[I
    .restart local p5    # "batchedIsNull":[Z
    .restart local p6    # "isReallyBatch":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2178
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 17
    .param p1, "batchedParameterStrings"    # [[B
    .param p2, "batchedParameterStreams"    # [Ljava/io/InputStream;
    .param p3, "batchedIsStream"    # [Z
    .param p4, "batchedStreamLengths"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2201
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2202
    :try_start_0
    iget-object v0, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 2204
    .local v0, "sendPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2206
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2208
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    move v10, v1

    .line 2213
    .local v10, "useStreamLengths":Z
    const/4 v1, 0x0

    .line 2215
    .local v1, "ensurePacketSize":I
    iget-object v2, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 2217
    .local v6, "statementComment":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2219
    .local v2, "commentAsBytes":[B
    if-eqz v6, :cond_1

    .line 2220
    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v3, :cond_0

    .line 2221
    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v3, v6}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 2223
    :cond_0
    iget-object v12, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v13, v7, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v16

    move-object v11, v6

    invoke-static/range {v11 .. v16}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v3

    move-object v2, v3

    .line 2227
    :goto_0
    array-length v3, v2

    add-int/2addr v1, v3

    .line 2228
    add-int/lit8 v1, v1, 0x6

    move-object v11, v2

    goto :goto_1

    .line 2219
    :cond_1
    move-object v11, v2

    .line 2231
    .end local v2    # "commentAsBytes":[B
    .local v11, "commentAsBytes":[B
    :goto_1
    const/4 v2, 0x0

    move v12, v1

    .end local v1    # "ensurePacketSize":I
    .local v2, "i":I
    .local v12, "ensurePacketSize":I
    :goto_2
    array-length v1, v8

    if-ge v2, v1, :cond_3

    .line 2232
    aget-boolean v1, p3, v2

    if-eqz v1, :cond_2

    if-eqz v10, :cond_2

    .line 2233
    aget v1, p4, v2

    add-int/2addr v12, v1

    .line 2231
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2237
    .end local v2    # "i":I
    :cond_3
    if-eqz v12, :cond_4

    .line 2238
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2241
    :cond_4
    if-eqz v11, :cond_5

    .line 2242
    sget-object v1, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2243
    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2244
    sget-object v1, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2247
    :cond_5
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_3
    array-length v1, v8

    if-ge v13, v1, :cond_7

    .line 2248
    aget-object v1, v8, v13

    aget-object v2, p2, v13

    invoke-direct {v7, v1, v2, v13}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    .line 2250
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2252
    aget-boolean v1, p3, v13

    if-eqz v1, :cond_6

    .line 2253
    aget-object v3, p2, v13

    const/4 v4, 0x1

    aget v5, p4, v13

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v14, v6

    .end local v6    # "statementComment":Ljava/lang/String;
    .local v14, "statementComment":Ljava/lang/String;
    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V

    goto :goto_4

    .line 2255
    .end local v14    # "statementComment":Ljava/lang/String;
    .restart local v6    # "statementComment":Ljava/lang/String;
    :cond_6
    move-object v14, v6

    .end local v6    # "statementComment":Ljava/lang/String;
    .restart local v14    # "statementComment":Ljava/lang/String;
    aget-object v1, v8, v13

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2247
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object v6, v14

    goto :goto_3

    .end local v14    # "statementComment":Ljava/lang/String;
    .restart local v6    # "statementComment":Ljava/lang/String;
    :cond_7
    move-object v14, v6

    .line 2259
    .end local v6    # "statementComment":Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v14    # "statementComment":Ljava/lang/String;
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v2, v8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2261
    monitor-exit v9

    return-object v0

    .line 2262
    .end local v0    # "sendPacket":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "useStreamLengths":Z
    .end local v11    # "commentAsBytes":[B
    .end local v12    # "ensurePacketSize":I
    .end local v14    # "statementComment":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBytesRepresentation(I)[B
    .locals 6
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2317
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2318
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2319
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2323
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v1, v1, p1

    .line 2325
    .local v1, "parameterVal":[B
    if-nez v1, :cond_1

    .line 2326
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2329
    :cond_1
    aget-byte v3, v1, v2

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    array-length v3, v1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget-byte v3, v1, v3

    if-ne v3, v4, :cond_2

    .line 2330
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [B

    .line 2331
    .local v3, "valNoQuotes":[B
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2333
    monitor-exit v0

    return-object v3

    .line 2336
    .end local v3    # "valNoQuotes":[B
    :cond_2
    monitor-exit v0

    return-object v1

    .line 2337
    .end local v1    # "parameterVal":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getBytesRepresentationForBatch(II)[B
    .locals 8
    .param p1, "parameterIndex"    # I
    .param p2, "commandIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2348
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2349
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2350
    .local v1, "batchedArg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2352
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 2354
    :catch_0
    move-exception v2

    .line 2355
    .local v2, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreparedStatement.32"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PreparedStatement.33"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parameterIndex":I
    .end local p2    # "commandIndex":I
    throw v3

    .line 2359
    .end local v2    # "uue":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "commandIndex":I
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 2360
    .local v2, "params":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    iget-object v3, v2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v3, v3, p1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2361
    iget-object v3, v2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v3, v3, p1

    iget-object v5, v2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2364
    :cond_1
    iget-object v3, v2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v3, v3, p1

    .line 2365
    .local v3, "parameterVal":[B
    if-nez v3, :cond_2

    .line 2366
    const/4 v4, 0x0

    monitor-exit v0

    return-object v4

    .line 2369
    :cond_2
    aget-byte v5, v3, v4

    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    array-length v5, v3

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    aget-byte v5, v3, v5

    if-ne v5, v6, :cond_3

    .line 2370
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    new-array v5, v5, [B

    .line 2371
    .local v5, "valNoQuotes":[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    invoke-static {v3, v7, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2373
    monitor-exit v0

    return-object v5

    .line 2376
    .end local v5    # "valNoQuotes":[B
    :cond_3
    monitor-exit v0

    return-object v3

    .line 2377
    .end local v1    # "batchedArg":Ljava/lang/Object;
    .end local v2    # "params":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    .end local v3    # "parameterVal":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1869
    const/4 v0, 0x0

    invoke-static {v0, p1, v0, v0}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 1870
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2554
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2562
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2563
    monitor-exit v0

    return-object v2

    .line 2566
    :cond_0
    const/4 v1, 0x0

    .line 2567
    .local v1, "mdStmt":Lcom/mysql/jdbc/PreparedStatement;
    const/4 v3, 0x0

    .line 2569
    .local v3, "mdRs":Ljava/sql/ResultSet;
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_8

    .line 2571
    :try_start_1
    new-instance v4, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    move-object v1, v4

    .line 2573
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/PreparedStatement;->setMaxRows(I)V

    .line 2575
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v4, v4

    .line 2577
    .local v4, "paramCount":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, v4, :cond_1

    .line 2578
    invoke-virtual {v1, v5, v2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2577
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2581
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->execute()Z

    move-result v2

    .line 2583
    .local v2, "hadResults":Z
    if-eqz v2, :cond_2

    .line 2584
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v5

    move-object v3, v5

    .line 2586
    invoke-interface {v3}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

    goto :goto_1

    .line 2588
    :cond_2
    new-instance v5, Lcom/mysql/jdbc/ResultSetMetaData;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/mysql/jdbc/Field;

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v7

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v8

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2591
    .end local v2    # "hadResults":Z
    .end local v4    # "paramCount":I
    :goto_1
    nop

    .line 2621
    const/4 v2, 0x0

    .line 2594
    .local v2, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v3, :cond_3

    .line 2596
    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2599
    goto :goto_2

    .line 2597
    :catch_0
    move-exception v4

    .line 2598
    .local v4, "sqlEx":Ljava/sql/SQLException;
    move-object v2, v4

    .line 2601
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_2
    const/4 v3, 0x0

    .line 2604
    :cond_3
    nop

    .line 2606
    :try_start_3
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2609
    goto :goto_3

    .line 2607
    :catch_1
    move-exception v4

    .line 2608
    .restart local v4    # "sqlEx":Ljava/sql/SQLException;
    move-object v2, v4

    .line 2611
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :goto_3
    const/4 v1, 0x0

    .line 2614
    if-nez v2, :cond_4

    .line 2617
    .end local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    goto :goto_6

    .line 2615
    .restart local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    :cond_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2592
    .end local v2    # "sqlExRethrow":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    .line 2617
    const/4 v4, 0x0

    .line 2594
    .local v4, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v3, :cond_5

    .line 2596
    :try_start_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2599
    goto :goto_4

    .line 2597
    :catch_2
    move-exception v5

    .line 2598
    .local v5, "sqlEx":Ljava/sql/SQLException;
    move-object v4, v5

    .line 2601
    .end local v5    # "sqlEx":Ljava/sql/SQLException;
    :goto_4
    const/4 v3, 0x0

    .line 2604
    :cond_5
    if-eqz v1, :cond_6

    .line 2606
    :try_start_6
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2609
    goto :goto_5

    .line 2607
    :catch_3
    move-exception v5

    .line 2608
    .restart local v5    # "sqlEx":Ljava/sql/SQLException;
    move-object v4, v5

    .line 2611
    .end local v5    # "sqlEx":Ljava/sql/SQLException;
    :goto_5
    const/4 v1, 0x0

    .line 2614
    :cond_6
    if-eqz v4, :cond_7

    .line 2615
    :try_start_7
    throw v4

    .line 2617
    .end local v4    # "sqlExRethrow":Ljava/sql/SQLException;
    :cond_7
    nop

    .line 2592
    throw v2

    .line 2620
    :cond_8
    :goto_6
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

    monitor-exit v0

    return-object v2

    .line 2621
    .end local v1    # "mdStmt":Lcom/mysql/jdbc/PreparedStatement;
    .end local v3    # "mdRs":Ljava/sql/ResultSet;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method public getNonRewrittenSql()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2300
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2301
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2303
    .local v1, "indexOfBatch":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2304
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2307
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 2308
    .end local v1    # "indexOfBatch":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParameterBindings()Lcom/mysql/jdbc/ParameterBindings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4951
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4952
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;-><init>(Lcom/mysql/jdbc/PreparedStatement;)V

    monitor-exit v0

    return-object v1

    .line 4953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getParameterIndexOffset()I
    .locals 1

    .line 4706
    const/4 v0, 0x0

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2634
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v1, :cond_1

    .line 2636
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGenerateSimpleParameterMetadata()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2637
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    goto :goto_0

    .line 2639
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 2643
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v0

    return-object v1

    .line 2644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 1

    .line 2648
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    return-object v0
.end method

.method public getPreparedSql()Ljava/lang/String;
    .locals 3

    .line 5132
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5133
    :try_start_1
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    if-nez v1, :cond_0

    .line 5134
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 5138
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v1, v1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v1

    .line 5139
    :catch_0
    move-exception v1

    .line 5140
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5142
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5143
    :catch_1
    move-exception v0

    .line 5144
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRewrittenBatchSize()I
    .locals 1

    .line 2296
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    return v0
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5150
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->getUpdateCount()I

    move-result v0

    .line 5152
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz v1, :cond_1

    .line 5153
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5154
    :cond_0
    const/4 v0, 0x1

    .line 5158
    :cond_1
    return v0
.end method

.method protected getValuesClause()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1673
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    return-object v0
.end method

.method isNull(I)Z
    .locals 2
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2710
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2711
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aget-boolean v1, v1, p1

    monitor-exit v0

    return v1

    .line 2712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isSelectQuery()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2625
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2626
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v2, "\'\""

    const-string v3, "\'\""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2627
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

    .line 2277
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2278
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rewritten batch of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    .line 2280
    .local v1, "pstmt":Lcom/mysql/jdbc/PreparedStatement;
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 2281
    iput p2, v1, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 2283
    monitor-exit v0

    return-object v1

    .line 2284
    .end local v1    # "pstmt":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 2756
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2758
    .local v0, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v0, :cond_0

    .line 2759
    return-void

    .line 2762
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2766
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isClosed:Z

    if-eqz v2, :cond_1

    .line 2767
    monitor-exit v1

    return-void

    .line 2770
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->useUsageAdvisor:Z

    if-eqz v2, :cond_2

    .line 2771
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 2772
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PreparedStatement.43"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    invoke-interface/range {v3 .. v11}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2777
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 2779
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 2780
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 2781
    move-object v3, v2

    check-cast v3, [[B

    iput-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2782
    move-object v3, v2

    check-cast v3, [[B

    iput-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2783
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2784
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2785
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2786
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2787
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 2788
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2789
    monitor-exit v1

    .line 2790
    return-void

    .line 2789
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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

    .line 2805
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4710
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 4711
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2830
    if-nez p2, :cond_0

    .line 2831
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2833
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 2835
    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4714
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 4715
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x7d5

    aput v2, v0, v1

    .line 4716
    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2850
    const/4 v0, 0x3

    if-nez p2, :cond_0

    .line 2851
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2853
    :cond_0
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2855
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v0, v1, v2

    .line 2857
    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4719
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4720
    return-void
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

    .line 2879
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2880
    if-nez p2, :cond_0

    .line 2881
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 2883
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    .line 2885
    .local v1, "parameterIndexOffset":I
    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v3, v3

    if-gt p1, v3, :cond_3

    .line 2890
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 2891
    :cond_1
    const-string v2, "Can\'t set IN parameter for return value of stored function call."

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v2

    .line 2895
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    add-int/lit8 v4, p1, -0x1

    add-int/2addr v4, v1

    aput-object p2, v3, v4

    .line 2896
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    add-int/lit8 v4, p1, -0x1

    add-int/2addr v4, v1

    aput-boolean v2, v3, v4

    .line 2897
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    aput p3, v2, v3

    .line 2898
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 2899
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x7d4

    aput v4, v2, v3

    .line 2901
    .end local v1    # "parameterIndexOffset":I
    :goto_1
    monitor-exit v0

    .line 2902
    return-void

    .line 2886
    .restart local v1    # "parameterIndexOffset":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.2"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.3"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.4"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v2

    .line 2901
    .end local v1    # "parameterIndexOffset":I
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4723
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4724
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4727
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 4728
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2905
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 2906
    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "x"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2920
    const/16 v0, 0x7d4

    if-nez p2, :cond_0

    .line 2921
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2923
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2925
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2926
    const-wide/16 v3, 0x1

    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-interface {p2, v3, v4, v6}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v3

    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-direct {p0, v3, v1, v5}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    .line 2927
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2929
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 2931
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v4

    add-int/2addr v3, v4

    aput v0, v2, v3

    .line 2933
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void
.end method

.method public setBoolean(IZ)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2948
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    if-eqz v0, :cond_1

    .line 2949
    if-eqz p2, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    goto :goto_2

    .line 2951
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "\'t\'"

    goto :goto_1

    :cond_2
    const-string v0, "\'f\'"

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 2955
    :goto_2
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

    .line 2970
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2972
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x6

    aput v2, v0, v1

    .line 2973
    return-void
.end method

.method public setBytes(I[B)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2989
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 2991
    if-eqz p2, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    aput v2, v0, v1

    .line 2994
    :cond_0
    return-void
.end method

.method protected setBytes(I[BZZ)V
    .locals 15
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # [B
    .param p3, "checkForIntroducer"    # Z
    .param p4, "escapeForMBChars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2997
    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2998
    if-nez v3, :cond_0

    .line 2999
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_2

    .line 3001
    :cond_0
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    .line 3004
    .local v5, "connectionEncoding":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v0

    const/16 v6, 0x27

    if-nez v0, :cond_6

    if-eqz p4, :cond_1

    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3033
    :cond_1
    nop

    .line 3036
    :try_start_2
    array-length v0, v3

    .line 3038
    .local v0, "numBytes":I
    const/4 v7, 0x2

    .line 3040
    .local v7, "pad":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p3, :cond_2

    iget-object v10, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v11, 0x4

    invoke-interface {v10, v11, v9, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    .line 3042
    .local v8, "needsIntroducer":Z
    :cond_2
    if-eqz v8, :cond_3

    .line 3043
    add-int/lit8 v7, v7, 0x7

    .line 3046
    :cond_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    add-int v10, v0, v7

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3048
    .local v9, "bOut":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x72

    const/16 v11, 0x6e

    if-eqz v8, :cond_4

    .line 3049
    const/16 v12, 0x5f

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3050
    const/16 v12, 0x62

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3051
    const/16 v12, 0x69

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3052
    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3053
    const/16 v12, 0x61

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3054
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3055
    const/16 v12, 0x79

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3057
    :cond_4
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3059
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_5

    .line 3060
    aget-byte v13, v3, v12

    .line 3062
    .local v13, "b":B
    const/16 v14, 0x5c

    sparse-switch v13, :sswitch_data_0

    .line 3106
    invoke-virtual {v9, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 3082
    :sswitch_0
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3083
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3085
    goto :goto_1

    .line 3088
    :sswitch_1
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3089
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3091
    goto :goto_1

    .line 3094
    :sswitch_2
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3095
    const/16 v14, 0x22

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3097
    goto :goto_1

    .line 3100
    :sswitch_3
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3101
    const/16 v14, 0x5a

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3103
    goto :goto_1

    .line 3076
    :sswitch_4
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3077
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3079
    goto :goto_1

    .line 3070
    :sswitch_5
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3071
    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3073
    goto :goto_1

    .line 3064
    :sswitch_6
    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3065
    const/16 v14, 0x30

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3059
    .end local v13    # "b":B
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3110
    .end local v12    # "i":I
    :cond_5
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3112
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3114
    .end local v0    # "numBytes":I
    .end local v5    # "connectionEncoding":Ljava/lang/String;
    .end local v7    # "pad":I
    .end local v8    # "needsIntroducer":Z
    .end local v9    # "bOut":Ljava/io/ByteArrayOutputStream;
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3115
    return-void

    .line 3009
    .restart local v5    # "connectionEncoding":Ljava/lang/String;
    :cond_6
    :goto_3
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v7, v3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3010
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x78

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3011
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3013
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    array-length v8, v3

    if-ge v7, v8, :cond_7

    .line 3014
    aget-byte v8, v3, v7

    and-int/lit16 v8, v8, 0xff

    div-int/lit8 v8, v8, 0x10

    .line 3015
    .local v8, "lowBits":I
    aget-byte v9, v3, v7

    and-int/lit16 v9, v9, 0xff

    rem-int/lit8 v9, v9, 0x10

    .line 3017
    .local v9, "highBits":I
    sget-object v10, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v11, v10, v8

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3018
    aget-byte v10, v10, v9

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3013
    .end local v8    # "lowBits":I
    .end local v9    # "highBits":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3021
    .end local v7    # "i":I
    :cond_7
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3023
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3025
    :try_start_4
    monitor-exit v4

    return-void

    .line 3029
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 3030
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S1009"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .line 3031
    .local v6, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v6, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3032
    nop

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":[B
    .end local p3    # "checkForIntroducer":Z
    .end local p4    # "escapeForMBChars":Z
    throw v6

    .line 3027
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":[B
    .restart local p3    # "checkForIntroducer":Z
    .restart local p4    # "escapeForMBChars":Z
    :catch_1
    move-exception v0

    .line 3028
    .local v0, "ex":Ljava/sql/SQLException;
    nop

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":[B
    .end local p3    # "checkForIntroducer":Z
    .end local p4    # "escapeForMBChars":Z
    throw v0

    .line 3114
    .end local v0    # "ex":Ljava/sql/SQLException;
    .end local v5    # "connectionEncoding":Ljava/lang/String;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":[B
    .restart local p3    # "checkForIntroducer":Z
    .restart local p4    # "escapeForMBChars":Z
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x1a -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method protected setBytesNoEscape(I[B)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "parameterAsBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3130
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 3131
    .local v0, "parameterWithQuotes":[B
    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    .line 3132
    array-length v3, p2

    const/4 v4, 0x1

    invoke-static {p2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3133
    array-length v1, p2

    add-int/2addr v1, v4

    aput-byte v2, v0, v1

    .line 3135
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3136
    return-void
.end method

.method protected setBytesNoEscapeNoQuotes(I[B)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "parameterAsBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3139
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3140
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4731
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 4732
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 10
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3164
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3166
    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 3167
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_4

    .line 3169
    :cond_0
    const/4 v2, 0x0

    .line 3170
    .local v2, "c":[C
    const/4 v3, 0x0

    .line 3172
    .local v3, "len":I
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v4

    .line 3174
    .local v4, "useLength":Z
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    .line 3176
    .local v5, "forcedEncoding":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-eq p3, v1, :cond_2

    .line 3177
    new-array v1, p3, [C

    .line 3179
    .end local v2    # "c":[C
    .local v1, "c":[C
    invoke-static {p2, v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result v2

    .line 3181
    .local v2, "numCharsRead":I
    if-nez v5, :cond_1

    .line 3182
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v7}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3185
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7, v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3189
    nop

    .line 3191
    .end local v2    # "numCharsRead":I
    :goto_0
    goto :goto_3

    .line 3186
    .restart local v2    # "numCharsRead":I
    :catch_0
    move-exception v6

    .line 3187
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported character encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v7

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v7

    .line 3192
    .end local v1    # "c":[C
    .end local v6    # "uee":Ljava/io/UnsupportedEncodingException;
    .local v2, "c":[C
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":I
    :cond_2
    const/16 v7, 0x1000

    new-array v7, v7, [C

    move-object v2, v7

    .line 3194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3196
    .local v7, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/Reader;->read([C)I

    move-result v8

    move v3, v8

    if-eq v8, v1, :cond_3

    .line 3197
    invoke-virtual {v7, v2, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3200
    :cond_3
    if-nez v5, :cond_4

    .line 3201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3204
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3208
    nop

    .line 3212
    .end local v7    # "buf":Ljava/lang/StringBuilder;
    :goto_2
    move-object v1, v2

    .end local v2    # "c":[C
    .restart local v1    # "c":[C
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x7d5

    aput v7, v2, v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3216
    .end local v1    # "c":[C
    .end local v3    # "len":I
    .end local v4    # "useLength":Z
    .end local v5    # "forcedEncoding":Ljava/lang/String;
    :goto_4
    nop

    .line 3217
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3218
    return-void

    .line 3205
    .restart local v2    # "c":[C
    .restart local v3    # "len":I
    .restart local v4    # "useLength":Z
    .restart local v5    # "forcedEncoding":Ljava/lang/String;
    .restart local v7    # "buf":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 3206
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported character encoding "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3217
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "c":[C
    .end local v3    # "len":I
    .end local v4    # "useLength":Z
    .end local v5    # "forcedEncoding":Ljava/lang/String;
    .end local v7    # "buf":Ljava/lang/StringBuilder;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":I
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3214
    :catch_2
    move-exception v1

    .line 3215
    .local v1, "ioEx":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v2

    .line 3217
    .end local v1    # "ioEx":Ljava/io/IOException;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":I
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4735
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 4737
    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4740
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 4742
    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4745
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 4746
    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "x"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3232
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3233
    const/16 v1, 0x7d5

    if-nez p2, :cond_0

    .line 3234
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 3237
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    .line 3239
    .local v2, "forcedEncoding":Ljava/lang/String;
    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    .line 3240
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-interface {p2, v3, v4, v6}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3243
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-interface {p2, v3, v4, v6}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3247
    nop

    .line 3250
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v5

    add-int/2addr v4, v5

    aput v1, v3, v4

    .line 3252
    .end local v2    # "forcedEncoding":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 3253
    return-void

    .line 3244
    .restart local v2    # "forcedEncoding":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3245
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported character encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .end local p1    # "i":I
    .end local p2    # "x":Ljava/sql/Clob;
    throw v3

    .line 3252
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "forcedEncoding":Ljava/lang/String;
    .restart local p1    # "i":I
    .restart local p2    # "x":Ljava/sql/Clob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
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

    .line 3268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 3269
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3286
    const/16 v0, 0x5b

    if-nez p2, :cond_0

    .line 3287
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 3289
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    .line 3290
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    .line 3292
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3293
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    const-string v3, "\'\'yyyy-MM-dd\'\'"

    const/4 v4, 0x0

    invoke-static {v2, v3, p3, v4}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    .line 3295
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3297
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v4

    add-int/2addr v3, v4

    aput v0, v2, v3

    .line 3298
    monitor-exit v1

    .line 3301
    :goto_0
    return-void

    .line 3298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 3316
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3317
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

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

    .line 3318
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "x":D
    throw v1

    .line 3323
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "x":D
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3325
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 3326
    monitor-exit v0

    .line 3327
    return-void

    .line 3326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFloat(IF)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3342
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3344
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 3345
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

    .line 3360
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3362
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3363
    return-void
.end method

.method protected final setInternal(ILjava/lang/String;)V
    .locals 8
    .param p1, "paramIndex"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3398
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3400
    const/4 v1, 0x0

    .line 3402
    .local v1, "parameterAsBytes":[B
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v2, :cond_0

    .line 3403
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v2, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 3405
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    move-object v1, v2

    .line 3409
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3410
    .end local v1    # "parameterAsBytes":[B
    monitor-exit v0

    .line 3411
    return-void

    .line 3410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final setInternal(I[B)V
    .locals 5
    .param p1, "paramIndex"    # I
    .param p2, "val"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3366
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3368
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    .line 3370
    .local v1, "parameterIndexOffset":I
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 3372
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3373
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    aput-boolean v4, v2, v3

    .line 3374
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3375
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    aput-object p2, v2, v3

    .line 3376
    .end local v1    # "parameterIndexOffset":I
    monitor-exit v0

    .line 3377
    return-void

    .line 3376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLong(IJ)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3426
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3428
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x5

    aput v2, v0, v1

    .line 3429
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4749
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 4750
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 9
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4886
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4888
    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 4889
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_2

    .line 4892
    :cond_0
    const/4 v2, 0x0

    .line 4893
    .local v2, "c":[C
    const/4 v3, 0x0

    .line 4895
    .local v3, "len":I
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v4

    .line 4899
    .local v4, "useLength":Z
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v8, p3, v6

    if-eqz v8, :cond_1

    .line 4900
    long-to-int v1, p3

    new-array v1, v1, [C

    .line 4902
    .end local v2    # "c":[C
    .local v1, "c":[C
    long-to-int v2, p3

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result v2

    .line 4903
    .local v2, "numCharsRead":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 4905
    .end local v2    # "numCharsRead":I
    goto :goto_1

    .line 4906
    .end local v1    # "c":[C
    .local v2, "c":[C
    :cond_1
    const/16 v6, 0x1000

    new-array v6, v6, [C

    move-object v2, v6

    .line 4908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4910
    .local v6, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/Reader;->read([C)I

    move-result v7

    move v3, v7

    if-eq v7, v1, :cond_2

    .line 4911
    invoke-virtual {v6, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4914
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V

    move-object v1, v2

    .line 4917
    .end local v2    # "c":[C
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "c":[C
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x7db

    aput v6, v2, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4921
    .end local v1    # "c":[C
    .end local v3    # "len":I
    .end local v4    # "useLength":Z
    :goto_2
    nop

    .line 4922
    :try_start_1
    monitor-exit v0

    .line 4923
    return-void

    .line 4922
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 4919
    :catch_0
    move-exception v1

    .line 4920
    .local v1, "ioEx":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":J
    throw v2

    .line 4922
    .end local v1    # "ioEx":Ljava/io/IOException;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":J
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 0
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4926
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 4927
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4943
    if-nez p2, :cond_0

    .line 4944
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 4946
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 4948
    :goto_0
    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 10
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4767
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4768
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 4774
    :cond_0
    if-nez p2, :cond_1

    .line 4775
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_3

    .line 4777
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4781
    .local v1, "stringLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4782
    .local v2, "buf":Ljava/lang/StringBuilder;
    const-string v3, "_utf8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4783
    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4789
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 4790
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4792
    .local v5, "c":C
    const/16 v6, 0x5c

    sparse-switch v5, :sswitch_data_0

    .line 4839
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4812
    :sswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4813
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4815
    goto :goto_1

    .line 4818
    :sswitch_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4821
    goto :goto_1

    .line 4824
    :sswitch_2
    iget-boolean v7, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v7, :cond_2

    .line 4825
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4828
    :cond_2
    const/16 v6, 0x22

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4830
    goto :goto_1

    .line 4833
    :sswitch_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4834
    const/16 v6, 0x5a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4836
    goto :goto_1

    .line 4806
    :sswitch_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4807
    const/16 v6, 0x72

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4809
    goto :goto_1

    .line 4800
    :sswitch_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4801
    const/16 v6, 0x6e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4803
    goto :goto_1

    .line 4794
    :sswitch_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4795
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4789
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4843
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4845
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4847
    .local v3, "parameterAsString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4849
    .local v9, "parameterAsBytes":[B
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v4, :cond_4

    .line 4850
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v5, "UTF-8"

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v4

    const-string v5, "UTF-8"

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v4

    .end local v9    # "parameterAsBytes":[B
    .local v4, "parameterAsBytes":[B
    goto :goto_2

    .line 4854
    .end local v4    # "parameterAsBytes":[B
    .restart local v9    # "parameterAsBytes":[B
    :cond_4
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 4857
    .end local v9    # "parameterAsBytes":[B
    .restart local v4    # "parameterAsBytes":[B
    :goto_2
    invoke-virtual {p0, p1, v4}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4859
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, -0x9

    aput v7, v5, v6

    .line 4861
    .end local v1    # "stringLength":I
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "parameterAsString":Ljava/lang/String;
    .end local v4    # "parameterAsBytes":[B
    :goto_3
    monitor-exit v0

    .line 4862
    return-void

    .line 4769
    :cond_5
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4770
    monitor-exit v0

    return-void

    .line 4861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x1a -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public setNull(II)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3447
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3448
    :try_start_0
    const-string v1, "null"

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3449
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 3451
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 3452
    monitor-exit v0

    .line 3453
    return-void

    .line 3452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3473
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3475
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3476
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 4
    .param p1, "parameterIndex"    # I
    .param p2, "parameterObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3582
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3583
    if-nez p2, :cond_0

    .line 3584
    const/16 v1, 0x457

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_0

    .line 3586
    :cond_0
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 3587
    move-object v1, p2

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto/16 :goto_0

    .line 3588
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3589
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3590
    :cond_2
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    .line 3591
    move-object v1, p2

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto/16 :goto_0

    .line 3592
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 3593
    move-object v1, p2

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto/16 :goto_0

    .line 3594
    :cond_4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3595
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto/16 :goto_0

    .line 3596
    :cond_5
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 3597
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto/16 :goto_0

    .line 3598
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 3599
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto/16 :goto_0

    .line 3600
    :cond_7
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 3601
    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto/16 :goto_0

    .line 3602
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 3603
    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_0

    .line 3604
    :cond_9
    instance-of v1, p2, Ljava/sql/Date;

    if-eqz v1, :cond_a

    .line 3605
    move-object v1, p2

    check-cast v1, Ljava/sql/Date;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_0

    .line 3606
    :cond_a
    instance-of v1, p2, Ljava/sql/Time;

    if-eqz v1, :cond_b

    .line 3607
    move-object v1, p2

    check-cast v1, Ljava/sql/Time;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_0

    .line 3608
    :cond_b
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_c

    .line 3609
    move-object v1, p2

    check-cast v1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 3610
    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 3611
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 3612
    :cond_d
    instance-of v1, p2, Ljava/io/InputStream;

    if-eqz v1, :cond_e

    .line 3613
    move-object v1, p2

    check-cast v1, Ljava/io/InputStream;

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 3614
    :cond_e
    instance-of v1, p2, Ljava/sql/Blob;

    if-eqz v1, :cond_f

    .line 3615
    move-object v1, p2

    check-cast v1, Ljava/sql/Blob;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_0

    .line 3616
    :cond_f
    instance-of v1, p2, Ljava/sql/Clob;

    if-eqz v1, :cond_10

    .line 3617
    move-object v1, p2

    check-cast v1, Ljava/sql/Clob;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto :goto_0

    .line 3618
    :cond_10
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTreatUtilDateAsTimestamp()Z

    move-result v1

    if-eqz v1, :cond_11

    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_11

    .line 3619
    new-instance v1, Ljava/sql/Timestamp;

    move-object v2, p2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 3620
    :cond_11
    instance-of v1, p2, Ljava/math/BigInteger;

    if-eqz v1, :cond_12

    .line 3621
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 3623
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V

    .line 3626
    :goto_0
    monitor-exit v0

    .line 3627
    return-void

    .line 3626
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "parameterObj"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3637
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 3638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_0

    .line 3640
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 3642
    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 8
    .param p1, "parameterIndex"    # I
    .param p2, "parameterObj"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3672
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3673
    if-nez p2, :cond_0

    .line 3674
    const/16 v1, 0x457

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    .line 3839
    :catchall_0
    move-exception v1

    goto/16 :goto_a

    .line 3680
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch p3, :sswitch_data_0

    move-object v1, v3

    .line 3821
    .local v1, "parameterAsDate":Ljava/util/Date;
    :try_start_1
    const-string v2, "PreparedStatement.16"

    goto/16 :goto_8

    .line 3739
    .end local v1    # "parameterAsDate":Ljava/util/Date;
    :sswitch_0
    instance-of v1, p2, Ljava/sql/Clob;

    if-eqz v1, :cond_1

    .line 3740
    move-object v1, p2

    check-cast v1, Ljava/sql/Clob;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto/16 :goto_6

    .line 3742
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3745
    goto/16 :goto_6

    .line 3680
    :sswitch_1
    move-object v1, v3

    .line 3816
    .restart local v1    # "parameterAsDate":Ljava/util/Date;
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V

    .line 3818
    goto/16 :goto_6

    .line 3680
    .end local v1    # "parameterAsDate":Ljava/util/Date;
    :sswitch_2
    move-object v2, v3

    .line 3803
    .local v2, "parameterAsDate":Ljava/util/Date;
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3804
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v3, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 3805
    .local v1, "sdf":Ljava/text/DateFormat;
    new-instance v3, Ljava/sql/Time;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 3806
    .end local v1    # "sdf":Ljava/text/DateFormat;
    goto/16 :goto_6

    :cond_2
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_3

    .line 3807
    move-object v1, p2

    check-cast v1, Ljava/sql/Timestamp;

    .line 3808
    .local v1, "xT":Ljava/sql/Timestamp;
    new-instance v3, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 3809
    .end local v1    # "xT":Ljava/sql/Timestamp;
    goto/16 :goto_6

    .line 3810
    :cond_3
    move-object v1, p2

    check-cast v1, Ljava/sql/Time;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 3813
    goto/16 :goto_6

    .line 3768
    .end local v2    # "parameterAsDate":Ljava/util/Date;
    :sswitch_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3769
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3771
    .local v1, "pp":Ljava/text/ParsePosition;
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v3, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 3772
    .local v2, "sdf":Ljava/text/DateFormat;
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    move-object v1, v3

    .line 3773
    .end local v2    # "sdf":Ljava/text/DateFormat;
    .local v1, "parameterAsDate":Ljava/util/Date;
    goto :goto_0

    .line 3774
    .end local v1    # "parameterAsDate":Ljava/util/Date;
    :cond_4
    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    .line 3777
    .restart local v1    # "parameterAsDate":Ljava/util/Date;
    :goto_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3790
    :pswitch_1
    instance-of v2, v1, Ljava/sql/Timestamp;

    if-eqz v2, :cond_5

    .line 3791
    move-object v2, v1

    check-cast v2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_1

    .line 3793
    :cond_5
    new-instance v2, Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_1

    .line 3780
    :pswitch_2
    instance-of v2, v1, Ljava/sql/Date;

    if-eqz v2, :cond_6

    .line 3781
    move-object v2, v1

    check-cast v2, Ljava/sql/Date;

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_1

    .line 3783
    :cond_6
    new-instance v2, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 3786
    nop

    .line 3799
    :goto_1
    goto/16 :goto_6

    .line 3683
    .end local v1    # "parameterAsDate":Ljava/util/Date;
    :sswitch_4
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 3684
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 3686
    goto/16 :goto_6

    .line 3687
    :cond_7
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 3688
    const-string v3, "true"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Y"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 3690
    :cond_8
    const-string v3, "false"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "N"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    .line 3692
    :cond_9
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string v4, "-?\\d+\\.?\\d*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3693
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string v4, "-?[0]+[.]*[0]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto/16 :goto_6

    .line 3695
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to Types.BOOLEAN possible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "parameterObj":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v1

    .line 3691
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "parameterObj":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :cond_c
    :goto_3
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto/16 :goto_6

    .line 3689
    :cond_d
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto/16 :goto_6

    .line 3700
    :cond_e
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_10

    .line 3701
    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3703
    .local v3, "intValue":I
    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 3705
    goto/16 :goto_6

    .line 3707
    .end local v3    # "intValue":I
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to Types.BOOLEAN possible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "parameterIndex":I
    .end local p2    # "parameterObj":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v1

    .line 3729
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "parameterObj":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :sswitch_5
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_11

    .line 3730
    move-object v1, p2

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_6

    .line 3732
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3735
    goto :goto_6

    .line 3752
    :sswitch_6
    instance-of v1, p2, [B

    if-eqz v1, :cond_12

    .line 3753
    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_6

    .line 3754
    :cond_12
    instance-of v1, p2, Ljava/sql/Blob;

    if-eqz v1, :cond_13

    .line 3755
    move-object v1, p2

    check-cast v1, Ljava/sql/Blob;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_6

    .line 3757
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 3761
    goto :goto_6

    .line 3722
    :sswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNumericObject(ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3724
    nop

    .line 3837
    :goto_6
    nop

    .line 3839
    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3840
    return-void

    .line 3824
    :catch_0
    move-exception v1

    goto :goto_9

    .line 3821
    .restart local v1    # "parameterAsDate":Ljava/util/Date;
    :goto_8
    :try_start_3
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "parameterIndex":I
    .end local p2    # "parameterObj":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3825
    .local v1, "ex":Ljava/lang/Exception;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "parameterObj":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :goto_9
    :try_start_4
    instance-of v2, v1, Ljava/sql/SQLException;

    if-eqz v2, :cond_14

    .line 3826
    move-object v2, v1

    check-cast v2, Ljava/sql/SQLException;

    .end local p1    # "parameterIndex":I
    .end local p2    # "parameterObj":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v2

    .line 3829
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "parameterObj":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.17"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.18"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.19"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 3834
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3836
    nop

    .end local p1    # "parameterIndex":I
    .end local p2    # "parameterObj":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v2

    .line 3839
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "parameterObj":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :goto_a
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_7
        -0x4 -> :sswitch_6
        -0x3 -> :sswitch_6
        -0x2 -> :sswitch_6
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_5
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0xc -> :sswitch_5
        0x10 -> :sswitch_4
        0x5b -> :sswitch_3
        0x5c -> :sswitch_2
        0x5d -> :sswitch_3
        0x457 -> :sswitch_1
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 3843
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 3845
    .local v0, "paramArg":Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 3846
    .local v1, "isNullBatch":[Z
    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 3848
    .local v2, "isStreamBatch":[Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 3849
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_0

    .line 3850
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .local v4, "batchedParamIndex":I
    const/4 v5, 0x0

    invoke-interface {p1, p2, v5}, Ljava/sql/PreparedStatement;->setNull(II)V

    move p2, v4

    goto :goto_1

    .line 3852
    .end local v4    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :cond_0
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_1

    .line 3853
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .restart local v4    # "batchedParamIndex":I
    iget-object v5, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v6, v6, v3

    invoke-interface {p1, p2, v5, v6}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    move p2, v4

    goto :goto_1

    .line 3855
    .end local v4    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, p2, 0x1

    .end local p2    # "batchedParamIndex":I
    .local v5, "batchedParamIndex":I
    iget-object v6, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v6, v6, v3

    invoke-virtual {v4, p2, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    move p2, v5

    .line 3848
    .end local v5    # "batchedParamIndex":I
    .restart local p2    # "batchedParamIndex":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3860
    .end local v3    # "j":I
    :cond_2
    return p2
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

    .line 3876
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setRetrieveGeneratedKeys(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2288
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2289
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    .line 2290
    monitor-exit v0

    .line 2291
    return-void

    .line 2290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 3924
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3926
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 3927
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 20
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3943
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3945
    const/4 v0, 0x1

    if-nez v9, :cond_0

    .line 3946
    :try_start_0
    invoke-virtual {v1, v2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_6

    .line 3948
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 3950
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move v11, v3

    .line 3952
    .local v11, "stringLength":I
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3

    const/16 v4, 0x27

    if-eqz v3, :cond_4

    .line 3955
    invoke-direct {v1, v9, v11}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v0

    .line 3957
    .local v0, "needsHexEscape":Z
    if-nez v0, :cond_2

    .line 3958
    const/4 v3, 0x0

    .line 3960
    .local v3, "parameterAsBytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3961
    .local v5, "quotedString":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3962
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3965
    iget-boolean v4, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v4, :cond_1

    .line 3966
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v14, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v17

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 3970
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v3, v4

    .line 3973
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3974
    .end local v3    # "parameterAsBytes":[B
    .end local v5    # "quotedString":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 3975
    :cond_2
    const/4 v12, 0x0

    .line 3977
    .local v12, "parameterAsBytes":[B
    iget-boolean v3, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v3, :cond_3

    .line 3978
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v3

    .end local v12    # "parameterAsBytes":[B
    .restart local v3    # "parameterAsBytes":[B
    goto :goto_1

    .line 3982
    .end local v3    # "parameterAsBytes":[B
    .restart local v12    # "parameterAsBytes":[B
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 3985
    .end local v12    # "parameterAsBytes":[B
    .restart local v3    # "parameterAsBytes":[B
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 3988
    .end local v3    # "parameterAsBytes":[B
    :goto_2
    monitor-exit v10

    return-void

    .line 3991
    .end local v0    # "needsHexEscape":Z
    :cond_4
    move-object/from16 v3, p2

    .line 3992
    .local v3, "parameterAsString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 3994
    .local v5, "needsQuoted":Z
    iget-boolean v6, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v6, :cond_5

    invoke-direct {v1, v9, v11}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3995
    :cond_5
    const/4 v5, 0x0

    .line 3997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    int-to-double v7, v7

    const-wide v12, 0x3ff199999999999aL    # 1.1

    mul-double v7, v7, v12

    double-to-int v7, v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3999
    .local v6, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4005
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v11, :cond_8

    .line 4006
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 4008
    .local v8, "c":C
    const/16 v12, 0x5c

    sparse-switch v8, :sswitch_data_0

    .line 4071
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4057
    :sswitch_0
    iget-object v13, v1, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v13, :cond_6

    .line 4058
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v13

    .line 4059
    .local v13, "cbuf":Ljava/nio/CharBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 4060
    .local v14, "bbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v13, v8}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 4061
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 4062
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v4, v13, v14, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 4063
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-ne v4, v12, :cond_6

    .line 4064
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4067
    .end local v13    # "cbuf":Ljava/nio/CharBuffer;
    .end local v14    # "bbuf":Ljava/nio/ByteBuffer;
    :cond_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4068
    goto :goto_4

    .line 4028
    :sswitch_1
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4029
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4031
    goto :goto_4

    .line 4034
    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4035
    const/16 v4, 0x27

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4037
    goto :goto_4

    .line 4040
    :sswitch_3
    iget-boolean v4, v1, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v4, :cond_7

    .line 4041
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4044
    :cond_7
    const/16 v4, 0x22

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4046
    goto :goto_4

    .line 4049
    :sswitch_4
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4050
    const/16 v4, 0x5a

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4052
    goto :goto_4

    .line 4022
    :sswitch_5
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4023
    const/16 v4, 0x72

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4025
    goto :goto_4

    .line 4016
    :sswitch_6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4017
    const/16 v4, 0x6e

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4019
    goto :goto_4

    .line 4010
    :sswitch_7
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4011
    const/16 v4, 0x30

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4005
    .end local v8    # "c":C
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x27

    goto :goto_3

    .line 4075
    .end local v7    # "i":I
    :cond_8
    const/16 v0, 0x27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4077
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4080
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    :cond_9
    const/4 v0, 0x0

    .line 4082
    .local v0, "parameterAsBytes":[B
    iget-boolean v4, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v4, :cond_b

    .line 4083
    if-eqz v5, :cond_a

    .line 4084
    const/16 v13, 0x27

    const/16 v14, 0x27

    iget-object v15, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v17

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v19

    move-object v12, v3

    move-object/from16 v16, v4

    invoke-static/range {v12 .. v19}, Lcom/mysql/jdbc/StringUtils;->getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .line 4087
    :cond_a
    iget-object v13, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v14, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v17

    move-object v12, v3

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .line 4092
    :cond_b
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, v4

    .line 4095
    :goto_5
    invoke-virtual {v1, v2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4097
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v6, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xc

    aput v7, v4, v6

    .line 4099
    .end local v0    # "parameterAsBytes":[B
    .end local v3    # "parameterAsString":Ljava/lang/String;
    .end local v5    # "needsQuoted":Z
    .end local v11    # "stringLength":I
    :goto_6
    monitor-exit v10

    .line 4100
    return-void

    .line 4099
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0xd -> :sswitch_5
        0x1a -> :sswitch_4
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5c -> :sswitch_1
        0xa5 -> :sswitch_0
        0x20a9 -> :sswitch_0
    .end sparse-switch
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

    .line 4183
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4184
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4185
    monitor-exit v0

    .line 4186
    return-void

    .line 4185
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

    .line 4165
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4166
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4167
    monitor-exit v0

    .line 4168
    return-void

    .line 4167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 10
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4265
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4266
    const/4 v1, -0x1

    .line 4267
    .local v1, "fractLen":I
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->sendFractionalSeconds:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4269
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-gt p1, v2, :cond_2

    if-ltz p1, :cond_2

    .line 4271
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v2

    move v1, v2

    goto :goto_1

    .line 4268
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 4274
    :cond_2
    :goto_1
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;ZIZ)V

    .line 4276
    .end local v1    # "fractLen":I
    monitor-exit v0

    .line 4277
    return-void

    .line 4276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 10
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4238
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4239
    const/4 v1, -0x1

    .line 4240
    .local v1, "fractLen":I
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->sendFractionalSeconds:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4242
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-gt p1, v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v2

    if-lez v2, :cond_2

    .line 4245
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v2

    move v1, v2

    goto :goto_1

    .line 4241
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 4248
    :cond_2
    :goto_1
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;ZIZ)V

    .line 4249
    .end local v1    # "fractLen":I
    monitor-exit v0

    .line 4250
    return-void

    .line 4249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;ZIZ)V
    .locals 14
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "rollForward"    # Z
    .param p6, "fractionalLength"    # I
    .param p7, "useSSPSCompatibleTimezoneShift"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4295
    move-object v1, p0

    move v2, p1

    move-object/from16 v10, p3

    const/16 v0, 0x5d

    if-nez p2, :cond_0

    .line 4296
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    move-object/from16 v12, p2

    move/from16 v11, p6

    goto/16 :goto_4

    .line 4298
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4300
    invoke-virtual/range {p2 .. p2}, Ljava/sql/Timestamp;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Timestamp;

    .line 4302
    .end local p2    # "x":Ljava/sql/Timestamp;
    .local v3, "x":Ljava/sql/Timestamp;
    iget-boolean v4, v1, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/mysql/jdbc/PreparedStatement;->sendFractionalSeconds:Z

    if-nez v4, :cond_2

    if-nez p6, :cond_2

    .line 4303
    :cond_1
    invoke-static {v3}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object v3

    .line 4306
    :cond_2
    if-gez p6, :cond_3

    .line 4308
    const/4 v4, 0x6

    move v11, v4

    .end local p6    # "fractionalLength":I
    .local v4, "fractionalLength":I
    goto :goto_0

    .line 4306
    .end local v4    # "fractionalLength":I
    .restart local p6    # "fractionalLength":I
    :cond_3
    move/from16 v11, p6

    .line 4311
    .end local p6    # "fractionalLength":I
    .local v11, "fractionalLength":I
    :goto_0
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isServerTruncatesFracSecs()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v11, v4}, Lcom/mysql/jdbc/TimeUtil;->adjustTimestampNanosPrecision(Ljava/sql/Timestamp;IZ)Ljava/sql/Timestamp;

    move-result-object v12

    .line 4313
    .end local v3    # "x":Ljava/sql/Timestamp;
    .local v12, "x":Ljava/sql/Timestamp;
    iget-boolean v3, v1, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_4

    .line 4314
    invoke-direct {p0, p1, v12, v10}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    goto/16 :goto_3

    .line 4316
    :cond_4
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    .line 4320
    .local v3, "sessionCalendar":Ljava/util/Calendar;
    :goto_1
    invoke-static {v3, v10}, Lcom/mysql/jdbc/TimeUtil;->setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v13

    .line 4322
    .end local v3    # "sessionCalendar":Ljava/util/Calendar;
    .local v13, "sessionCalendar":Ljava/util/Calendar;
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v8

    move-object v4, v13

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v7, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v3

    .line 4324
    .end local v12    # "x":Ljava/sql/Timestamp;
    .local v3, "x":Ljava/sql/Timestamp;
    if-eqz p7, :cond_6

    .line 4325
    invoke-direct {p0, p1, v3, v11, v10}, Lcom/mysql/jdbc/PreparedStatement;->doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;ILjava/util/Calendar;)V

    goto :goto_2

    .line 4327
    :cond_6
    monitor-enter p0

    .line 4329
    :try_start_0
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    const-string v5, "\'\'yyyy-MM-dd HH:mm:ss"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v6}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    iput-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 4331
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/mysql/jdbc/TimeUtil;->setProlepticIfNeeded(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 4332
    .local v4, "adjCal":Ljava/util/Calendar;
    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    if-eq v5, v4, :cond_7

    .line 4333
    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 4336
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 4337
    .local v5, "buf":Ljava/lang/StringBuffer;
    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4339
    if-lez v11, :cond_8

    .line 4340
    invoke-virtual {v3}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    .line 4342
    .local v6, "nanos":I
    if-eqz v6, :cond_8

    .line 4343
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4344
    iget-boolean v7, v1, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    invoke-static {v6, v7, v11}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4348
    .end local v6    # "nanos":I
    :cond_8
    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4350
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4352
    .end local v4    # "adjCal":Ljava/util/Calendar;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4356
    .end local v13    # "sessionCalendar":Ljava/util/Calendar;
    :goto_2
    move-object v12, v3

    .end local v3    # "x":Ljava/sql/Timestamp;
    .restart local v12    # "x":Ljava/sql/Timestamp;
    :goto_3
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v5

    add-int/2addr v4, v5

    aput v0, v3, v4

    .line 4358
    :goto_4
    return-void

    .line 4352
    .end local v12    # "x":Ljava/sql/Timestamp;
    .restart local v3    # "x":Ljava/sql/Timestamp;
    .restart local v13    # "sessionCalendar":Ljava/util/Calendar;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "arg"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4511
    if-eqz p2, :cond_0

    .line 4512
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4514
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x46

    aput v2, v0, v1

    goto :goto_0

    .line 4516
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4518
    :goto_0
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 3
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

    .line 4498
    if-nez p2, :cond_0

    .line 4499
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 4501
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4503
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x7d5

    aput v2, v0, v1

    .line 4505
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4687
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4688
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4691
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4694
    goto :goto_0

    .line 4692
    :catch_0
    move-exception v1

    .line 4693
    .local v1, "sqlEx":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
