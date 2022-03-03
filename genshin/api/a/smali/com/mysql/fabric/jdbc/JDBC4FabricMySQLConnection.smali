.class public interface abstract Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnection;
.super Ljava/lang/Object;
.source "JDBC4FabricMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4MySQLConnection;


# virtual methods
.method public abstract addQueryTable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clearQueryTables()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clearServerSelectionCriteria()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getCurrentServerGroup()Lcom/mysql/fabric/ServerGroup;
.end method

.method public abstract getQueryTables()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerGroupName()Ljava/lang/String;
.end method

.method public abstract getShardKey()Ljava/lang/String;
.end method

.method public abstract getShardTable()Ljava/lang/String;
.end method

.method public abstract setServerGroupName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setShardKey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setShardTable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
