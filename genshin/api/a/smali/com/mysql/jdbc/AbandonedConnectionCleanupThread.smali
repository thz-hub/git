.class public Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;
.super Ljava/lang/Object;
.source "AbandonedConnectionCleanupThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;
    }
.end annotation


# static fields
.field private static final cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

.field private static final connectionFinalizerPhantomRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;",
            "Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ">;"
        }
    .end annotation
.end field

.field static threadRef:Ljava/lang/Thread;

.field private static threadRefLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->connectionFinalizerPhantomRefs:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    .line 70
    new-instance v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-direct {v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private checkThreadContextClassLoader()V
    .locals 2

    .line 112
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->uncheckedShutdown()V

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static checkedShutdown()V
    .locals 1

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    .line 159
    return-void
.end method

.method private static consistentClassLoaders()Z
    .locals 4

    .line 125
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    nop

    .line 134
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    return v1

    .line 130
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 131
    .local v0, "callerCtxClassLoader":Ljava/lang/ClassLoader;
    sget-object v2, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .local v2, "threadCtxClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 134
    .end local v0    # "callerCtxClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "threadCtxClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    sget-object v3, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    .restart local v0    # "callerCtxClassLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "threadCtxClassLoader":Ljava/lang/ClassLoader;
    return v1

    .line 134
    .end local v0    # "callerCtxClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "threadCtxClassLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static finalizeResource(Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;)V
    .locals 2
    .param p0, "reference"    # Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->finalizeResources()V

    .line 211
    invoke-virtual {p0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    nop

    .line 215
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->connectionFinalizerPhantomRefs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v0

    .line 215
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->connectionFinalizerPhantomRefs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    throw v0
.end method

.method public static getThread()Ljava/lang/Thread;
    .locals 1

    .line 241
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    return-object v0
.end method

.method public static isAlive()Z
    .locals 2

    .line 174
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 176
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    return v0

    .line 178
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static shutdown(Z)V
    .locals 1
    .param p0, "checked"    # Z

    .line 145
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->consistentClassLoaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 151
    return-void
.end method

.method protected static trackConnection(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/NetworkResources;)V
    .locals 2
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "io"    # Lcom/mysql/jdbc/NetworkResources;

    .line 191
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;

    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/NetworkResources;Ljava/lang/ref/ReferenceQueue;)V

    .line 195
    .local v0, "reference":Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->connectionFinalizerPhantomRefs:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v0    # "reference":Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;
    :cond_0
    nop

    .line 200
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 200
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    throw v0
.end method

.method public static uncheckedShutdown()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    .line 166
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->checkThreadContextClassLoader()V

    .line 80
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    .line 81
    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/mysql/jdbc/MySQLConnection;>;"
    if-eqz v0, :cond_0

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;

    invoke-static {v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->finalizeResource(Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    .end local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/mysql/jdbc/MySQLConnection;>;"
    :catch_0
    move-exception v0

    .line 101
    :cond_0
    :goto_1
    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    .line 91
    :goto_2
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v2, v1

    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/mysql/jdbc/MySQLConnection;>;"
    if-eqz v1, :cond_1

    .line 92
    move-object v1, v2

    check-cast v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;

    invoke-static {v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->finalizeResource(Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$ConnectionFinalizerPhantomReference;)V

    goto :goto_2

    .line 94
    :cond_1
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->connectionFinalizerPhantomRefs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/mysql/jdbc/MySQLConnection;>;"
    nop

    .line 101
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 101
    sget-object v2, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRefLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    throw v1
.end method
