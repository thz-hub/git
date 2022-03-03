.class public interface abstract Lcom/mysql/jdbc/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# virtual methods
.method public abstract afterHandshake()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beforeHandshake()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
