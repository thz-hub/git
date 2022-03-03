.class public Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;
.super Ljava/lang/Object;
.source "ServerStatusDiffInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# instance fields
.field private postExecuteValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preExecuteValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    return-void
.end method

.method private populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V
    .locals 4
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 61
    .local p2, "toPopulate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "stmt":Ljava/sql/Statement;
    const/4 v1, 0x0

    .line 65
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 66
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object v0, v2

    .line 67
    const-string v2, "SHOW SESSION STATUS"

    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :cond_0
    nop

    .line 79
    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 75
    :cond_1
    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    :cond_2
    nop

    .line 78
    nop

    .line 79
    return-void

    .line 72
    :catchall_0
    move-exception v2

    .line 76
    if-eqz v1, :cond_3

    .line 73
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 75
    :cond_3
    if-eqz v0, :cond_4

    .line 76
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    :cond_4
    nop

    .line 72
    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 96
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "originalResultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p4, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p4, v0, v1, v2}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    invoke-direct {p0, p4, v0}, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V

    .line 53
    invoke-interface {p4}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server status change for statement:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Util;->calculateDifferences(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "connection"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p3, v0, v1, v2}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    invoke-direct {p0, p3, v0}, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
