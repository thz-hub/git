.class public Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;
.super Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;
.source "CachingSha2PasswordPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
    }
.end annotation


# static fields
.field public static PLUGIN_NAME:Ljava/lang/String;


# instance fields
.field private stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "caching_sha2_password"

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;-><init>()V

    .line 48
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 58
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 59
    invoke-super {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->destroy()V

    .line 60
    return-void
.end method

.method protected encryptPassword()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword()[B

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-super {p0, v0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 53
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 54
    return-void
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 7
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
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->password:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    sget-object v3, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const/4 v4, 0x0

    const-string v5, "S1000"

    if-ne v0, v3, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->seed:Ljava/lang/String;

    .line 81
    :try_start_0
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->seed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Security;->scrambleCachingSha2([B[B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    sget-object p1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 89
    return v2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5, p1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 83
    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/security/DigestException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5, p1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    sget-object v3, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v6, "08001"

    if-ne v0, v3, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    aget-byte v0, v0, v1

    .line 93
    packed-switch v0, :pswitch_data_0

    .line 101
    iget-object p1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Unknown server response after fast auth."

    invoke-static {p2, v6, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 98
    :pswitch_0
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 99
    goto :goto_0

    .line 95
    :pswitch_1
    sget-object p1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 96
    return v2

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :try_start_1
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 117
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    .line 118
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 119
    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 121
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    goto/16 :goto_2

    .line 111
    :catch_2
    move-exception p1

    .line 112
    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Sha256PasswordPlugin.3"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 125
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->encryptPassword()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 126
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    iget-boolean v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->publicKeyRequested:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_5

    .line 140
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->publicKeyString:Ljava/lang/String;

    .line 141
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->encryptPassword()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 142
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iput-boolean v1, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->publicKeyRequested:Z

    .line 144
    goto :goto_2

    .line 146
    :cond_5
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    new-array v0, v2, [B

    const/4 v3, 0x2

    aput-byte v3, v0, v1

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 147
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iput-boolean v2, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->publicKeyRequested:Z

    goto :goto_2

    .line 130
    :cond_6
    const-string p1, "Sha256PasswordPlugin.2"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    invoke-static {p1, v6, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 73
    :cond_7
    :goto_1
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    new-array v0, v2, [B

    aput-byte v1, v0, v1

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .line 152
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 165
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;->stage:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 166
    return-void
.end method
