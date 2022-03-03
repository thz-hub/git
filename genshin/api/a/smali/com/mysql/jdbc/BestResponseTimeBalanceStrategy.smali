.class public Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;
.super Ljava/lang/Object;
.source "BestResponseTimeBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 39
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

    .line 43
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 18
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
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 49
    .local v3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 53
    .local v0, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 55
    const/4 v5, 0x0

    .line 57
    .local v5, "ex":Ljava/sql/SQLException;
    const/4 v6, 0x0

    .local v6, "attempts":I
    :goto_0
    move/from16 v8, p5

    if-ge v6, v8, :cond_7

    .line 58
    const-wide v9, 0x7fffffffffffffffL

    .line 60
    .local v9, "minResponseTime":J
    const/4 v11, 0x0

    .line 63
    .local v11, "bestHostIndex":I
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    .line 63
    :cond_0
    move-object v12, v0

    .line 67
    .end local v0    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v12, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v13, v2

    if-ge v0, v13, :cond_3

    .line 68
    aget-wide v13, v2, v0

    .line 70
    .local v13, "candidateResponseTime":J
    cmp-long v15, v13, v9

    if-gez v15, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 71
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_1

    .line 72
    move v11, v0

    .line 74
    goto :goto_3

    .line 77
    :cond_1
    move v11, v0

    .line 78
    move-wide v9, v13

    .line 67
    .end local v13    # "candidateResponseTime":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    .end local v0    # "i":I
    :cond_3
    :goto_3
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 84
    .local v13, "bestHost":Ljava/lang/String;
    move-object/from16 v14, p3

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/mysql/jdbc/ConnectionImpl;

    .line 86
    .local v15, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-nez v15, :cond_6

    .line 88
    :try_start_0
    invoke-virtual {v1, v13}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 109
    goto :goto_6

    .line 89
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    .line 90
    .local v17, "sqlEx":Ljava/sql/SQLException;
    move-object/from16 v5, v17

    .line 92
    move-object/from16 v7, v17

    .end local v17    # "sqlEx":Ljava/sql/SQLException;
    .local v7, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {v1, v13}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 97
    add-int/lit8 v6, v6, 0x1

    .line 99
    const-wide/16 v0, 0xfa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_4

    .line 100
    :catch_1
    move-exception v0

    .line 102
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .end local v12    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v0, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_5

    .line 96
    .end local v0    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v12    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_4
    move-object v0, v12

    .line 105
    .end local v12    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v0    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_5
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 108
    .end local v0    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v12    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    throw v7

    .line 112
    .end local v7    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    :goto_6
    return-object v15

    .line 57
    .end local v9    # "minResponseTime":J
    .end local v11    # "bestHostIndex":I
    .end local v12    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v13    # "bestHost":Ljava/lang/String;
    .end local v15    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .restart local v0    # "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_7
    move-object/from16 v14, p3

    .line 115
    .end local v6    # "attempts":I
    if-nez v5, :cond_8

    .line 119
    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_8
    throw v5
.end method
