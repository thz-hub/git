.class Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;
.super Ljava/lang/Object;
.source "PerConnectionLRUFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/CacheAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PerConnectionLRUFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerConnectionLRU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mysql/jdbc/CacheAdapter<",
        "Ljava/lang/String;",
        "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheSqlLimit:I

.field private final conn:Lcom/mysql/jdbc/Connection;

.field final synthetic this$0:Lcom/mysql/jdbc/PerConnectionLRUFactory;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/PerConnectionLRUFactory;Lcom/mysql/jdbc/Connection;II)V
    .locals 1
    .param p2, "forConnection"    # Lcom/mysql/jdbc/Connection;
    .param p3, "cacheMaxSize"    # I
    .param p4, "maxKeySize"    # I

    .line 46
    iput-object p1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->this$0:Lcom/mysql/jdbc/PerConnectionLRUFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move p1, p3

    .line 48
    .local p1, "cacheSize":I
    iput p4, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    .line 49
    new-instance v0, Lcom/mysql/jdbc/util/LRUCache;

    invoke-direct {v0, p1}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    .line 50
    iput-object p2, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    .line 51
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 54
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->get(Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->invalidate(Ljava/lang/String;)V

    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidateAll()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1}, Lcom/mysql/jdbc/util/LRUCache;->clear()V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidateAll(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->put(Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 64
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_0
    return-void
.end method
