.class Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "AbandonedConnectionCleanupThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionFinalizerPhantomReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lcom/mysql/jdbc/MySQLConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private networkResources:Lcom/mysql/jdbc/NetworkResources;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/NetworkResources;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "networkResources"    # Lcom/mysql/jdbc/NetworkResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/MySQLConnection;",
            "Lcom/mysql/jdbc/NetworkResources;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p3, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Lcom/mysql/jdbc/MySQLConnection;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 226
    iput-object p2, p0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->networkResources:Lcom/mysql/jdbc/NetworkResources;

    .line 227
    return-void
.end method


# virtual methods
.method finalizeResources()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->networkResources:Lcom/mysql/jdbc/NetworkResources;

    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    nop

    .line 237
    iput-object v1, p0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->networkResources:Lcom/mysql/jdbc/NetworkResources;

    .line 235
    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    .line 237
    iput-object v1, p0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->networkResources:Lcom/mysql/jdbc/NetworkResources;

    .line 234
    throw v0

    .line 237
    :cond_0
    :goto_0
    return-void
.end method
