.class public Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;
.super Ljava/lang/Object;
.source "ResultSetScannerInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# instance fields
.field protected regexP:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 109
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 4
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    const-string v0, "resultSetScannerRegex"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "regexFromUser":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->regexP:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .line 59
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Can\'t use configured regex due to underlying exception."

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    throw v2

    .line 47
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "resultSetScannerRegex must be configured, and must be > 0 characters"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "originalResultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p4, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    move-object v0, p3

    .line 67
    .local v0, "finalResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    aput-object v4, v2, v3

    new-instance v3, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;

    invoke-direct {v3, p0, v0}, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;-><init>(Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object v1
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

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
