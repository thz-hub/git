.class Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/MultiHostConnectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdbcInterfaceProxy"
.end annotation


# instance fields
.field invokeOn:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V
    .locals 0
    .param p2, "toInvokeOn"    # Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    monitor-enter v0

    .line 105
    const/4 v1, 0x0

    .line 108
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 109
    iget-object v2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 112
    goto :goto_0

    .line 115
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 110
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 114
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 115
    .end local v1    # "result":Ljava/lang/Object;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
