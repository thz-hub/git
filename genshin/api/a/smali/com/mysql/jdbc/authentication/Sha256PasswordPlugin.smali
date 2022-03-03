.class public Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;
.super Ljava/lang/Object;
.source "Sha256PasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# static fields
.field public static PLUGIN_NAME:Ljava/lang/String;


# instance fields
.field protected connection:Lcom/mysql/jdbc/Connection;

.field protected password:Ljava/lang/String;

.field protected publicKeyRequested:Z

.field protected publicKeyString:Ljava/lang/String;

.field protected seed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "sha256_password"

    sput-object v0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 56
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    return-void
.end method

.method private static readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "connection"    # Lcom/mysql/jdbc/Connection;
    .param p1, "pkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    const-string v0, "\'"

    const-string v1, "S1000"

    const-string v2, "Sha256PasswordPlugin.1"

    const/4 v3, 0x0

    .line 168
    .local v3, "res":Ljava/lang/String;
    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 170
    .local v4, "fileBuf":[B
    const/4 v5, 0x0

    .line 173
    .local v5, "fileIn":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "canonicalPath":Ljava/lang/String;
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v9

    .line 177
    const/4 v9, 0x0

    .line 179
    .local v9, "bytesRead":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v10, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    move v9, v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 181
    invoke-static {v4, v6, v9}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v3    # "res":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "canonicalPath":Ljava/lang/String;
    .end local v9    # "bytesRead":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .local v0, "res":Ljava/lang/String;
    nop

    .line 207
    nop

    .line 197
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    nop

    .line 202
    nop

    .line 205
    nop

    .line 207
    return-object v0

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v2, v1, v3, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 202
    .local v1, "sqlEx":Ljava/sql/SQLException;
    throw v1

    .line 195
    .end local v0    # "res":Ljava/lang/String;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .local v3, "res":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 185
    :catch_1
    move-exception v7

    .line 187
    .local v7, "ioEx":Ljava/io/IOException;
    :try_start_2
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getParanoid()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "S1009"

    const/4 v10, 0x1

    const-string v11, "Sha256PasswordPlugin.0"

    if-eqz v8, :cond_1

    .line 188
    :try_start_3
    new-array v0, v10, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v0, v6

    invoke-static {v11, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v9, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v3    # "res":Ljava/lang/String;
    .end local v4    # "fileBuf":[B
    .end local v5    # "fileIn":Ljava/io/BufferedInputStream;
    .end local p0    # "connection":Lcom/mysql/jdbc/Connection;
    .end local p1    # "pkPath":Ljava/lang/String;
    throw v0

    .line 191
    .restart local v3    # "res":Ljava/lang/String;
    .restart local v4    # "fileBuf":[B
    .restart local v5    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "connection":Lcom/mysql/jdbc/Connection;
    .restart local p1    # "pkPath":Ljava/lang/String;
    :cond_1
    new-array v8, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v11, v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v9, v7, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v3    # "res":Ljava/lang/String;
    .end local v4    # "fileBuf":[B
    .end local v5    # "fileIn":Ljava/io/BufferedInputStream;
    .end local p0    # "connection":Lcom/mysql/jdbc/Connection;
    .end local p1    # "pkPath":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    .end local v7    # "ioEx":Ljava/io/IOException;
    .restart local v3    # "res":Ljava/lang/String;
    .restart local v4    # "fileBuf":[B
    .restart local v5    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "connection":Lcom/mysql/jdbc/Connection;
    .restart local p1    # "pkPath":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 197
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    goto :goto_2

    .line 198
    :catch_2
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v2, v1, v0, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 202
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    throw v1

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :cond_2
    :goto_2
    nop

    .line 195
    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 71
    return-void
.end method

.method protected encryptPassword()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected encryptPassword(Ljava/lang/String;)[B
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "input":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v3, v1, [B

    aput-byte v2, v3, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    move-object v0, v1

    .line 158
    nop

    .line 159
    array-length v1, v0

    new-array v1, v1, [B

    .line 160
    .local v1, "mysqlScrambleBuff":[B
    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v1, v2, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 161
    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/ExportControlled;->decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/mysql/jdbc/ExportControlled;->encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    return-object v2

    .line 155
    .end local v1    # "mysqlScrambleBuff":[B
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Sha256PasswordPlugin.3"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "S1000"

    invoke-static {v1, v4, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 61
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "pkURL":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-static {v1, v0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .line 82
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

    .line 90
    .local p2, "toServer":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Buffer;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 105
    .local v0, "bresp":Lcom/mysql/jdbc/Buffer;
    nop

    .line 106
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 107
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    .line 108
    .local v3, "oldBufLength":I
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 109
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 111
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    .end local v3    # "oldBufLength":I
    goto/16 :goto_1

    .line 102
    :catch_0
    move-exception v3

    move-object v4, v0

    .line 103
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    .local v4, "bresp":Lcom/mysql/jdbc/Buffer;
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "Sha256PasswordPlugin.3"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 113
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "bresp":Lcom/mysql/jdbc/Buffer;
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 117
    .restart local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 131
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 133
    .restart local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iput-boolean v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 135
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    new-array v3, v2, [B

    aput-byte v2, v3, v1

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 139
    .restart local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iput-boolean v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    goto :goto_1

    .line 121
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    :cond_4
    const-string v0, "Sha256PasswordPlugin.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "08001"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 94
    :cond_5
    :goto_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    new-array v3, v2, [B

    aput-byte v1, v3, v1

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 95
    .restart local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v0    # "bresp":Lcom/mysql/jdbc/Buffer;
    nop

    .line 143
    :goto_1
    return v2
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .line 211
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 87
    return-void
.end method
