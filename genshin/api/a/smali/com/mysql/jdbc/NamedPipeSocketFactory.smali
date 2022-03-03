.class public Lcom/mysql/jdbc/NamedPipeSocketFactory;
.super Ljava/lang/Object;
.source "NamedPipeSocketFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;
    }
.end annotation


# static fields
.field public static final NAMED_PIPE_PROP_NAME:Ljava/lang/String; = "namedPipePath"


# instance fields
.field private namedPipeSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public afterHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public beforeHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const-string v0, "namedPipePath"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "namedPipePath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 214
    const-string v1, "\\\\.\\pipe\\MySQL"

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :goto_0
    new-instance v0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;-><init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    .line 221
    return-object v0

    .line 216
    :cond_1
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NamedPipeSocketFactory.2"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NamedPipeSocketFactory.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x1

    return v0
.end method
