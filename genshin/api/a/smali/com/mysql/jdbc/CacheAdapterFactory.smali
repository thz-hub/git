.class public interface abstract Lcom/mysql/jdbc/CacheAdapterFactory;
.super Ljava/lang/Object;
.source "CacheAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/CacheAdapter<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
