.class public final Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;
.super Ljava/lang/Object;
.source "MysqlConnectionTester.java"

# interfaces
.implements Lcom/mchange/v2/c3p0/QueryConnectionTester;


# static fields
.field private static final NO_ARGS_ARRAY:[Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x2d31373136343830L


# instance fields
.field private transient pingMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->NO_ARGS_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/Connection;

    const-string v1, "ping"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->pingMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public activeCheckConnection(Ljava/sql/Connection;)I
    .locals 4
    .param p1, "con"    # Ljava/sql/Connection;

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->pingMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, p1, Lcom/mysql/jdbc/Connection;

    if-eqz v1, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->ping()V

    goto :goto_0

    .line 68
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;

    .line 69
    .local v1, "castCon":Lcom/mchange/v2/c3p0/C3P0ProxyConnection;
    sget-object v2, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;->RAW_CONNECTION:Ljava/lang/Object;

    sget-object v3, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->NO_ARGS_ARRAY:[Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;->rawConnectionOperation(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .end local v1    # "castCon":Lcom/mchange/v2/c3p0/C3P0ProxyConnection;
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 75
    .local v0, "pingStatement":Ljava/sql/Statement;
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    move-object v0, v1

    .line 76
    const-string v1, "SELECT 1"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 84
    .end local v0    # "pingStatement":Ljava/sql/Statement;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 78
    .restart local v0    # "pingStatement":Ljava/sql/Statement;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    :cond_3
    nop

    .end local p1    # "con":Ljava/sql/Connection;
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v0    # "pingStatement":Ljava/sql/Statement;
    .restart local p1    # "con":Ljava/sql/Connection;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public activeCheckConnection(Ljava/sql/Connection;Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/sql/Connection;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public statusOnException(Ljava/sql/Connection;Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "arg0"    # Ljava/sql/Connection;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 96
    instance-of v0, p2, Lcom/mysql/jdbc/CommunicationsException;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mysql.jdbc.exceptions.jdbc4.CommunicationsException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    instance-of v0, p2, Ljava/sql/SQLException;

    if-eqz v0, :cond_2

    .line 101
    move-object v0, p2

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "sqlState":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "08"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    return v1

    .line 107
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 112
    .end local v0    # "sqlState":Ljava/lang/String;
    :cond_2
    return v1

    .line 97
    :cond_3
    :goto_0
    return v1
.end method
