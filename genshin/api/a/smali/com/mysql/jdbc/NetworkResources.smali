.class Lcom/mysql/jdbc/NetworkResources;
.super Ljava/lang/Object;
.source "NetworkResources.java"


# instance fields
.field private final mysqlConnection:Ljava/net/Socket;

.field private final mysqlInput:Ljava/io/InputStream;

.field private final mysqlOutput:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "mysqlConnection"    # Ljava/net/Socket;
    .param p2, "mysqlInput"    # Ljava/io/InputStream;
    .param p3, "mysqlOutput"    # Ljava/io/OutputStream;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    .line 38
    iput-object p2, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlInput:Ljava/io/InputStream;

    .line 39
    iput-object p3, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlOutput:Ljava/io/OutputStream;

    .line 40
    return-void
.end method


# virtual methods
.method protected final forceClose()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-static {v0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Ljava/net/Socket;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_0
    nop

    .line 93
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_1

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    :cond_1
    :goto_0
    nop

    .line 60
    goto :goto_3

    .line 53
    :catchall_0
    move-exception v0

    .line 58
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v1, :cond_2

    .line 55
    :try_start_5
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    nop

    :goto_2
    nop

    .line 53
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 64
    :cond_3
    :goto_3
    goto :goto_4

    .line 62
    :catch_2
    move-exception v0

    .line 67
    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-static {v0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Ljava/net/Socket;)Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    if-nez v0, :cond_7

    .line 69
    :try_start_8
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 72
    :cond_4
    nop

    .line 58
    :try_start_9
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    if-nez v0, :cond_5

    .line 75
    :try_start_a
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 78
    goto :goto_5

    .line 76
    :catch_3
    move-exception v0

    .line 78
    :cond_5
    :goto_5
    nop

    .line 80
    goto :goto_8

    .line 73
    :catchall_1
    move-exception v0

    .line 78
    :try_start_b
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    if-nez v1, :cond_6

    .line 75
    :try_start_c
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 76
    :catch_4
    move-exception v1

    goto :goto_7

    .line 78
    :cond_6
    :goto_6
    nop

    :goto_7
    nop

    .line 73
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 84
    :cond_7
    :goto_8
    goto :goto_9

    .line 82
    :catch_5
    move-exception v0

    .line 87
    :goto_9
    :try_start_e
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 88
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 92
    :cond_8
    goto :goto_a

    .line 90
    :catch_6
    move-exception v0

    .line 93
    :goto_a
    return-void
.end method
