.class public Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "LoadBalancedConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;
    }
.end annotation


# static fields
.field public static final BLACKLIST_TIMEOUT_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceBlacklistTimeout"

.field public static final HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceHostRemovalGracePeriod"

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static globalBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;


# instance fields
.field private autoCommitSwapThreshold:I

.field private balancer:Lcom/mysql/jdbc/BalanceStrategy;

.field private connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

.field private connectionGroupProxyID:J

.field private connectionsToHostsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

.field private globalBlacklistTimeout:I

.field private hostRemovalGracePeriod:I

.field private hostsToListIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hostsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inTransaction:Z

.field protected liveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responseTimes:[J

.field private retriesAllDown:I

.field private totalPhysicalConnections:J

.field private transactionCount:J

.field private transactionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4LoadBalancedMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v3, v0, v1

    const-string v1, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    .line 861
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 18
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "S1009"

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 56
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    .line 57
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 62
    iput-wide v5, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    .line 67
    const/4 v7, 0x0

    iput v7, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    .line 70
    iput v7, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    .line 73
    iput v7, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    .line 77
    iput-boolean v7, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 78
    iput-wide v5, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 79
    iput-wide v5, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    .line 122
    const-string v0, "loadBalanceConnectionGroup"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "group":Ljava/lang/String;
    const/4 v6, 0x0

    .line 124
    .local v6, "enableJMX":Z
    const-string v0, "loadBalanceEnableJMX"

    const-string v8, "false"

    invoke-virtual {v2, v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "enableJMXAsString":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move v6, v0

    .line 131
    nop

    .line 133
    if-eqz v5, :cond_1

    .line 134
    invoke-static {v5}, Lcom/mysql/jdbc/ConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    .line 135
    if-eqz v6, :cond_0

    .line 136
    invoke-static {}, Lcom/mysql/jdbc/ConnectionGroupManager;->registerJmx()V

    .line 138
    :cond_0
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    move-object/from16 v10, p1

    invoke-virtual {v0, v1, v10}, Lcom/mysql/jdbc/ConnectionGroup;->registerConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v11, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v11}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .end local p1    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 133
    .end local v0    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v10, p1

    .line 143
    .end local p1    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1, v10, v2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    move-result v11

    .line 145
    .local v11, "numHosts":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v11, :cond_2

    .line 148
    iget-object v12, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v13, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    .line 151
    new-array v0, v11, [J

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 153
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v12, "retriesAllDown"

    const-string v13, "120"

    invoke-virtual {v0, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 155
    .local v12, "retriesAllDownAsString":Ljava/lang/String;
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 160
    nop

    .line 162
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v13, "loadBalanceBlacklistTimeout"

    const-string v14, "0"

    invoke-virtual {v0, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "blacklistTimeoutAsString":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 169
    nop

    .line 171
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v15, "loadBalanceHostRemovalGracePeriod"

    const-string v9, "15000"

    invoke-virtual {v0, v15, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "hostRemovalGracePeriodAsString":Ljava/lang/String;
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 177
    nop

    .line 179
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v15, "loadBalanceStrategy"

    const-string v7, "random"

    invoke-virtual {v0, v15, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "strategy":Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "InvalidLoadBalanceStrategy"

    if-eqz v0, :cond_3

    .line 181
    const-class v0, Lcom/mysql/jdbc/RandomBalanceStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0, v7, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    move-object/from16 v17, v5

    goto :goto_2

    .line 183
    :cond_3
    const-string v0, "bestResponseTime"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    const-class v0, Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0, v7, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    move-object/from16 v17, v5

    goto :goto_2

    .line 186
    :cond_4
    const-string v0, "serverAffinity"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    const-class v0, Lcom/mysql/jdbc/ServerAffinityStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0, v7, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    move-object/from16 v17, v5

    goto :goto_2

    .line 190
    :cond_5
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "group":Ljava/lang/String;
    .local v17, "group":Ljava/lang/String;
    invoke-static {v4, v2, v15, v7, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    .line 193
    :goto_2
    const-string v0, "loadBalanceAutoCommitStatementThreshold"

    invoke-virtual {v2, v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "autoCommitSwapThresholdAsString":Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 199
    nop

    .line 201
    const-string v0, "loadBalanceAutoCommitStatementRegex"

    const-string v7, ""

    invoke-virtual {v2, v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, "autoCommitSwapRegex":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    :try_start_5
    invoke-virtual {v7, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 209
    goto :goto_3

    .line 205
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v7, v16

    move-object/from16 p1, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local p1, "e":Ljava/lang/Exception;
    const-string v0, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementRegex"

    invoke-static {v0, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 212
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    iget v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    if-lez v0, :cond_9

    .line 213
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v3, "statementInterceptors"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "statementInterceptors":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 215
    iget-object v7, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v4, "com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {v7, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 p1, v0

    goto :goto_4

    .line 216
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 217
    iget-object v4, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v0

    .end local v0    # "statementInterceptors":Ljava/lang/String;
    .local p1, "statementInterceptors":Ljava/lang/String;
    const-string v0, ",com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    .line 216
    .end local p1    # "statementInterceptors":Ljava/lang/String;
    .restart local v0    # "statementInterceptors":Ljava/lang/String;
    :cond_8
    move-object/from16 p1, v0

    .line 219
    .end local v0    # "statementInterceptors":Ljava/lang/String;
    .restart local p1    # "statementInterceptors":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .end local p1    # "statementInterceptors":Ljava/lang/String;
    :cond_9
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/mysql/jdbc/BalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 225
    iget-object v0, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v4, "loadBalanceExceptionChecker"

    const-string v7, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    invoke-virtual {v0, v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "lbExceptionChecker":Ljava/lang/String;
    const-string v4, "InvalidLoadBalanceExceptionChecker"

    invoke-static {v3, v2, v0, v4, v3}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    iput-object v3, v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 230
    return-void

    .line 196
    .end local v0    # "lbExceptionChecker":Ljava/lang/String;
    .end local v14    # "autoCommitSwapRegex":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v7, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementThreshold"

    invoke-static {v7, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v3, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 174
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v15    # "strategy":Ljava/lang/String;
    .end local v17    # "group":Ljava/lang/String;
    .local v5, "group":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    .line 175
    .end local v5    # "group":Ljava/lang/String;
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v17    # "group":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const-string v5, "LoadBalancedConnectionProxy.badValueForLoadBalanceHostRemovalGracePeriod"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 165
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v9    # "hostRemovalGracePeriodAsString":Ljava/lang/String;
    .end local v17    # "group":Ljava/lang/String;
    .restart local v5    # "group":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    .line 166
    .end local v5    # "group":Ljava/lang/String;
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v17    # "group":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const-string v5, "LoadBalancedConnectionProxy.badValueForLoadBalanceBlacklistTimeout"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 156
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v13    # "blacklistTimeoutAsString":Ljava/lang/String;
    .end local v17    # "group":Ljava/lang/String;
    .restart local v5    # "group":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v17, v5

    .line 157
    .end local v5    # "group":Ljava/lang/String;
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v17    # "group":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const-string v5, "LoadBalancedConnectionProxy.badValueForRetriesAllDown"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v3, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 127
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v10    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "numHosts":I
    .end local v12    # "retriesAllDownAsString":Ljava/lang/String;
    .end local v17    # "group":Ljava/lang/String;
    .restart local v5    # "group":Ljava/lang/String;
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v0

    move-object/from16 v10, p1

    move-object v7, v4

    move-object/from16 v17, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v9, v0

    .end local v5    # "group":Ljava/lang/String;
    .restart local v17    # "group":Ljava/lang/String;
    move-object v0, v9

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    const-string v5, "LoadBalancedConnectionProxy.badValueForLoadBalanceEnableJMX"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method private declared-synchronized closeAllConnections()V
    .locals 3

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .local v1, "c":Lcom/mysql/jdbc/MySQLConnection;
    :try_start_1
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    goto :goto_1

    .line 413
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catch_0
    move-exception v2

    .line 414
    .end local v1    # "c":Lcom/mysql/jdbc/MySQLConnection;
    :goto_1
    goto :goto_0

    .line 417
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 419
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 425
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/LoadBalancedConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    .local p0, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 107
    .local v0, "connProxy":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    return-object v1
.end method

.method static declared-synchronized getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 4

    const-class v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    monitor-enter v0

    .line 864
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v1, :cond_0

    .line 865
    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    new-instance v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;

    invoke-direct {v3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    sput-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 868
    :cond_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addHost(Ljava/lang/String;)Z
    .locals 5
    .param p1, "hostPortPair"    # Ljava/lang/String;

    monitor-enter p0

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 786
    monitor-exit p0

    return v1

    .line 789
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [J

    .line 790
    .local v2, "newResponseTimes":[J
    array-length v4, v0

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    iput-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 793
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    monitor-exit p0

    return v3

    .line 784
    .end local v2    # "newResponseTimes":[J
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    .line 640
    return-void
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;J)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 625
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v0

    .line 627
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 630
    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 5
    .param p1, "hostPortSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    .line 374
    .local v0, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    .line 379
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getStatementInterceptorsInstances()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 380
    .local v2, "stmtInterceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    instance-of v3, v2, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    if-eqz v3, :cond_0

    .line 381
    move-object v3, v2

    check-cast v3, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    invoke-virtual {v3}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->resumeCounters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    goto :goto_1

    .end local v2    # "stmtInterceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    goto :goto_0

    .line 386
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 371
    .end local v0    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .end local p1    # "hostPortSpec":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    .local v1, "c":Lcom/mysql/jdbc/MySQLConnection;
    :try_start_1
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    goto :goto_1

    .line 469
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catch_0
    move-exception v2

    .line 470
    .end local v1    # "c":Lcom/mysql/jdbc/MySQLConnection;
    :goto_1
    goto :goto_0

    .line 473
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 475
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 481
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 465
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbortInternal()V
    .locals 3

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .local v1, "c":Lcom/mysql/jdbc/MySQLConnection;
    :try_start_1
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    goto :goto_1

    .line 445
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catch_0
    move-exception v2

    .line 446
    .end local v1    # "c":Lcom/mysql/jdbc/MySQLConnection;
    :goto_1
    goto :goto_0

    .line 449
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 451
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 457
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doPing()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "se":Ljava/sql/SQLException;
    const/4 v1, 0x0

    .line 559
    .local v1, "foundHost":Z
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v2

    .line 561
    .local v2, "pingTimeout":I
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 562
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 563
    .local v4, "host":Ljava/lang/String;
    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .local v6, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-nez v6, :cond_0

    .line 565
    goto :goto_0

    .line 568
    :cond_0
    if-nez v2, :cond_1

    .line 569
    :try_start_1
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    goto :goto_1

    .line 571
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_1
    invoke-virtual {v6, v5, v2}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :goto_1
    const/4 v1, 0x1

    .line 599
    goto :goto_3

    .line 574
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Ljava/sql/SQLException;
    :try_start_2
    iget-object v8, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 585
    invoke-virtual {v7}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Connection.exceededConnectionLifetime"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 587
    if-nez v0, :cond_3

    .line 588
    move-object v0, v7

    goto :goto_2

    .line 592
    :cond_2
    move-object v0, v7

    .line 593
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 594
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 598
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v8, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .end local v7    # "e":Ljava/sql/SQLException;
    :goto_3
    goto :goto_0

    .line 578
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v6    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .restart local v7    # "e":Ljava/sql/SQLException;
    :cond_4
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 579
    iput-boolean v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 580
    const-string v5, "Connection closed because ping of current connection failed."

    iput-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 581
    throw v7

    .line 603
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    .end local v7    # "e":Ljava/sql/SQLException;
    :cond_5
    if-nez v1, :cond_7

    .line 604
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 605
    iput-boolean v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 606
    const-string v3, "Connection closed due to inability to ping any active connections."

    iput-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 608
    if-nez v0, :cond_6

    .line 612
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v3, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V

    goto :goto_4

    .line 609
    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    .line 556
    .end local v0    # "se":Ljava/sql/SQLException;
    .end local v1    # "foundHost":Z
    .end local v2    # "pingTimeout":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivePhysicalConnectionCount()J
    .locals 2

    monitor-enter p0

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 811
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionGroupProxyID()J
    .locals 2

    monitor-enter p0

    .line 819
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 819
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentActiveHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 824
    .local v0, "c":Lcom/mysql/jdbc/MySQLConnection;
    if-eqz v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 826
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 830
    .end local v1    # "o":Ljava/lang/Object;
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 822
    .end local v0    # "c":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentTransactionDuration()J
    .locals 5

    monitor-enter p0

    .line 834
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 835
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 837
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    monitor-exit p0

    return-wide v1

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalBlacklist()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    .line 660
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 661
    .local v0, "fakedBlacklist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 662
    .local v2, "h":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 664
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "h":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 668
    .end local v0    # "fakedBlacklist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 670
    .local v0, "blacklistClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 671
    :try_start_3
    sget-object v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 672
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 673
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 676
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 679
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 680
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 682
    .local v4, "host":Ljava/lang/String;
    sget-object v5, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 683
    .local v5, "timeout":Ljava/lang/Long;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    .line 685
    sget-object v6, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 686
    :try_start_5
    sget-object v7, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 688
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 687
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 691
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "timeout":Ljava/lang/Long;
    :cond_3
    :goto_2
    goto :goto_1

    .line 692
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 695
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-object v3

    .line 698
    :cond_5
    monitor-exit p0

    return-object v0

    .line 672
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 655
    .end local v0    # "blacklistClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;-><init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    return-object v0

    .line 241
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public declared-synchronized getTotalPhysicalConnectionCount()J
    .locals 2

    monitor-enter p0

    .line 815
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 815
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransactionCount()J
    .locals 2

    monitor-enter p0

    .line 807
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 807
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized inTransaction()Z
    .locals 1

    monitor-enter p0

    .line 803
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 803
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 289
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 294
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "mappedHost":Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    .local v1, "hostIndex":I
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 301
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    .end local v1    # "hostIndex":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "mappedHost":Ljava/lang/Object;
    .end local p1    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 491
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "methodName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 494
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoReconnect:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z

    if-nez v1, :cond_0

    .line 496
    iput-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 497
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 498
    iput-boolean v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 499
    iput-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    goto :goto_0

    .line 501
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    const-string v1, "No operations allowed after connection closed."

    .line 502
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 505
    :cond_1
    const-string v2, "08003"

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 509
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    if-nez v1, :cond_3

    .line 510
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 511
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 512
    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 515
    :cond_3
    const/4 v1, 0x0

    .line 518
    .local v1, "result":Ljava/lang/Object;
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 520
    if-eqz v1, :cond_5

    .line 521
    instance-of v3, v1, Lcom/mysql/jdbc/Statement;

    if-eqz v3, :cond_4

    .line 522
    move-object v3, v1

    check-cast v3, Lcom/mysql/jdbc/Statement;

    invoke-interface {v3, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V

    .line 524
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    .line 527
    :cond_5
    nop

    .line 550
    :try_start_2
    const-string v3, "commit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "rollback"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 532
    :cond_6
    iput-boolean v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 539
    :try_start_3
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 541
    .local v4, "hostIndex":Ljava/lang/Integer;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v7, v6

    if-ge v5, v7, :cond_7

    .line 542
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v7, v9

    aput-wide v7, v6, v5

    .line 544
    .end local v4    # "hostIndex":Ljava/lang/Integer;
    :cond_7
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    throw v4

    .line 546
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 531
    .end local v2    # "host":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 527
    :catch_0
    move-exception v3

    .line 528
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 530
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 547
    :try_start_6
    const-string v3, "commit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "rollback"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 532
    :cond_9
    iput-boolean v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    .restart local v2    # "host":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 539
    :try_start_7
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 541
    .restart local v4    # "hostIndex":Ljava/lang/Integer;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v7, v6

    if-ge v5, v7, :cond_a

    .line 542
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v7, v9

    aput-wide v7, v6, v5

    .line 544
    .end local v4    # "hostIndex":Ljava/lang/Integer;
    :cond_a
    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 546
    :cond_b
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 547
    .end local v2    # "host":Ljava/lang/String;
    :cond_c
    :goto_4
    nop

    .line 548
    nop

    .line 550
    monitor-exit p0

    return-object v1

    .line 547
    :goto_5
    :try_start_9
    const-string v4, "commit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "rollback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 532
    :cond_d
    iput-boolean v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    .restart local v2    # "host":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 538
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 539
    :try_start_a
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 541
    .local v5, "hostIndex":Ljava/lang/Integer;
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v8, v7

    if-ge v6, v8, :cond_e

    .line 542
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 544
    .end local v5    # "hostIndex":Ljava/lang/Integer;
    :cond_e
    monitor-exit v4

    goto :goto_6

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v3

    .line 546
    :cond_f
    :goto_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 547
    .end local v2    # "host":Ljava/lang/String;
    :cond_10
    nop

    .line 531
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 490
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/Object;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isGlobalBlacklistEnabled()Z
    .locals 1

    .line 646
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMasterConnection()Z
    .locals 1

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized pickNewConnection()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    monitor-exit p0

    return-void

    .line 316
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [J

    iget v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 322
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateCurrentConnection()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v0

    .line 327
    .local v0, "pingTimeout":I
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceValidateConnectionOnSwapServer()Z

    move-result v1

    .line 329
    .local v1, "pingBeforeReturn":Z
    const/4 v2, 0x0

    .local v2, "hostsTried":I
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v3, "hostsToTry":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    .line 330
    const/4 v5, 0x0

    .line 332
    .local v5, "newConn":Lcom/mysql/jdbc/ConnectionImpl;
    :try_start_3
    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v7}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, [J

    iget v11, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v6

    move-object v5, v6

    .line 335
    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v6, :cond_5

    .line 336
    if-eqz v1, :cond_4

    .line 337
    if-nez v0, :cond_3

    .line 338
    invoke-virtual {v5}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {v5, v4, v0}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 344
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v4, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V

    .line 347
    :cond_5
    iput-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 350
    :catch_0
    move-exception v4

    .line 351
    .local v4, "e":Ljava/sql/SQLException;
    :try_start_4
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 353
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 329
    .end local v4    # "e":Ljava/sql/SQLException;
    .end local v5    # "newConn":Lcom/mysql/jdbc/ConnectionImpl;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "hostsTried":I
    .end local v3    # "hostsToTry":I
    :cond_7
    iput-boolean v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 360
    const-string v2, "Connection closed after inability to pick valid new connection during load-balance."

    iput-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 311
    .end local v0    # "pingTimeout":I
    .end local v1    # "pingBeforeReturn":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .param p1, "proxyConn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;

    .line 255
    .local v1, "c":Lcom/mysql/jdbc/MySQLConnection;
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .end local v1    # "c":Lcom/mysql/jdbc/MySQLConnection;
    goto :goto_0

    .line 257
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized removeHost(Ljava/lang/String;)V
    .locals 8
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    const-string v0, "Cannot remove only configured host."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 754
    .end local p0    # "this":Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 758
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v0, v0

    sub-int/2addr v0, v1

    new-array v0, v0, [J

    .line 759
    .local v0, "newResponseTimes":[J
    const/4 v1, 0x0

    .line 760
    .local v1, "newIdx":I
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 761
    .local v3, "h":Ljava/lang/String;
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 762
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 763
    .local v4, "idx":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 764
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-wide v5, v6, v5

    aput-wide v5, v0, v1

    .line 766
    :cond_2
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "newIdx":I
    .local v6, "newIdx":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    .line 767
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "idx":Ljava/lang/Integer;
    .end local v6    # "newIdx":I
    .restart local v1    # "newIdx":I
    :cond_3
    goto :goto_1

    .line 769
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 772
    .end local v0    # "newResponseTimes":[J
    .end local v1    # "newIdx":I
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 774
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :cond_6
    monitor-exit p0

    return-void

    .line 747
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHostWhenNotInUse(Ljava/lang/String;)V
    .locals 8
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 709
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    if-gtz v0, :cond_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 711
    return-void

    .line 714
    :cond_0
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    const/16 v0, 0x3e8

    .line 716
    .local v0, "timeBetweenChecks":I
    :cond_1
    monitor-enter p0

    .line 717
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 721
    .local v1, "cur":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v5, v5

    add-long/2addr v5, v1

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 722
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 725
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 730
    :cond_2
    int-to-long v3, v0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    :goto_1
    goto :goto_0

    .line 731
    :catch_0
    move-exception v3

    goto :goto_1

    .line 735
    .end local v1    # "cur":J
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 738
    return-void

    .line 735
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 267
    instance-of v0, p1, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    move-object v1, p1

    check-cast v1, Ljava/sql/SQLException;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;->shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 4
    .param p1, "source"    # Lcom/mysql/jdbc/Connection;
    .param p2, "target"    # Lcom/mysql/jdbc/Connection;
    .param p3, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "lbAutoCommitStmtInterceptor":Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;
    move-object v1, p2

    check-cast v1, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getStatementInterceptorsInstances()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 393
    .local v2, "stmtInterceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    instance-of v3, v2, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    if-eqz v3, :cond_0

    .line 394
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    .line 395
    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->pauseCounters()V

    .line 396
    goto :goto_1

    .end local v2    # "stmtInterceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    :cond_0
    goto :goto_0

    .line 399
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 400
    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->resumeCounters()V

    .line 403
    :cond_2
    return-void
.end method
