.class abstract Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.super Ljava/lang/Object;
.source "WrapperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;
    }
.end annotation


# instance fields
.field protected exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

.field protected unwrappedInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;)V
    .locals 1
    .param p1, "pooledConnection"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->unwrappedInterfaces:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 66
    invoke-virtual {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 67
    return-void
.end method


# virtual methods
.method protected checkAndFireConnectionError(Ljava/sql/SQLException;)V
    .locals 2
    .param p1, "sqlEx"    # Ljava/sql/SQLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08S01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->callConnectionEventListeners(ILjava/sql/SQLException;)V

    .line 58
    :cond_0
    throw p1
.end method
