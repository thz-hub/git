.class public Lcom/mysql/jdbc/SequentialBalanceStrategy;
.super Ljava/lang/Object;
.source "SequentialBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# instance fields
.field private currentHostIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 44
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

    .line 48
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 16
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

    .line 52
    .local p2, "configuredHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "liveConnections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionImpl;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    .line 54
    .local v4, "numHosts":I
    const/4 v0, 0x0

    .line 56
    .local v0, "ex":Ljava/sql/SQLException;
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v5

    .line 58
    .local v5, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v6, 0x0

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    .end local v0    # "ex":Ljava/sql/SQLException;
    .local v5, "ex":Ljava/sql/SQLException;
    .local v6, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v7, "attempts":I
    :goto_0
    move/from16 v8, p5

    if-ge v7, v8, :cond_f

    .line 59
    const-wide/16 v9, 0xfa

    const/4 v0, 0x1

    if-ne v4, v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    goto/16 :goto_a

    .line 61
    :cond_0
    iget v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v11, -0x1

    if-ne v0, v11, :cond_6

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    int-to-double v14, v4

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 64
    .local v12, "random":I
    move v0, v12

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 65
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 66
    iput v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 67
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ne v0, v11, :cond_4

    .line 72
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v12, :cond_4

    .line 73
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 74
    iput v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 75
    goto :goto_4

    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    .end local v0    # "i":I
    :cond_4
    :goto_4
    iget v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ne v0, v11, :cond_5

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v6

    .line 85
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_9

    .line 86
    :catch_0
    move-exception v0

    .line 89
    goto :goto_9

    .line 91
    .end local v12    # "random":I
    :cond_5
    goto :goto_a

    .line 93
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 94
    .restart local v0    # "i":I
    const/4 v11, 0x0

    .line 96
    .local v11, "foundGoodHost":Z
    :goto_5
    if-ge v0, v4, :cond_8

    .line 97
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 98
    iput v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 99
    const/4 v11, 0x1

    .line 100
    goto :goto_6

    .line 96
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 104
    :cond_8
    :goto_6
    if-nez v11, :cond_b

    .line 105
    const/4 v0, 0x0

    :goto_7
    iget v12, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ge v0, v12, :cond_a

    .line 106
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 107
    iput v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 108
    const/4 v11, 0x1

    .line 109
    move v12, v11

    move v11, v0

    goto :goto_8

    .line 105
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    move v12, v11

    move v11, v0

    goto :goto_8

    .line 104
    :cond_b
    move v12, v11

    move v11, v0

    .line 114
    .end local v0    # "i":I
    .local v11, "i":I
    .local v12, "foundGoodHost":Z
    :goto_8
    if-nez v12, :cond_c

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v6

    .line 119
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    goto :goto_9

    .line 120
    :catch_1
    move-exception v0

    .line 123
    nop

    .line 58
    .end local v11    # "i":I
    .end local v12    # "foundGoodHost":Z
    :goto_9
    move-object/from16 v12, p3

    goto :goto_c

    .line 127
    :cond_c
    :goto_a
    iget v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 129
    .local v11, "hostPortSpec":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/mysql/jdbc/ConnectionImpl;

    .line 131
    .local v13, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-nez v13, :cond_e

    .line 133
    :try_start_2
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v0

    .line 149
    goto :goto_d

    .line 134
    :catch_2
    move-exception v0

    move-object v14, v0

    .line 135
    .local v14, "sqlEx":Ljava/sql/SQLException;
    move-object v5, v14

    .line 137
    invoke-virtual {v2, v14}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 142
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 144
    goto :goto_b

    .line 143
    :catch_3
    move-exception v0

    .line 146
    :goto_b
    nop

    .line 58
    .end local v11    # "hostPortSpec":Ljava/lang/String;
    .end local v13    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .end local v14    # "sqlEx":Ljava/sql/SQLException;
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 148
    .restart local v11    # "hostPortSpec":Ljava/lang/String;
    .restart local v13    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .restart local v14    # "sqlEx":Ljava/sql/SQLException;
    :cond_d
    throw v14

    .line 152
    .end local v14    # "sqlEx":Ljava/sql/SQLException;
    :cond_e
    :goto_d
    return-object v13

    .line 58
    .end local v11    # "hostPortSpec":Ljava/lang/String;
    .end local v13    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    :cond_f
    move-object/from16 v12, p3

    .line 155
    .end local v7    # "attempts":I
    if-nez v5, :cond_10

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_10
    throw v5
.end method
