.class public Lcom/mysql/jdbc/PerConnectionLRUFactory;
.super Ljava/lang/Object;
.source "PerConnectionLRUFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/CacheAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mysql/jdbc/CacheAdapterFactory<",
        "Ljava/lang/String;",
        "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;
    .locals 1
    .param p1, "forConnection"    # Lcom/mysql/jdbc/Connection;
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
            "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;-><init>(Lcom/mysql/jdbc/PerConnectionLRUFactory;Lcom/mysql/jdbc/Connection;II)V

    return-object v0
.end method
