.class Lcom/mysql/jdbc/ConnectionImpl$2;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->commit()V
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

    .line 1521
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$2;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

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

    .line 1522
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl$2;->stopIterating:Z

    .line 1525
    :cond_0
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

    .line 1521
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl$2;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
