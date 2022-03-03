.class public interface abstract Lcom/mysql/jdbc/ReplicationConnection;
.super Ljava/lang/Object;
.source "ReplicationConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/MySQLConnection;


# virtual methods
.method public abstract addSlaveHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getConnectionGroupId()J
.end method

.method public abstract getCurrentConnection()Lcom/mysql/jdbc/Connection;
.end method

.method public abstract getMasterConnection()Lcom/mysql/jdbc/Connection;
.end method

.method public abstract getSlavesConnection()Lcom/mysql/jdbc/Connection;
.end method

.method public abstract isHostMaster(Ljava/lang/String;)Z
.end method

.method public abstract isHostSlave(Ljava/lang/String;)Z
.end method

.method public abstract promoteSlaveToMaster(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeMasterHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeMasterHost(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeSlave(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract removeSlave(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
