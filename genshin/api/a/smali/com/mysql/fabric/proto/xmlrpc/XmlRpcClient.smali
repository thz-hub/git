.class public Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;
.super Ljava/lang/Object;
.source "XmlRpcClient.java"


# static fields
.field private static final FIELD_ADDRESS:Ljava/lang/String; = "address"

.field private static final FIELD_COLUMN_NAME:Ljava/lang/String; = "column_name"

.field private static final FIELD_GLOBAL_GROUP_ID:Ljava/lang/String; = "global_group_id"

.field private static final FIELD_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final FIELD_HOST:Ljava/lang/String; = "host"

.field private static final FIELD_LOWER_BOUND:Ljava/lang/String; = "lower_bound"

.field private static final FIELD_MAPPING_ID:Ljava/lang/String; = "mapping_id"

.field private static final FIELD_MODE:Ljava/lang/String; = "mode"

.field private static final FIELD_PORT:Ljava/lang/String; = "port"

.field private static final FIELD_RESULT:Ljava/lang/String; = "result"

.field private static final FIELD_SCHEMA_NAME:Ljava/lang/String; = "schema_name"

.field private static final FIELD_SERVER_UUID:Ljava/lang/String; = "server_uuid"

.field private static final FIELD_SHARD_ID:Ljava/lang/String; = "shard_id"

.field private static final FIELD_STATUS:Ljava/lang/String; = "status"

.field private static final FIELD_TABLE_NAME:Ljava/lang/String; = "table_name"

.field private static final FIELD_TYPE_NAME:Ljava/lang/String; = "type_name"

.field private static final FIELD_WEIGHT:Ljava/lang/String; = "weight"

.field private static final METHOD_DUMP_FABRIC_NODES:Ljava/lang/String; = "dump.fabric_nodes"

.field private static final METHOD_DUMP_SERVERS:Ljava/lang/String; = "dump.servers"

.field private static final METHOD_DUMP_SHARD_INDEX:Ljava/lang/String; = "dump.shard_index"

.field private static final METHOD_DUMP_SHARD_MAPS:Ljava/lang/String; = "dump.shard_maps"

.field private static final METHOD_DUMP_SHARD_TABLES:Ljava/lang/String; = "dump.shard_tables"

.field private static final METHOD_GROUP_ADD:Ljava/lang/String; = "group.add"

.field private static final METHOD_GROUP_CREATE:Ljava/lang/String; = "group.create"

.field private static final METHOD_GROUP_DESTROY:Ljava/lang/String; = "group.destroy"

.field private static final METHOD_GROUP_LOOKUP_GROUPS:Ljava/lang/String; = "group.lookup_groups"

.field private static final METHOD_GROUP_PROMOTE:Ljava/lang/String; = "group.promote"

.field private static final METHOD_GROUP_REMOVE:Ljava/lang/String; = "group.remove"

.field private static final METHOD_SHARDING_ADD_SHARD:Ljava/lang/String; = "sharding.add_shard"

.field private static final METHOD_SHARDING_ADD_TABLE:Ljava/lang/String; = "sharding.add_table"

.field private static final METHOD_SHARDING_CREATE_DEFINITION:Ljava/lang/String; = "sharding.create_definition"

.field private static final METHOD_SHARDING_LOOKUP_SERVERS:Ljava/lang/String; = "sharding.lookup_servers"

.field private static final METHOD_THREAT_REPORT_ERROR:Ljava/lang/String; = "threat.report_error"

.field private static final METHOD_THREAT_REPORT_FAILURE:Ljava/lang/String; = "threat.report_failure"

.field private static final THREAT_REPORTER_NAME:Ljava/lang/String; = "MySQL Connector/J"


# instance fields
.field private methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;

    invoke-direct {v0, p1}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 95
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 96
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;

    iget-object v1, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;-><init>(Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 98
    :cond_0
    return-void
.end method

.method private errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "responseData":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Lcom/mysql/fabric/Response;

    invoke-direct {v1, v0}, Lcom/mysql/fabric/Response;-><init>(Ljava/util/List;)V

    .line 153
    .local v1, "response":Lcom/mysql/fabric/Response;
    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 156
    return-object v1

    .line 154
    :cond_0
    new-instance v2, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call failed to method `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\':\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getShardIndices(I)Lcom/mysql/fabric/FabricStateResponse;
    .locals 11
    .param p1, "shardMappingId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "version":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 242
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "dump.shard_index"

    invoke-direct {p0, v2, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v2

    .line 243
    .local v2, "indexResponse":Lcom/mysql/fabric/Response;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v3, "indices":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;"
    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 247
    .local v5, "rawIndexEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v6, "lower_bound"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 248
    .local v6, "bound":Ljava/lang/String;
    const-string v7, "shard_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 249
    .local v7, "shardId":I
    const-string v8, "group_id"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 250
    .local v8, "groupName":Ljava/lang/String;
    new-instance v9, Lcom/mysql/fabric/ShardIndex;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v6, v10, v8}, Lcom/mysql/fabric/ShardIndex;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 251
    .local v9, "si":Lcom/mysql/fabric/ShardIndex;
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "rawIndexEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "bound":Ljava/lang/String;
    .end local v7    # "shardId":I
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v9    # "si":Lcom/mysql/fabric/ShardIndex;
    goto :goto_0

    .line 253
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v4, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v4
.end method

.method private getShardTables(I)Lcom/mysql/fabric/FabricStateResponse;
    .locals 10
    .param p1, "shardMappingId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "version":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 226
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "dump.shard_tables"

    invoke-direct {p0, v2, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v2

    .line 227
    .local v2, "tablesResponse":Lcom/mysql/fabric/Response;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v3, "tables":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;"
    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 230
    .local v5, "rawTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v6, "schema_name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 231
    .local v6, "database":Ljava/lang/String;
    const-string v7, "table_name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 232
    .local v7, "table":Ljava/lang/String;
    const-string v8, "column_name"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 233
    .local v8, "column":Ljava/lang/String;
    new-instance v9, Lcom/mysql/fabric/ShardTable;

    invoke-direct {v9, v6, v7, v8}, Lcom/mysql/fabric/ShardTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v9, "st":Lcom/mysql/fabric/ShardTable;
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v5    # "rawTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "database":Ljava/lang/String;
    .end local v7    # "table":Ljava/lang/String;
    .end local v8    # "column":Ljava/lang/String;
    .end local v9    # "st":Lcom/mysql/fabric/ShardTable;
    goto :goto_0

    .line 236
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v4, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v4
.end method

.method private static toServerSet(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 137
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v0, "servers":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/Server;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 139
    .local v2, "serverData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serverData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    return-object v0
.end method

.method private static unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/mysql/fabric/Server;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .local p0, "serverData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "mode"

    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v4, "status"

    if-eqz v3, :cond_0

    .line 113
    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/mysql/fabric/ServerMode;->getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerMode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 114
    .local v0, "mode":Lcom/mysql/fabric/ServerMode;
    :try_start_2
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Lcom/mysql/fabric/ServerRole;->getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerRole;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 115
    .local v3, "role":Lcom/mysql/fabric/ServerRole;
    :try_start_3
    const-string v4, "host"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v4

    .line 116
    .local v2, "host":Ljava/lang/String;
    :try_start_4
    const-string v4, "port"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .local v1, "port":I
    goto :goto_0

    .line 128
    .end local v1    # "port":I
    :catch_0
    move-exception v4

    .restart local v1    # "port":I
    goto :goto_2

    .line 119
    .end local v0    # "mode":Lcom/mysql/fabric/ServerMode;
    .end local v1    # "port":I
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "role":Lcom/mysql/fabric/ServerRole;
    :cond_0
    :try_start_5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/fabric/ServerMode;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerMode;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 120
    .restart local v0    # "mode":Lcom/mysql/fabric/ServerMode;
    :try_start_6
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/fabric/ServerRole;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerRole;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 121
    .restart local v3    # "role":Lcom/mysql/fabric/ServerRole;
    :try_start_7
    const-string v4, "address"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "hostnameAndPort":[Ljava/lang/String;
    aget-object v2, v4, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 123
    .restart local v2    # "host":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 125
    .end local v4    # "hostnameAndPort":[Ljava/lang/String;
    .restart local v1    # "port":I
    :goto_0
    :try_start_9
    new-instance v4, Lcom/mysql/fabric/Server;

    const-string v5, "group_id"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const-string v5, "server_uuid"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const-string v5, "weight"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object v5, v4

    move-object v8, v2

    move v9, v1

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v5 .. v13}, Lcom/mysql/fabric/Server;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mysql/fabric/ServerMode;Lcom/mysql/fabric/ServerRole;D)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 127
    .local v4, "s":Lcom/mysql/fabric/Server;
    return-object v4

    .line 128
    .end local v4    # "s":Lcom/mysql/fabric/Server;
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v1    # "port":I
    .end local v2    # "host":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "role":Lcom/mysql/fabric/ServerRole;
    :catch_3
    move-exception v4

    move-object v3, v2

    .restart local v1    # "port":I
    .restart local v3    # "role":Lcom/mysql/fabric/ServerRole;
    :goto_1
    goto :goto_2

    .end local v0    # "mode":Lcom/mysql/fabric/ServerMode;
    .end local v1    # "port":I
    .end local v3    # "role":Lcom/mysql/fabric/ServerRole;
    :catch_4
    move-exception v4

    move-object v3, v2

    .restart local v1    # "port":I
    .restart local v3    # "role":Lcom/mysql/fabric/ServerRole;
    move-object v0, v2

    .line 129
    .restart local v0    # "mode":Lcom/mysql/fabric/ServerMode;
    .restart local v2    # "host":Ljava/lang/String;
    .local v4, "ex":Ljava/lang/Exception;
    :goto_2
    new-instance v5, Lcom/mysql/fabric/FabricCommunicationException;

    const-string v6, "Unable to parse server definition"

    invoke-direct {v5, v6, v4}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public addServerToGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "group.add"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 345
    return-void
.end method

.method public createGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "group.create"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 304
    return-void
.end method

.method public createServerInGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "group.add"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 318
    return-void
.end method

.method public createShardIndex(ILjava/lang/String;)V
    .locals 4
    .param p1, "shardMappingId"    # I
    .param p2, "groupNameLowerBoundList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 339
    const-string v0, "ENABLED"

    .line 340
    .local v0, "status":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v2, "sharding.add_shard"

    invoke-direct {p0, v2, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 341
    return-void
.end method

.method public createShardMapping(Lcom/mysql/fabric/ShardingType;Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Lcom/mysql/fabric/ShardingType;
    .param p2, "globalGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mysql/fabric/ShardingType;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "sharding.create_definition"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 331
    .local v0, "r":Lcom/mysql/fabric/Response;
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "result"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public createShardTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shardMappingId"    # I
    .param p2, "database"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "sharding.add_table"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 336
    return-void
.end method

.method public destroyGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "group.destroy"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 311
    return-void
.end method

.method public getFabricNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dump.fabric_nodes"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 164
    .local v0, "resp":Lcom/mysql/fabric/Response;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 166
    .local v3, "node":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "port"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    return-object v1
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v0, "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "group.lookup_groups"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 177
    .local v2, "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "group_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    return-object v0
.end method

.method public getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    .local v0, "groups":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ServerGroup;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/ServerGroup;

    return-object v1

    .line 187
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getServerGroups()Lcom/mysql/fabric/FabricStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 220
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;
    .locals 9
    .param p1, "groupPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "version":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "dump.servers"

    invoke-direct {p0, v2, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v1

    .line 202
    .local v1, "response":Lcom/mysql/fabric/Response;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v2, "serversByGroupName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/mysql/fabric/Server;>;>;"
    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 204
    .local v4, "server":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v4}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;

    move-result-object v5

    .line 205
    .local v5, "s":Lcom/mysql/fabric/Server;
    invoke-virtual {v5}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 206
    invoke-virtual {v5}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-virtual {v5}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v4    # "server":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v5    # "s":Lcom/mysql/fabric/Server;
    goto :goto_0

    .line 211
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v3, "serverGroups":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ServerGroup;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 213
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/mysql/fabric/Server;>;>;"
    new-instance v6, Lcom/mysql/fabric/ServerGroup;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-direct {v6, v7, v8}, Lcom/mysql/fabric/ServerGroup;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 214
    .local v6, "g":Lcom/mysql/fabric/ServerGroup;
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/mysql/fabric/Server;>;>;"
    .end local v6    # "g":Lcom/mysql/fabric/ServerGroup;
    goto :goto_1

    .line 216
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v4
.end method

.method public getServersForKey(Ljava/lang/String;I)Ljava/util/Set;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "sharding.lookup_servers"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 192
    .local v0, "r":Lcom/mysql/fabric/Response;
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->toServerSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getShardMappings()Lcom/mysql/fabric/FabricStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 296
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardMappings(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getShardMappings(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;
    .locals 21
    .param p1, "shardMappingIdPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/fabric/FabricStateResponse<",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 264
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 265
    .local v1, "version":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 266
    .local v2, "args":[Ljava/lang/Object;
    const-string v3, "dump.shard_maps"

    invoke-direct {v0, v3, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v3

    .line 268
    .local v3, "mapsResponse":Lcom/mysql/fabric/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 269
    .local v4, "minExpireTimeMillis":J
    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v6

    .line 272
    .local v6, "baseTtl":I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v7, "mappings":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardMapping;>;"
    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 274
    .local v9, "rawMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v10, "mapping_id"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 275
    .local v10, "mappingId":I
    const-string v11, "type_name"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/mysql/fabric/ShardingType;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ShardingType;

    move-result-object v17

    .line 276
    .local v17, "shardingType":Lcom/mysql/fabric/ShardingType;
    const-string v11, "global_group_id"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/String;

    .line 278
    .local v18, "globalGroupName":Ljava/lang/String;
    invoke-direct {v0, v10}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardTables(I)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v19

    .line 279
    .local v19, "tables":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;>;"
    invoke-direct {v0, v10}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardIndices(I)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v20

    .line 281
    .local v20, "indices":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-gez v13, :cond_0

    .line 282
    invoke-virtual/range {v19 .. v19}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v4

    .line 284
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-gez v13, :cond_1

    .line 285
    invoke-virtual/range {v20 .. v20}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v4

    .line 288
    :cond_1
    new-instance v11, Lcom/mysql/fabric/ShardMappingFactory;

    invoke-direct {v11}, Lcom/mysql/fabric/ShardMappingFactory;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Ljava/util/Set;

    invoke-virtual/range {v20 .. v20}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Ljava/util/Set;

    move v12, v10

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-virtual/range {v11 .. v16}, Lcom/mysql/fabric/ShardMappingFactory;->createShardMapping(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lcom/mysql/fabric/ShardMapping;

    move-result-object v11

    .line 289
    .local v11, "m":Lcom/mysql/fabric/ShardMapping;
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v9    # "rawMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10    # "mappingId":I
    .end local v11    # "m":Lcom/mysql/fabric/ShardMapping;
    .end local v17    # "shardingType":Lcom/mysql/fabric/ShardingType;
    .end local v18    # "globalGroupName":Ljava/lang/String;
    .end local v19    # "tables":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;>;"
    .end local v20    # "indices":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;>;"
    goto :goto_0

    .line 292
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v8, Lcom/mysql/fabric/FabricStateResponse;

    invoke-direct {v8, v7, v6, v4, v5}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;IJ)V

    return-object v8
.end method

.method public promoteServerInGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;

    move-result-object v0

    .line 353
    .local v0, "serverGroup":Lcom/mysql/fabric/ServerGroup;
    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getServers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/Server;

    .line 354
    .local v2, "s":Lcom/mysql/fabric/Server;
    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->getPort()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 355
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "group.promote"

    invoke-direct {p0, v4, v3}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 356
    goto :goto_1

    .end local v2    # "s":Lcom/mysql/fabric/Server;
    :cond_0
    goto :goto_0

    .line 359
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void
.end method

.method public removeServerFromGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "group.remove"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 349
    return-void
.end method

.method public reportServerError(Lcom/mysql/fabric/Server;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "server"    # Lcom/mysql/fabric/Server;
    .param p2, "errorDescription"    # Ljava/lang/String;
    .param p3, "forceFaulty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 362
    const-string v0, "MySQL Connector/J"

    .line 363
    .local v0, "reporter":Ljava/lang/String;
    const-string v1, "threat.report_error"

    .line 364
    .local v1, "command":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 365
    const-string v1, "threat.report_failure"

    .line 367
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 368
    return-void
.end method
