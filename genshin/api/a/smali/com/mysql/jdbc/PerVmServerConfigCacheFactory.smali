.class public Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;
.super Ljava/lang/Object;
.source "PerVmServerConfigCacheFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/CacheAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mysql/jdbc/CacheAdapterFactory<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;
    .locals 1
    .param p1, "forConn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheMaxSize"    # I
    .param p4, "maxKeySize"    # I
    .param p5, "connectionProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    return-object v0
.end method
