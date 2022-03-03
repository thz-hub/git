.class Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
.source "FailoverConnectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/FailoverConnectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FailoverJdbcInterfaceProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/FailoverConnectionProxy;Ljava/lang/Object;)V
    .locals 0
    .param p2, "toInvokeOn"    # Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V

    .line 82
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

    .line 87
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 91
    .local v1, "isExecute":Z
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->incrementQueriesIssuedSinceFailover()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-static {v3}, Lcom/mysql/jdbc/FailoverConnectionProxy;->access$000(Lcom/mysql/jdbc/FailoverConnectionProxy;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v3}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v3}, Lcom/mysql/jdbc/FailoverConnectionProxy;->fallBackToPrimaryIfAvailable()V

    .line 102
    :cond_1
    return-object v2
.end method
