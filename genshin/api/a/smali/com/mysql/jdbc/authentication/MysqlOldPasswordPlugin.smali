.class public Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlOldPasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "mysql_old_password"

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

    .line 45
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 46
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 6
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

    .line 69
    .local p2, "toServer":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Buffer;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "bresp":Lcom/mysql/jdbc/Buffer;
    iget-object v1, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    .line 75
    .local v1, "pwd":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v0, v3

    .line 81
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 82
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    .line 84
    .local v3, "oldBufLength":I
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 86
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 87
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 76
    .end local v3    # "oldBufLength":I
    :cond_1
    :goto_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    new-array v2, v2, [B

    invoke-direct {v3, v2}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v0, v3

    .line 89
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v2, 0x1

    return v2
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

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

    .line 65
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    .line 66
    return-void
.end method
