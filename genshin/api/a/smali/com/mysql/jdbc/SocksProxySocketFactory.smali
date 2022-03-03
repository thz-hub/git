.class public Lcom/mysql/jdbc/SocksProxySocketFactory;
.super Lcom/mysql/jdbc/StandardSocketFactory;
.source "SocksProxySocketFactory.java"


# static fields
.field public static SOCKS_DEFAULT_PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/16 v0, 0x438

    sput v0, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mysql/jdbc/StandardSocketFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSocket(Ljava/util/Properties;)Ljava/net/Socket;
    .locals 7
    .param p1, "props"    # Ljava/util/Properties;

    .line 39
    const-string v0, "socksProxyHost"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "socksProxyHost":Ljava/lang/String;
    sget v1, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "socksProxyPort"

    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "socksProxyPortString":Ljava/lang/String;
    sget v2, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    .line 43
    .local v2, "socksProxyPort":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 48
    :goto_0
    new-instance v3, Ljava/net/Socket;

    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v3
.end method
