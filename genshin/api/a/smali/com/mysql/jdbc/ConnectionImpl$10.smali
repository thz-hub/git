.class Lcom/mysql/jdbc/ConnectionImpl$10;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->transactionCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Lcom/mysql/jdbc/Extension;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5317
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$10;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method forEach(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .param p1, "each"    # Lcom/mysql/jdbc/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5318
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->transactionCompleted()Z

    .line 5319
    return-void
.end method

.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5317
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl$10;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
