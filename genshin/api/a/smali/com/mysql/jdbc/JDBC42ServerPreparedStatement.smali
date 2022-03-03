.class public Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;
.super Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;
.source "JDBC42ServerPreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "catalog"    # Ljava/lang/String;
    .param p4, "resultSetType"    # I
    .param p5, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    return-void
.end method

.method private checkSqlType(I)I
    .locals 1
    .param p1, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->checkSqlType(ILcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method

.method private translateAndCheckSqlType(Ljava/sql/SQLType;)I
    .locals 1
    .param p1, "sqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v1, v2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v1, v2, p4}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v1, v2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v1, v2, p4}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
