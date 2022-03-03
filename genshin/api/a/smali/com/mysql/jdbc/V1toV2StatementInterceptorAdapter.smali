.class public Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;
.super Ljava/lang/Object;
.source "V1toV2StatementInterceptorAdapter.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private final toProxy:Lcom/mysql/jdbc/StatementInterceptor;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/StatementInterceptor;)V
    .locals 0
    .param p1, "toProxy"    # Lcom/mysql/jdbc/StatementInterceptor;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->destroy()V

    .line 43
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->executeTopLevelOnly()Z

    move-result v0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/StatementInterceptor;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 51
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
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

    .line 38
    iget-object v0, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/StatementInterceptor;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
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

    .line 54
    iget-object v0, p0, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/StatementInterceptor;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method
