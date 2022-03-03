.class public interface abstract Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;
.super Ljava/lang/Object;
.source "XmlRpcMethodCaller.java"


# virtual methods
.method public abstract call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation
.end method

.method public abstract clearHeader(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
