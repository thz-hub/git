.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "MysqlConnectionPoolDataSource.java"

# interfaces
.implements Ljavax/sql/ConnectionPoolDataSource;


# static fields
.field static final serialVersionUID:J = -0x6bcb1556f761cd41L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getPooledConnection()Ljavax/sql/PooledConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 49
    .local v0, "connection":Ljava/sql/Connection;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/Connection;

    invoke-static {v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .local v1, "mysqlPooledConnection":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    monitor-exit p0

    return-object v1

    .line 47
    .end local v0    # "connection":Ljava/sql/Connection;
    .end local v1    # "mysqlPooledConnection":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 68
    .local v0, "connection":Ljava/sql/Connection;
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/Connection;

    invoke-static {v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .local v1, "mysqlPooledConnection":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    monitor-exit p0

    return-object v1

    .line 66
    .end local v0    # "connection":Ljava/sql/Connection;
    .end local v1    # "mysqlPooledConnection":Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;
    .end local p1    # "s":Ljava/lang/String;
    .end local p2    # "s1":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
