.class public Lcom/mysql/jdbc/ReplicationDriver;
.super Lcom/mysql/jdbc/NonRegisteringReplicationDriver;
.source "ReplicationDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;

    invoke-direct {v0}, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;-><init>()V

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "E":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t register driver!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;-><init>()V

    .line 63
    return-void
.end method
