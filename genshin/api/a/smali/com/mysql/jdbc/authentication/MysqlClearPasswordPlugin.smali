.class public Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlClearPasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "mysql_clear_password"

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

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 48
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 7
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

    .line 71
    .local p2, "toServer":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Buffer;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    invoke-interface {v3, v4, v5, v6}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "UTF-8"

    .line 76
    .local v3, "encoding":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-static {v5, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 80
    .end local v3    # "encoding":Ljava/lang/String;
    .local v0, "bresp":Lcom/mysql/jdbc/Buffer;
    nop

    .line 82
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 83
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    .line 85
    .local v3, "oldBufLength":I
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 87
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 90
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return v2

    .line 77
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    .end local v3    # "oldBufLength":I
    :catch_0
    move-exception v3

    move-object v4, v0

    .line 78
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    .local v4, "bresp":Lcom/mysql/jdbc/Buffer;
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "MysqlClearPasswordPlugin.1"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    .line 95
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    .line 68
    return-void
.end method
