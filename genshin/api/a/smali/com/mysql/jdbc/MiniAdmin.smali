.class public Lcom/mysql/jdbc/MiniAdmin;
.super Ljava/lang/Object;
.source "MiniAdmin.java"


# instance fields
.field private conn:Lcom/mysql/jdbc/Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jdbcUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MiniAdmin;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .param p1, "jdbcUrl"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/mysql/jdbc/Driver;

    invoke-direct {v0}, Lcom/mysql/jdbc/Driver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    check-cast v0, Lcom/mysql/jdbc/Connection;

    iput-object v0, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/sql/Connection;)V
    .locals 3
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "S1000"

    if-eqz p1, :cond_1

    .line 49
    instance-of v1, p1, Lcom/mysql/jdbc/Connection;

    if-eqz v1, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    iput-object v0, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    .line 55
    return-void

    .line 50
    :cond_0
    const-string v1, "MiniAdmin.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 46
    :cond_1
    const-string v1, "MiniAdmin.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->shutdownServer()V

    .line 95
    return-void
.end method
