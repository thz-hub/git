.class public Lcom/mysql/fabric/FabricConnection;
.super Ljava/lang/Object;
.source "FabricConnection.java"


# instance fields
.field private client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

.field private serverGroupsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private serverGroupsExpiration:J

.field private serverGroupsTtl:I

.field private shardMappingsByTableName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;"
        }
    .end annotation
.end field

.field private shardMappingsExpiration:J

.field private shardMappingsTtl:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    .line 46
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshState()I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 55
    .local p1, "urls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multiple connections not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClient()Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    return-object v0
.end method

.method public getFabricHosts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceUuid()Ljava/lang/String;
    .locals 1

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;
    .locals 1
    .param p1, "serverGroupName"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->isStateExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerGroup;

    return-object v0
.end method

.method public getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;
    .locals 3
    .param p1, "database"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->isStateExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardMapping;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isStateExpired()Z
    .locals 5

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public refreshState()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-virtual {v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups()Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    .line 72
    .local v0, "serverGroups":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ServerGroup;>;>;"
    iget-object v1, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-virtual {v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardMappings()Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v1

    .line 74
    .local v1, "shardMappings":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ShardMapping;>;>;"
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    .line 75
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getTtl()I

    move-result v2

    iput v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsTtl:I

    .line 76
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/fabric/ServerGroup;

    .line 77
    .local v3, "g":Lcom/mysql/fabric/ServerGroup;
    iget-object v4, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "g":Lcom/mysql/fabric/ServerGroup;
    :cond_0
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    .line 81
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getTtl()I

    move-result v2

    iput v2, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsTtl:I

    .line 82
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/fabric/ShardMapping;

    .line 84
    .local v3, "m":Lcom/mysql/fabric/ShardMapping;
    invoke-virtual {v3}, Lcom/mysql/fabric/ShardMapping;->getShardTables()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/fabric/ShardTable;

    .line 85
    .local v5, "t":Lcom/mysql/fabric/ShardTable;
    iget-object v6, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mysql/fabric/ShardTable;->getDatabase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mysql/fabric/ShardTable;->getTable()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v3    # "m":Lcom/mysql/fabric/ShardMapping;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Lcom/mysql/fabric/ShardTable;
    :cond_1
    goto :goto_1

    .line 89
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public refreshStatePassive()I
    .locals 6

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshState()I

    move-result v0
    :try_end_0
    .catch Lcom/mysql/fabric/FabricCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/mysql/fabric/FabricCommunicationException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsTtl:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsTtl:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    .line 101
    .end local v0    # "e":Lcom/mysql/fabric/FabricCommunicationException;
    const/4 v0, 0x0

    return v0
.end method
