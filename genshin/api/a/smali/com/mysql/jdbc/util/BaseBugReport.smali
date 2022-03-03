.class public abstract Lcom/mysql/jdbc/util/BaseBugReport;
.super Ljava/lang/Object;
.source "BaseBugReport.java"


# instance fields
.field private conn:Ljava/sql/Connection;

.field private driver:Lcom/mysql/jdbc/Driver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/Driver;

    invoke-direct {v0}, Lcom/mysql/jdbc/Driver;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/util/BaseBugReport;->driver:Lcom/mysql/jdbc/Driver;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected final assertTrue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "condition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    if-eqz p2, :cond_0

    .line 160
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final assertTrue(Z)V
    .locals 1
    .param p1, "condition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    const-string v0, "(no message given)"

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/util/BaseBugReport;->assertTrue(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public final declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/BaseBugReport;->conn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    .end local p0    # "this":Lcom/mysql/jdbc/util/BaseBugReport;
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->getNewConnection()Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/util/BaseBugReport;->conn:Ljava/sql/Connection;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/util/BaseBugReport;->conn:Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/util/BaseBugReport;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 227
    .end local p0    # "this":Lcom/mysql/jdbc/util/BaseBugReport;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/BaseBugReport;->driver:Lcom/mysql/jdbc/Driver;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    .end local p0    # "this":Lcom/mysql/jdbc/util/BaseBugReport;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getNewConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/util/BaseBugReport;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    .end local p0    # "this":Lcom/mysql/jdbc/util/BaseBugReport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "jdbc:mysql:///test"

    return-object v0
.end method

.method public final run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->setUp()V

    .line 138
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->runTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    nop

    .line 143
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->tearDown()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    .line 143
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/BaseBugReport;->tearDown()V

    .line 141
    throw v0
.end method

.method public abstract runTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract tearDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
