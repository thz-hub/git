.class Lcom/mysql/jdbc/ConnectionImpl$11;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->abort(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;)V
    .locals 0

    .line 5441
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$11;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5443
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$11;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->abortInternal()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5446
    nop

    .line 5447
    return-void

    .line 5444
    :catch_0
    move-exception v0

    .line 5445
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
