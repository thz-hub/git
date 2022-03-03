.class public interface abstract Lcom/mysql/jdbc/jmx/ReplicationGroupManagerMBean;
.super Ljava/lang/Object;
.source "ReplicationGroupManagerMBean.java"


# virtual methods
.method public abstract addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getActiveLogicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract getActiveMasterHostCount(Ljava/lang/String;)I
.end method

.method public abstract getActiveSlaveHostCount(Ljava/lang/String;)I
.end method

.method public abstract getMasterHostsList(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRegisteredConnectionGroups()Ljava/lang/String;
.end method

.method public abstract getSlaveHostsList(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSlavePromotionCount(Ljava/lang/String;)I
.end method

.method public abstract getTotalLogicalConnectionCount(Ljava/lang/String;)J
.end method

.method public abstract promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
