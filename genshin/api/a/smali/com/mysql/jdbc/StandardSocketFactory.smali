.class public Lcom/mysql/jdbc/StandardSocketFactory;
.super Ljava/lang/Object;
.source "StandardSocketFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# static fields
.field public static final TCP_KEEP_ALIVE_DEFAULT_VALUE:Ljava/lang/String; = "true"

.field public static final TCP_KEEP_ALIVE_PROPERTY_NAME:Ljava/lang/String; = "tcpKeepAlive"

.field public static final TCP_NO_DELAY_DEFAULT_VALUE:Ljava/lang/String; = "true"

.field public static final TCP_NO_DELAY_PROPERTY_NAME:Ljava/lang/String; = "tcpNoDelay"

.field public static final TCP_RCV_BUF_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_RCV_BUF_PROPERTY_NAME:Ljava/lang/String; = "tcpRcvBuf"

.field public static final TCP_SND_BUF_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_SND_BUF_PROPERTY_NAME:Ljava/lang/String; = "tcpSndBuf"

.field public static final TCP_TRAFFIC_CLASS_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_TRAFFIC_CLASS_PROPERTY_NAME:Ljava/lang/String; = "tcpTrafficClass"


# instance fields
.field protected host:Ljava/lang/String;

.field protected loginTimeoutCheckTimestamp:J

.field protected loginTimeoutCountdown:I

.field protected port:I

.field protected rawSocket:Ljava/net/Socket;

.field protected socketTimeoutBackup:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    .line 64
    const/16 v1, 0xcea

    iput v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    .line 67
    iput-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    .line 70
    invoke-static {}, Ljava/sql/DriverManager;->getLoginTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    return-void
.end method

.method private configureSocket(Ljava/net/Socket;Ljava/util/Properties;)V
    .locals 5
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const-string v0, "tcpNoDelay"

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 134
    const-string v0, "tcpKeepAlive"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "keepAlive":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 140
    :cond_0
    const-string v1, "tcpRcvBuf"

    const-string v2, "0"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 142
    .local v1, "receiveBufferSize":I
    if-lez v1, :cond_1

    .line 143
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 146
    :cond_1
    const-string v3, "tcpSndBuf"

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, "sendBufferSize":I
    if-lez v3, :cond_2

    .line 149
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 152
    :cond_2
    const-string v4, "tcpTrafficClass"

    invoke-virtual {p2, v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "trafficClass":I
    if-lez v2, :cond_3

    .line 155
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 157
    :cond_3
    return-void
.end method


# virtual methods
.method public afterHandshake()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    iget v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 92
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public beforeHandshake()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    .line 109
    iget-object v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StandardSocketFactory;->getRealTimeout(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 110
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    if-eqz p3, :cond_7

    .line 165
    iput-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    .line 169
    const-string v0, "localSocketAddress"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "localSocketHostname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, "localSockAddr":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v2

    .line 175
    :cond_0
    const-string v2, "connectTimeout"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "connectTimeoutStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 179
    .local v3, "connectTimeout":I
    if-eqz v2, :cond_1

    .line 181
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v4

    .line 183
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' for connectTimeout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 188
    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 190
    .local v4, "possibleAddresses":[Ljava/net/InetAddress;
    array-length v5, v4

    if-eqz v5, :cond_6

    .line 195
    const/4 v5, 0x0

    .line 199
    .local v5, "lastException":Ljava/net/SocketException;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 201
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/StandardSocketFactory;->createSocket(Ljava/util/Properties;)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    .line 203
    invoke-direct {p0, v7, p3}, Lcom/mysql/jdbc/StandardSocketFactory;->configureSocket(Ljava/net/Socket;Ljava/util/Properties;)V

    .line 205
    new-instance v7, Ljava/net/InetSocketAddress;

    aget-object v8, v4, v6

    iget v9, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 207
    .local v7, "sockAddr":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_2

    .line 208
    iget-object v8, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v8, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 211
    :cond_2
    iget-object v8, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/StandardSocketFactory;->getRealTimeout(I)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    goto :goto_2

    .line 214
    .end local v7    # "sockAddr":Ljava/net/InetSocketAddress;
    :catch_1
    move-exception v7

    .line 215
    .local v7, "ex":Ljava/net/SocketException;
    move-object v5, v7

    .line 216
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 217
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    .line 199
    .end local v7    # "ex":Ljava/net/SocketException;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 221
    .end local v6    # "i":I
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    goto :goto_3

    .line 222
    :cond_4
    throw v5

    .line 225
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 227
    iget-object v6, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object v6

    .line 191
    .end local v5    # "lastException":Ljava/net/SocketException;
    :cond_6
    new-instance v5, Ljava/net/SocketException;

    const-string v6, "No addresses for host"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    .end local v0    # "localSocketHostname":Ljava/lang/String;
    .end local v1    # "localSockAddr":Ljava/net/InetSocketAddress;
    .end local v2    # "connectTimeoutStr":Ljava/lang/String;
    .end local v3    # "connectTimeout":I
    .end local v4    # "possibleAddresses":[Ljava/net/InetAddress;
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unable to create socket"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createSocket(Ljava/util/Properties;)Ljava/net/Socket;
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 120
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected getRealTimeout(I)I
    .locals 1
    .param p1, "expectedTimeout"    # I

    .line 263
    iget v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 264
    :cond_0
    return v0

    .line 266
    :cond_1
    return p1
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/mysql/jdbc/SocketMetadata$Helper;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v0

    return v0
.end method

.method protected resetLoginTimeCountdown()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-lez v0, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    .local v0, "now":J
    iget v2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    .line 248
    if-lez v3, :cond_0

    .line 251
    iput-wide v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    goto :goto_0

    .line 249
    :cond_0
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Connection.LoginTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void
.end method
