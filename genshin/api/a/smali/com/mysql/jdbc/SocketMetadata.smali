.class public interface abstract Lcom/mysql/jdbc/SocketMetadata;
.super Ljava/lang/Object;
.source "SocketMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/SocketMetadata$Helper;
    }
.end annotation


# virtual methods
.method public abstract isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
