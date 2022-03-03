.class Lcom/mysql/jdbc/ConnectionImpl$3;
.super Lcom/mysql/jdbc/util/LRUCache;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->createPreparedStatementCaches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/util/LRUCache<",
        "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
        "Lcom/mysql/jdbc/ServerPreparedStatement;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ac09b0e8ec5e392L


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 2320
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$3;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
            "Lcom/mysql/jdbc/ServerPreparedStatement;",
            ">;)Z"
        }
    .end annotation

    .line 2321
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;Lcom/mysql/jdbc/ServerPreparedStatement;>;"
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl$3;->maxElements:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 2322
    return v1

    .line 2325
    :cond_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/util/LRUCache;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    .line 2327
    .local v0, "removeIt":Z
    if-eqz v0, :cond_1

    .line 2328
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 2329
    .local v2, "ps":Lcom/mysql/jdbc/ServerPreparedStatement;
    iput-boolean v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 2330
    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 2333
    :try_start_0
    invoke-virtual {v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    goto :goto_0

    .line 2334
    :catch_0
    move-exception v1

    .line 2339
    .end local v2    # "ps":Lcom/mysql/jdbc/ServerPreparedStatement;
    :cond_1
    :goto_0
    return v0
.end method
