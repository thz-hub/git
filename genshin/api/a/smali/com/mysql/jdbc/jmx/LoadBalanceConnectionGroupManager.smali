.class public Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;
.super Ljava/lang/Object;
.source "LoadBalanceConnectionGroupManager.java"

# interfaces
.implements Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManagerMBean;


# instance fields
.field private isJmxRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->isJmxRegistered:Z

    .line 41
    return-void
.end method


# virtual methods
.method public addHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "forExisting"    # Z

    .line 60
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/ConnectionGroupManager;->addHost(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getActiveHostCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getActiveHostCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getActiveHostsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getActiveHostLists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getActiveLogicalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivePhysicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getActivePhysicalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-static {}, Lcom/mysql/jdbc/ConnectionGroupManager;->getRegisteredConnectionGroups()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalHostCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getTotalHostCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getTotalLogicalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPhysicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getTotalPhysicalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTransactionCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getTotalTransactionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized registerJmx()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->isJmxRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .local v0, "mbs":Ljavax/management/MBeanServer;
    :try_start_2
    new-instance v1, Ljavax/management/ObjectName;

    const-string v2, "com.mysql.jdbc.jmx:type=LoadBalanceConnectionGroupManager"

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "name":Ljavax/management/ObjectName;
    invoke-interface {v0, p0, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->isJmxRegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v1    # "name":Ljavax/management/ObjectName;
    nop

    .line 56
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Unable to register load-balance management bean with JMX"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .end local v0    # "mbs":Ljavax/management/MBeanServer;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ConnectionGroupManager;->removeHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public stopNewConnectionsToHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ConnectionGroupManager;->removeHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
