.class public Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlNativePasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "mysql_native_password"

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 49
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 9
    .param p1, "fromServer"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Buffer;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    .local p2, "toServer":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Buffer;>;"
    const-string v0, "S1000"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 76
    const/4 v4, 0x0

    .line 78
    .local v4, "bresp":Lcom/mysql/jdbc/Buffer;
    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 80
    .local v5, "pwd":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v8}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v4, v6

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    new-array v7, v1, [B

    invoke-direct {v6, v7}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v4, v6

    .line 85
    :goto_1
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 95
    .end local v4    # "bresp":Lcom/mysql/jdbc/Buffer;
    .end local v5    # "pwd":Ljava/lang/String;
    return v2

    .line 89
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "MysqlNativePasswordPlugin.1"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 87
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "nse":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.91"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.92"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .line 99
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 69
    return-void
.end method
