.class public interface abstract Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManagerMBean;
.super Ljava/lang/Object;
.source "LoadBalanceConnectionGroupManagerMBean.java"


# virtual methods
.method public abstract addHost(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract getActiveHostCount(Ljava/lang/String;)I
.end method

.method public abstract getActiveHostsList(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveLogicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract getActivePhysicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract getRegisteredConnectionGroups()Ljava/lang/String;
.end method

.method public abstract getTotalHostCount(Ljava/lang/String;)I
.end method

.method public abstract getTotalLogicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract getTotalPhysicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract getTotalTransactionCount(Ljava/lang/String;)J
.end method

.method public abstract removeHost(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract stopNewConnectionsToHost(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
