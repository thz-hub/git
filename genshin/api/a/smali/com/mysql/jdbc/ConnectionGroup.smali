.class public Lcom/mysql/jdbc/ConnectionGroup;
.super Ljava/lang/Object;
.source "ConnectionGroup.java"


# instance fields
.field private activeConnections:J

.field private activeHosts:I

.field private closedHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private closedProxyTotalPhysicalConnections:J

.field private closedProxyTotalTransactions:J

.field private connectionProxies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/mysql/jdbc/LoadBalancedConnectionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private connections:J

.field private groupName:Ljava/lang/String;

.field private hostList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isInitialized:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->connections:J

    .line 37
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    .line 39
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->hostList:Ljava/util/Set;

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->isInitialized:Z

    .line 41
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalPhysicalConnections:J

    .line 42
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalTransactions:J

    .line 43
    iput v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedHosts:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionGroup;->groupName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public addHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionGroup;->addHost(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public addHost(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "forExisting"    # Z

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->hostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    .line 224
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    if-nez p2, :cond_1

    .line 227
    return-void

    .line 231
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    monitor-enter v1

    .line 233
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 234
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 237
    .local v2, "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addHost(Ljava/lang/String;)Z

    goto :goto_0

    .line 239
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_2
    return-void

    .line 234
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 224
    .end local v0    # "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V
    .locals 4
    .param p1, "proxy"    # Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 129
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    .line 130
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getConnectionGroupProxyID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalPhysicalConnections:J

    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getTotalPhysicalConnectionCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalPhysicalConnections:J

    .line 132
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalTransactions:J

    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getTransactionCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalTransactions:J

    .line 133
    return-void
.end method

.method public getActiveHostCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    return v0
.end method

.method public getActiveLogicalConnectionCount()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    return-wide v0
.end method

.method public getActivePhysicalConnectionCount()J
    .locals 7

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "result":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 98
    .local v4, "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    invoke-virtual {v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getActivePhysicalConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    goto :goto_0

    .line 100
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0

    .line 96
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getClosedHosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedHosts:Ljava/util/Set;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialHosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->hostList:Ljava/util/Set;

    return-object v0
.end method

.method public getTotalLogicalConnectionCount()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->connections:J

    return-wide v0
.end method

.method public getTotalPhysicalConnectionCount()J
    .locals 7

    .line 104
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalPhysicalConnections:J

    .line 105
    .local v0, "allConnections":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    monitor-enter v3

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 110
    .local v4, "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    invoke-virtual {v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getTotalPhysicalConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    goto :goto_0

    .line 112
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0

    .line 108
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getTotalTransactionCount()J
    .locals 7

    .line 117
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedProxyTotalTransactions:J

    .line 118
    .local v0, "transactions":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v2, "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 121
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 123
    .local v4, "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    invoke-virtual {v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getTransactionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    goto :goto_0

    .line 125
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0

    .line 121
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public registerConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;)J
    .locals 6
    .param p1, "proxy"    # Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/LoadBalancedConnectionProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 53
    .local p2, "localHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 54
    const-wide/16 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->isInitialized:Z

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->hostList:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->isInitialized:Z

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    .line 59
    :cond_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connections:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connections:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 60
    .local v0, "currentConnectionId":J
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeConnections:J

    .line 64
    return-wide v0

    .line 61
    .end local v0    # "currentConnectionId":J
    :catchall_0
    move-exception v2

    .restart local v0    # "currentConnectionId":J
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public removeHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionGroup;->removeHost(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public removeHost(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "removeExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ConnectionGroup;->removeHost(Ljava/lang/String;ZZ)V

    .line 157
    return-void
.end method

.method public declared-synchronized removeHost(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "removeExisting"    # Z
    .param p3, "waitForGracefulFailover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 176
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->hostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->activeHosts:I

    .line 182
    if-eqz p2, :cond_1

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionGroup;->connectionProxies:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 190
    .local v2, "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    if-eqz p3, :cond_0

    .line 191
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHostWhenNotInUse(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local p0    # "this":Lcom/mysql/jdbc/ConnectionGroup;
    :cond_0
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "proxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :goto_1
    goto :goto_0

    .line 187
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 197
    .end local v0    # "proxyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/mysql/jdbc/LoadBalancedConnectionProxy;>;"
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionGroup;->closedHosts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    monitor-exit p0

    return-void

    .line 179
    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host is not configured: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 173
    :cond_3
    const-string v0, "Cannot remove host, only one configured host active."

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .end local p1    # "hostPortPair":Ljava/lang/String;
    .end local p2    # "removeExisting":Z
    .end local p3    # "waitForGracefulFailover":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
