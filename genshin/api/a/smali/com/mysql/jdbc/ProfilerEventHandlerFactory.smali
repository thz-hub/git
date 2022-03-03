.class public Lcom/mysql/jdbc/ProfilerEventHandlerFactory;
.super Ljava/lang/Object;
.source "ProfilerEventHandlerFactory.java"


# instance fields
.field protected log:Lcom/mysql/jdbc/log/Log;

.field private ownerConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method private constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->ownerConnection:Lcom/mysql/jdbc/Connection;

    .line 35
    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->log:Lcom/mysql/jdbc/log/Log;

    .line 68
    iput-object p1, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->ownerConnection:Lcom/mysql/jdbc/Connection;

    .line 71
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->log:Lcom/mysql/jdbc/log/Log;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get logger from connection"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 6
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    .line 48
    .local v1, "handler":Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    if-nez v1, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandler()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object v1, v2

    .line 52
    invoke-interface {p0, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeExtension(Lcom/mysql/jdbc/Extension;)V

    .line 53
    invoke-interface {p0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v0

    return-object v1

    .line 45
    .end local v1    # "handler":Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .end local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;

    const-class v0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    .line 62
    .local v1, "handler":Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    .line 59
    .end local v1    # "handler":Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .end local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
