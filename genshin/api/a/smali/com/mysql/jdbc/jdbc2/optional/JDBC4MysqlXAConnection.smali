.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
.source "JDBC4MysqlXAConnection.java"


# instance fields
.field private final statementEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/sql/StatementEventListener;",
            "Ljavax/sql/StatementEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Connection;Z)V
    .locals 1
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;
    .param p2, "logXaCommands"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public addStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/sql/StatementEventListener;

    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->close()V

    .line 48
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fireStatementEvent(Ljavax/sql/StatementEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/sql/StatementEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/StatementEventListener;

    .line 86
    .local v2, "listener":Ljavax/sql/StatementEventListener;
    invoke-interface {v2, p1}, Ljavax/sql/StatementEventListener;->statementClosed(Ljavax/sql/StatementEvent;)V

    .line 87
    .end local v2    # "listener":Ljavax/sql/StatementEventListener;
    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/sql/StatementEventListener;

    .line 78
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
