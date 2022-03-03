.class Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTimeoutSetter"
.end annotation


# instance fields
.field private final connImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final milliseconds:I

.field private final mysqlIoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mysql/jdbc/MysqlIO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Lcom/mysql/jdbc/MysqlIO;I)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .param p2, "io"    # Lcom/mysql/jdbc/MysqlIO;
    .param p3, "milliseconds"    # I

    .line 5494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->connImplRef:Ljava/lang/ref/WeakReference;

    .line 5496
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->mysqlIoRef:Ljava/lang/ref/WeakReference;

    .line 5497
    iput p3, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    .line 5498
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5502
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->connImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 5503
    .local v0, "conn":Lcom/mysql/jdbc/ConnectionImpl;
    if-eqz v0, :cond_1

    .line 5504
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5505
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketTimeout(I)V

    .line 5506
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->mysqlIoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/MysqlIO;

    .line 5507
    .local v2, "io":Lcom/mysql/jdbc/MysqlIO;
    if-eqz v2, :cond_0

    .line 5508
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/MysqlIO;->setSocketTimeout(I)V

    .line 5510
    .end local v2    # "io":Lcom/mysql/jdbc/MysqlIO;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5514
    .end local v0    # "conn":Lcom/mysql/jdbc/ConnectionImpl;
    :cond_1
    :goto_0
    nop

    .line 5515
    return-void

    .line 5512
    :catch_0
    move-exception v0

    .line 5513
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
