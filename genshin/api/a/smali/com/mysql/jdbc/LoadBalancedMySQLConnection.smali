.class public Lcom/mysql/jdbc/LoadBalancedMySQLConnection;
.super Lcom/mysql/jdbc/MultiHostMySQLConnection;
.source "LoadBalancedMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/LoadBalancedConnection;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 31
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addHost(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addHost(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->doClose()V

    .line 42
    return-void
.end method

.method protected getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    return-object v0
.end method

.method protected bridge synthetic getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    return-object v0
.end method

.method public ping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->ping(Z)V

    .line 47
    return-void
.end method

.method public ping(Z)V
    .locals 1
    .param p1, "allConnections"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->doPing()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->ping()V

    .line 55
    :goto_0
    return-void
.end method

.method public removeHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public removeHostWhenNotInUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHostWhenNotInUse(Ljava/lang/String;)V

    .line 67
    return-void
.end method
