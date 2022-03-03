.class public Lcom/mysql/jdbc/ReplicationConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "ReplicationConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# static fields
.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected allowMasterDownConnections:Z

.field protected allowSlaveDownConnections:Z

.field connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

.field private connectionGroupID:J

.field private driver:Lcom/mysql/jdbc/NonRegisteringDriver;

.field protected enableJMX:Z

.field protected masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private masterHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private masterProperties:Ljava/util/Properties;

.field protected readFromMasterWhenNoSlaves:Z

.field protected readFromMasterWhenNoSlavesOriginal:Z

.field protected readOnly:Z

.field private slaveHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slaveProperties:Ljava/util/Properties;

.field protected slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4ReplicationMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v3, v0, v1

    const-string v1, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    .line 81
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V
    .locals 10
    .param p2, "masterProperties"    # Ljava/util/Properties;
    .param p4, "slaveProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
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

    .line 106
    .local p1, "masterHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "slaveHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "S1009"

    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    .line 45
    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    .line 46
    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    .line 47
    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    .line 48
    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    .line 49
    iput-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 52
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 108
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnection;

    iput-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 110
    const-string v2, "replicationEnableJMX"

    const-string v3, "false"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "enableJMXAsString":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 117
    nop

    .line 119
    const-string v6, "allowMasterDownConnections"

    invoke-virtual {p2, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "allowMasterDownConnectionsAsString":Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    nop

    .line 128
    const-string v7, "allowSlaveDownConnections"

    invoke-virtual {p2, v7, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "allowSlaveDownConnectionsAsString":Ljava/lang/String;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 135
    nop

    .line 137
    const-string v7, "readFromMasterWhenNoSlaves"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "readFromMasterWhenNoSlavesAsString":Ljava/lang/String;
    :try_start_3
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 145
    nop

    .line 147
    const-string v1, "replicationConnectionGroup"

    invoke-virtual {p2, v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "group":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 149
    invoke-static {v1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 150
    iget-boolean v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    if-eqz v8, :cond_0

    .line 151
    invoke-static {}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->registerJmx()V

    .line 153
    :cond_0
    iget-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v8, v9, p1, p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->registerReplicationConnection(Lcom/mysql/jdbc/ReplicationConnection;Ljava/util/List;Ljava/util/List;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 155
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {v9}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 156
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {v9}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 159
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    .line 162
    :goto_0
    new-instance v8, Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-direct {v8}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    iput-object v8, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    .line 163
    iput-object p4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    .line 164
    iput-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    .line 166
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 170
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    goto :goto_1

    .line 171
    :catch_0
    move-exception v8

    .line 172
    .local v8, "e":Ljava/sql/SQLException;
    iget-boolean v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    if-nez v9, :cond_3

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_2

    .line 174
    iget-object v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 176
    :cond_2
    throw v8

    .line 180
    .end local v8    # "e":Ljava/sql/SQLException;
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 182
    .local v8, "exCaught":Ljava/sql/SQLException;
    :try_start_5
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v9

    iput-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 185
    goto :goto_2

    .line 183
    :catch_1
    move-exception v9

    .line 184
    .local v9, "e":Ljava/sql/SQLException;
    move-object v8, v9

    .line 187
    .end local v9    # "e":Ljava/sql/SQLException;
    :goto_2
    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v9, :cond_7

    .line 188
    iget-boolean v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v9, :cond_4

    .line 190
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 191
    iput-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    goto :goto_3

    .line 193
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v4, :cond_5

    .line 194
    iget-object v9, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v4, v9}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 196
    :cond_5
    if-eqz v8, :cond_6

    .line 197
    throw v8

    .line 199
    :cond_6
    const-string v4, "ReplicationConnectionProxy.initializationWithEmptyHostsLists"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 203
    :cond_7
    :goto_3
    return-void

    .line 141
    .end local v1    # "group":Ljava/lang/String;
    .end local v8    # "exCaught":Ljava/sql/SQLException;
    :catch_2
    move-exception v8

    .line 142
    .local v8, "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v1

    const-string v1, "ReplicationConnectionProxy.badValueForReadFromMasterWhenNoSlaves"

    invoke-static {v1, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 131
    .end local v7    # "readFromMasterWhenNoSlavesAsString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 132
    .local v7, "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v1, "ReplicationConnectionProxy.badValueForAllowSlaveDownConnections"

    invoke-static {v1, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 122
    .end local v3    # "allowSlaveDownConnectionsAsString":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    const-string v1, "ReplicationConnectionProxy.badValueForAllowMasterDownConnections"

    invoke-static {v1, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 113
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "allowMasterDownConnectionsAsString":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 114
    .restart local v3    # "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "ReplicationConnectionProxy.badValueForReplicationEnableJMX"

    invoke-static {v1, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;
    .locals 5
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 454
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:mysql:loadbalance://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "url":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 457
    .local v1, "firstHost":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    .local v3, "host":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 459
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/4 v1, 0x0

    .end local v3    # "host":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, "DBNAME"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "masterDb":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    const-string v0, "ReplicationConnectionProxy.noHostsInconsistentState"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0xf4242

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "25000"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 359
    :cond_1
    :goto_0
    return-void
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;
    .locals 3
    .param p1, "masterProperties"    # Ljava/util/Properties;
    .param p3, "slaveProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/ReplicationConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    .local p0, "masterHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "slaveHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/ReplicationConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V

    .line 87
    .local v0, "connProxy":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    const-class v1, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    return-object v1
.end method

.method private initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 425
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 426
    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 431
    .local v0, "newMasterConn":Lcom/mysql/jdbc/LoadBalancedConnection;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 433
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 434
    return-object v0
.end method

.method private initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 440
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 441
    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 446
    .local v0, "newSlavesConn":Lcom/mysql/jdbc/LoadBalancedConnection;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 447
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setReadOnly(Z)V

    .line 449
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 450
    return-object v0
.end method

.method private resetReadFromMasterWhenNoSlaves()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    .line 712
    return-void
.end method

.method private declared-synchronized switchToMasterConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 476
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 477
    monitor-exit p0

    return v1

    .line 482
    :cond_1
    nop

    .line 484
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 486
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/sql/SQLException;
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 481
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchToSlavesConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 494
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 495
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 500
    :cond_1
    nop

    .line 502
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 504
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :cond_3
    monitor-exit p0

    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/sql/SQLException;
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 499
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private switchToSlavesConnectionIfNecessary()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized addSlaveHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 601
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isHostSlave(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 602
    monitor-exit p0

    return-void

    .line 604
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 606
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v0, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 608
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    goto :goto_0

    .line 610
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_1
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method doAbort(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 306
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 310
    :cond_0
    return-void
.end method

.method doAbortInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 297
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 298
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 301
    :cond_0
    return-void
.end method

.method doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 292
    :cond_2
    return-void
.end method

.method public doPing()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    .line 367
    .local v0, "isMasterConn":Z
    const/4 v1, 0x0

    .line 368
    .local v1, "mastersPingException":Ljava/sql/SQLException;
    const/4 v2, 0x0

    .line 370
    .local v2, "slavesPingException":Ljava/sql/SQLException;
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v3, :cond_0

    .line 372
    :try_start_0
    invoke-interface {v3}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Ljava/sql/SQLException;
    move-object v1, v3

    .line 375
    .end local v3    # "e":Ljava/sql/SQLException;
    :goto_0
    goto :goto_1

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 380
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v3, :cond_1

    .line 382
    :try_start_1
    invoke-interface {v3}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 383
    :catch_1
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/sql/SQLException;
    move-object v2, v3

    .line 385
    .end local v3    # "e":Ljava/sql/SQLException;
    :goto_2
    goto :goto_3

    .line 388
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 389
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    move-result v3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_2

    .line 390
    const/4 v0, 0x0

    .line 396
    :cond_2
    goto :goto_3

    .line 392
    :catch_2
    move-exception v3

    .line 393
    .restart local v3    # "e":Ljava/sql/SQLException;
    iget-object v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v4, :cond_9

    .line 399
    .end local v3    # "e":Ljava/sql/SQLException;
    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 401
    iget-object v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 402
    iput-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 403
    iput-object v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 404
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 406
    :cond_3
    throw v1

    .line 408
    :cond_4
    if-nez v0, :cond_8

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v5, :cond_8

    .line 410
    :cond_5
    iget-object v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v5, :cond_6

    iget-boolean v6, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 411
    iput-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 412
    iput-object v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 413
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 414
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V

    .line 416
    :cond_6
    if-nez v2, :cond_7

    goto :goto_4

    .line 417
    :cond_7
    throw v2

    .line 420
    :cond_8
    :goto_4
    return-void

    .line 394
    .restart local v3    # "e":Ljava/sql/SQLException;
    :cond_9
    throw v3
.end method

.method public getConnectionGroupId()J
    .locals 2

    .line 527
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    return-wide v0
.end method

.method public declared-synchronized getCurrentConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 531
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :catchall_0
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

    .line 213
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/ReplicationMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    return-object v0

    .line 214
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

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

.method public declared-synchronized getSlavesConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 597
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V

    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "invokeAgain":Z
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 324
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/mysql/jdbc/Statement;

    if-eqz v2, :cond_0

    .line 325
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/Statement;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    return-object v1

    .line 328
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/sql/SQLException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "25000"

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const v3, 0xf4241

    if-ne v2, v3, :cond_2

    .line 336
    :try_start_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->setReadOnly(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    const/4 v0, 0x1

    .line 340
    goto :goto_1

    .line 338
    :catch_1
    move-exception v2

    .line 342
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 345
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 343
    .restart local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    throw v1
.end method

.method public isHostMaster(Ljava/lang/String;)Z
    .locals 4
    .param p1, "hostPortPair"    # Ljava/lang/String;

    .line 585
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 586
    return v0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 589
    .local v2, "masterHost":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    const/4 v0, 0x1

    return v0

    .end local v2    # "masterHost":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 593
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public isHostSlave(Ljava/lang/String;)Z
    .locals 4
    .param p1, "hostPortPair"    # Ljava/lang/String;

    .line 647
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 648
    return v0

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 651
    .local v2, "test":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    const/4 v0, 0x1

    return v0

    .end local v2    # "test":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 655
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public isMasterConnection()Z
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-eqz v0, :cond_0

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

.method public isSlavesConnection()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pickNewConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public declared-synchronized promoteSlaveToMaster(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z

    .line 542
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_1
    monitor-exit p0

    return-void

    .line 534
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .param p1, "proxyConn"    # Lcom/mysql/jdbc/MySQLConnection;

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 233
    :cond_1
    return-void
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 548
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 547
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "waitUntilNotInUse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 552
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    .line 551
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    .end local p1    # "hostPortPair":Ljava/lang/String;
    .end local p2    # "waitUntilNotInUse":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "waitUntilNotInUse"    # Z
    .param p3, "isNowSlave"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 556
    if-eqz p3, :cond_0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 560
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 568
    :cond_1
    if-eqz p2, :cond_2

    .line 569
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 577
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 580
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_3
    monitor-exit p0

    return-void

    .line 564
    :cond_4
    :goto_1
    :try_start_1
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 555
    .end local p1    # "hostPortPair":Ljava/lang/String;
    .end local p2    # "waitUntilNotInUse":Z
    .end local p3    # "isNowSlave":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 615
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 614
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    .end local p1    # "hostPortPair":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "closeGently"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 622
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 627
    :cond_0
    if-eqz p2, :cond_1

    .line 628
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    goto :goto_0

    .line 630
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 636
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 639
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    .line 640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_2
    monitor-exit p0

    return-void

    .line 623
    :cond_3
    :goto_1
    :try_start_1
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    .line 618
    .end local p1    # "hostPortPair":Ljava/lang/String;
    .end local p2    # "closeGently":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReadOnly(Z)V
    .locals 3
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 660
    if-eqz p1, :cond_3

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 662
    .end local p0    # "this":Lcom/mysql/jdbc/ReplicationConnectionProxy;
    :cond_0
    const/4 v0, 0x1

    .line 663
    .local v0, "switched":Z
    const/4 v1, 0x0

    .line 665
    .local v1, "exceptionCaught":Ljava/sql/SQLException;
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 669
    goto :goto_0

    .line 666
    :catch_0
    move-exception v2

    .line 667
    .local v2, "e":Ljava/sql/SQLException;
    const/4 v0, 0x0

    .line 668
    move-object v1, v2

    .line 670
    .end local v2    # "e":Ljava/sql/SQLException;
    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    const/4 v1, 0x0

    .line 673
    :cond_1
    if-nez v1, :cond_2

    .line 676
    .end local v0    # "switched":Z
    .end local v1    # "exceptionCaught":Ljava/sql/SQLException;
    goto :goto_2

    .line 674
    .restart local v0    # "switched":Z
    .restart local v1    # "exceptionCaught":Ljava/sql/SQLException;
    :cond_2
    throw v1

    .line 678
    .end local v0    # "switched":Z
    .end local v1    # "exceptionCaught":Ljava/sql/SQLException;
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 679
    :cond_4
    const/4 v0, 0x1

    .line 680
    .restart local v0    # "switched":Z
    const/4 v1, 0x0

    .line 682
    .restart local v1    # "exceptionCaught":Ljava/sql/SQLException;
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    move-result v2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    .line 686
    goto :goto_1

    .line 683
    :catch_1
    move-exception v2

    .line 684
    .restart local v2    # "e":Ljava/sql/SQLException;
    const/4 v0, 0x0

    .line 685
    move-object v1, v2

    .line 687
    .end local v2    # "e":Ljava/sql/SQLException;
    :goto_1
    if-nez v0, :cond_5

    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 688
    const/4 v1, 0x0

    .line 690
    :cond_5
    if-nez v1, :cond_8

    .line 695
    .end local v0    # "switched":Z
    .end local v1    # "exceptionCaught":Ljava/sql/SQLException;
    :cond_6
    :goto_2
    iput-boolean p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 701
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 702
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    :cond_7
    monitor-exit p0

    return-void

    .line 691
    .restart local v0    # "switched":Z
    .restart local v1    # "exceptionCaught":Ljava/sql/SQLException;
    :cond_8
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 659
    .end local v0    # "switched":Z
    .end local v1    # "exceptionCaught":Ljava/sql/SQLException;
    .end local p1    # "readOnly":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 2
    .param p1, "source"    # Lcom/mysql/jdbc/Connection;
    .param p2, "target"    # Lcom/mysql/jdbc/Connection;
    .param p3, "readOnlyStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 269
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e1":Ljava/sql/SQLException;
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    goto :goto_0

    .line 274
    :catch_1
    move-exception v1

    .line 278
    .end local v0    # "e1":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method
