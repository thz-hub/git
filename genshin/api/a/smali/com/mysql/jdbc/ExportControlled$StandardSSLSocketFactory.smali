.class public Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;
.super Ljava/lang/Object;
.source "ExportControlled.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ExportControlled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardSSLSocketFactory"
.end annotation


# instance fields
.field private final existingSocket:Ljava/net/Socket;

.field private final existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

.field private rawSocket:Ljavax/net/ssl/SSLSocket;

.field private final sslFact:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/mysql/jdbc/SocketFactory;Ljava/net/Socket;)V
    .locals 1
    .param p1, "sslFact"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "existingSocketFactory"    # Lcom/mysql/jdbc/SocketFactory;
    .param p3, "existingSocket"    # Ljava/net/Socket;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    .line 217
    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    .line 218
    iput-object p2, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 219
    iput-object p3, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocket:Ljava/net/Socket;

    .line 220
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

    .line 223
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    .line 224
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

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

    .line 228
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    .line 233
    return-object v0
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 237
    invoke-static {p1}, Lcom/mysql/jdbc/SocketMetadata$Helper;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v0

    return v0
.end method
