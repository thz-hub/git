.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "MysqlXADataSource.java"

# interfaces
.implements Ljavax/sql/XADataSource;


# static fields
.field static final serialVersionUID:J = 0x6dcae79776ffbe9fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    .line 39
    return-void
.end method

.method private wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;
    .locals 2
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getLogXaCommands()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->getInstance(Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getXAConnection()Ljavax/sql/XAConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 48
    .local v0, "conn":Ljava/sql/Connection;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;

    move-result-object v1

    return-object v1
.end method

.method public getXAConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/XAConnection;
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 58
    .local v0, "conn":Ljava/sql/Connection;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;

    move-result-object v1

    return-object v1
.end method
