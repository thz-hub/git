.class public Lcom/mysql/jdbc/ServerAffinityStrategy;
.super Lcom/mysql/jdbc/RandomBalanceStrategy;
.source "ServerAffinityStrategy.java"


# static fields
.field public static final AFFINITY_ORDER:Ljava/lang/String; = "serverAffinityOrder"


# instance fields
.field public affinityOrderedServers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/mysql/jdbc/RandomBalanceStrategy;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/RandomBalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 38
    const-string v0, "serverAffinityOrder"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "hosts":Ljava/lang/String;
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 8
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

    .line 47
    .local p2, "configuredHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "liveConnections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mysql/jdbc/ConnectionImpl;>;"
    iget-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 52
    .local v0, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 53
    .local v4, "host":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl;

    .line 55
    .local v5, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-eqz v5, :cond_1

    .line 56
    return-object v5

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 60
    return-object v5

    .line 61
    :catch_0
    move-exception v6

    .line 62
    .local v6, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 52
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v1

    return-object v1
.end method
