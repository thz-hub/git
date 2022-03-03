.class public Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;
.super Ljava/lang/Object;
.source "LoadBalancedAutoCommitInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private conn:Lcom/mysql/jdbc/ConnectionImpl;

.field private countStatements:Z

.field private matchingAfterStatementCount:I

.field private matchingAfterStatementRegex:Ljava/lang/String;

.field private matchingAfterStatementThreshold:I

.field private proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 31
    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 36
    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 40
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 3
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    .line 55
    const-string v0, "loadBalanceAutoCommitStatementThreshold"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "autoCommitSwapThresholdAsString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 61
    :goto_0
    const-string v1, "loadBalanceAutoCommitStatementRegex"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "autoCommitSwapRegex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    .line 67
    return-void
.end method

.method pauseCounters()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    .line 131
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "originalResultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p4, "connection"    # Lcom/mysql/jdbc/Connection;
    .param p5, "warningCount"    # I
    .param p6, "noIndexUsed"    # Z
    .param p7, "noGoodIndexUsed"    # Z
    .param p8, "statementException"    # Ljava/sql/SQLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    if-eqz v0, :cond_8

    const-string v0, "SET"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "SHOW"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 85
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 86
    return-object p3

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    .line 91
    .local v0, "lcl_proxy":Lcom/mysql/jdbc/MySQLConnection;
    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    if-nez v2, :cond_2

    .line 92
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    .line 95
    move-object v2, v0

    check-cast v2, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-virtual {v2}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 101
    .end local v0    # "lcl_proxy":Lcom/mysql/jdbc/MySQLConnection;
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-nez v0, :cond_4

    .line 102
    return-object p3

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    :cond_5
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 111
    :cond_6
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    iget v2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    if-lt v0, v2, :cond_7

    .line 112
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 121
    :cond_7
    :goto_1
    return-object p3

    .line 80
    :cond_8
    :goto_2
    return-object p3
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method resumeCounters()V
    .locals 1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    .line 135
    return-void
.end method
