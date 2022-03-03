.class public Lcom/mysql/jdbc/RandomBalanceStrategy;
.super Ljava/lang/Object;
.source "RandomBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 40
    return-void
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

    .line 44
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 19
    .param p1, "proxy"    # Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    .param p4, "responseTimes"    # [J
    .param p5, "numRetries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/LoadBalancedConnectionProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;[JI)",
            "Lcom/mysql/jdbc/ConnectionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    .local p2, "configuredHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "liveConnections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionImpl;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    .line 50
    .local v4, "numHosts":I
    const/4 v0, 0x0

    .line 52
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v5, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v6

    .line 57
    .local v6, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    invoke-direct {v1, v5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 61
    .local v7, "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    move v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v0    # "ex":Ljava/sql/SQLException;
    .local v6, "ex":Ljava/sql/SQLException;
    .local v7, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v8, "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v9, "attempts":I
    :goto_0
    const/4 v0, 0x0

    move/from16 v10, p5

    if-ge v9, v10, :cond_5

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    int-to-double v13, v13

    mul-double v11, v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    .line 63
    .local v11, "random":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_4

    .line 67
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 69
    .local v12, "hostPortSpec":Ljava/lang/String;
    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/mysql/jdbc/ConnectionImpl;

    .line 71
    .local v14, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-nez v14, :cond_3

    .line 73
    :try_start_0
    invoke-virtual {v2, v12}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    .line 108
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    move-object v15, v0

    .line 75
    .local v15, "sqlEx":Ljava/sql/SQLException;
    move-object v6, v15

    .line 77
    invoke-virtual {v2, v15}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    .line 82
    .local v16, "whiteListIndex":Ljava/lang/Integer;
    if-eqz v16, :cond_0

    .line 83
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    invoke-direct {v1, v5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 86
    :cond_0
    invoke-virtual {v2, v12}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 88
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    add-int/lit8 v9, v9, 0x1

    .line 91
    const-wide/16 v17, 0xfa

    :try_start_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    .line 96
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    .end local v8    # "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v7

    .line 100
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-direct {v1, v5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    move-object v8, v0

    .line 104
    .end local v0    # "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "whiteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 107
    .end local v16    # "whiteListIndex":Ljava/lang/Integer;
    :cond_2
    throw v15

    .line 111
    .end local v15    # "sqlEx":Ljava/sql/SQLException;
    :cond_3
    :goto_2
    return-object v14

    .line 64
    .end local v12    # "hostPortSpec":Ljava/lang/String;
    .end local v14    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    :cond_4
    move-object/from16 v13, p3

    const-string v12, "No hosts configured"

    invoke-static {v12, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 61
    .end local v11    # "random":I
    :cond_5
    move-object/from16 v13, p3

    .line 114
    .end local v9    # "attempts":I
    if-nez v6, :cond_6

    .line 118
    return-object v0

    .line 115
    :cond_6
    throw v6
.end method
