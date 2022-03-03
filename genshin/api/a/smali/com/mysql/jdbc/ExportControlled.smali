.class public Lcom/mysql/jdbc/ExportControlled;
.super Ljava/lang/Object;
.source "ExportControlled.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;,
        Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final SQL_STATE_BAD_SSL_PARAMS:Ljava/lang/String; = "08000"

.field private static final TLS_PROTOCOLS:[Ljava/lang/String;

.field private static final TLSv1:Ljava/lang/String; = "TLSv1"

.field private static final TLSv1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final TLSv1_2:Ljava/lang/String; = "TLSv1.2"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const-string v0, "TLSv1.2"

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public static decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "interceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 493
    if-eqz p0, :cond_0

    .line 497
    :try_start_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 498
    .local v0, "offset":I
    const-string v1, "-----END PUBLIC KEY-----"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 501
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/util/Base64Decoder;->decode([BII)[B

    move-result-object v2

    .line 503
    .local v2, "certificateData":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 504
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 505
    .local v4, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;

    return-object v5

    .line 506
    .end local v0    # "offset":I
    .end local v1    # "len":I
    .end local v2    # "certificateData":[B
    .end local v3    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v4    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 494
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "key":Ljava/lang/String;
    .end local p1    # "interceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .local v0, "ex":Ljava/lang/Exception;
    .restart local p0    # "key":Ljava/lang/String;
    .restart local p1    # "interceptor":Lcom/mysql/jdbc/ExceptionInterceptor;
    :goto_0
    const-string v1, "Unable to decode public key"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected static enabled()Z
    .locals 1

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public static encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "key"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "interceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 513
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 514
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 515
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 516
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 517
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private static getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 28
    .param p0, "mysqlIO"    # Lcom/mysql/jdbc/MysqlIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    move-object/from16 v1, p0

    const-string v2, "08000"

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "clientCertificateKeyStoreUrl":Ljava/lang/String;
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "clientCertificateKeyStoreType":Ljava/lang/String;
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "trustCertificateKeyStorePassword":Ljava/lang/String;
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "trustCertificateKeyStoreType":Ljava/lang/String;
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "file:"

    if-eqz v8, :cond_1

    .line 326
    const-string v8, "javax.net.ssl.keyStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .end local v0    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v8, "clientCertificateKeyStoreUrl":Ljava/lang/String;
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v0, "javax.net.ssl.keyStoreType"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "clientCertificateKeyStoreType":Ljava/lang/String;
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    const-string v0, "JKS"

    move-object v4, v0

    goto :goto_0

    .line 329
    :cond_0
    move-object v4, v0

    .line 333
    .end local v0    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 325
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "clientCertificateKeyStoreUrl":Ljava/lang/String;
    :cond_1
    move-object v8, v0

    .line 342
    .end local v0    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    const-string v0, "javax.net.ssl.trustStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 345
    const-string v0, "javax.net.ssl.trustStoreType"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "trustCertificateKeyStoreType":Ljava/lang/String;
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 347
    const-string v0, "JKS"

    move-object v7, v0

    goto :goto_2

    .line 346
    :cond_3
    move-object v7, v0

    .line 350
    .end local v0    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 352
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    goto :goto_3

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .line 360
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v10, 0x0

    .line 362
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v11, 0x0

    .line 363
    .local v11, "kms":[Ljavax/net/ssl/KeyManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 366
    .local v12, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_53

    move-object v9, v0

    .line 367
    :try_start_3
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_52

    move-object v10, v0

    .line 372
    nop

    .line 374
    invoke-static {v8}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v14, " ["

    const-string v15, " keystore from "

    const-string v13, " does not appear to be a valid URL."

    move-object/from16 v16, v11

    .end local v11    # "kms":[Ljavax/net/ssl/KeyManager;
    .local v16, "kms":[Ljavax/net/ssl/KeyManager;
    const-string v11, "Cannot open "

    move-object/from16 v17, v12

    .end local v12    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v17, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    const-string v12, "Unsupported keystore algorithm ["

    const-string v1, "Could not create KeyStore instance ["

    move-object/from16 v18, v9

    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const-string v9, "]"

    if-nez v0, :cond_9

    .line 375
    const/16 v19, 0x0

    .line 377
    .local v19, "ksIS":Ljava/io/InputStream;
    :try_start_4
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 378
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 379
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    move-object/from16 v20, v6

    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .local v20, "trustCertificateKeyStorePassword":Ljava/lang/String;
    :try_start_5
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    .local v6, "ksURL":Ljava/net/URL;
    if-nez v3, :cond_5

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    const/4 v7, 0x0

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v21, "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v22, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :try_start_6
    new-array v5, v7, [C

    goto :goto_4

    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 381
    .local v5, "password":[C
    :goto_4
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 382
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .local v7, "ksIS":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 383
    invoke-virtual {v10, v0, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 384
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v19
    :try_end_7
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v16, v19

    move-object/from16 v19, v7

    goto/16 :goto_5

    .line 408
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v5    # "password":[C
    .end local v6    # "ksURL":Ljava/net/URL;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v7

    goto/16 :goto_d

    .line 401
    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_7

    .line 398
    :catch_3
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_8

    .line 395
    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_9

    .line 392
    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_a

    .line 389
    :catch_6
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_b

    .line 386
    :catch_7
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_c

    .line 401
    .end local v7    # "ksIS":Ljava/io/InputStream;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    :catch_8
    move-exception v0

    goto/16 :goto_7

    .line 398
    :catch_9
    move-exception v0

    goto/16 :goto_8

    .line 395
    :catch_a
    move-exception v0

    goto/16 :goto_9

    .line 392
    :catch_b
    move-exception v0

    goto/16 :goto_a

    .line 389
    :catch_c
    move-exception v0

    goto/16 :goto_b

    .line 386
    :catch_d
    move-exception v0

    goto/16 :goto_c

    .line 408
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v5, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v7, "trustCertificateKeyStoreType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    move-object v1, v0

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_d

    .line 401
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto :goto_7

    .line 398
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_8

    .line 395
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_9

    .line 392
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_11
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_a

    .line 389
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_b

    .line 386
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_c

    .line 377
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v6, "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :cond_6
    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 386
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_5
    nop

    .line 481
    if-eqz v19, :cond_7

    .line 410
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14

    .line 413
    goto :goto_6

    .line 411
    :catch_14
    move-exception v0

    .line 413
    :cond_7
    :goto_6
    nop

    .line 415
    move-object/from16 v5, v16

    goto/16 :goto_10

    .line 408
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v1, v0

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    goto/16 :goto_d

    .line 401
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 402
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_7
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 404
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    nop

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 398
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_16
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 399
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "mue":Ljava/net/MalformedURLException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 395
    .end local v0    # "mue":Ljava/net/MalformedURLException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_17
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 396
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "nsae":Ljava/security/cert/CertificateException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 392
    .end local v0    # "nsae":Ljava/security/cert/CertificateException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_18
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 393
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "kse":Ljava/security/KeyStoreException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 389
    .end local v0    # "kse":Ljava/security/KeyStoreException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_19
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 390
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 386
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_1a
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 387
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v0, "uke":Ljava/security/UnrecoverableKeyException;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_c
    const-string v1, "Could not recover keys from client keystore.  Check password?"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 408
    .end local v0    # "uke":Ljava/security/UnrecoverableKeyException;
    .restart local v3    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v19    # "ksIS":Ljava/io/InputStream;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 413
    :goto_d
    if-eqz v19, :cond_8

    .line 410
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1b

    goto :goto_e

    .line 411
    :catch_1b
    move-exception v0

    goto :goto_f

    .line 413
    :cond_8
    :goto_e
    nop

    :goto_f
    nop

    .line 408
    throw v1

    .line 374
    .end local v19    # "ksIS":Ljava/io/InputStream;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    move-object/from16 v5, v16

    .line 418
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .local v5, "kms":[Ljavax/net/ssl/KeyManager;
    :goto_10
    const/4 v6, 0x0

    .line 420
    .local v6, "trustStoreIS":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 422
    .local v0, "trustKeyStore":Ljava/security/KeyStore;
    :try_start_b
    invoke-static/range {v22 .. v22}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_50
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_4e
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_4d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4c
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-nez v7, :cond_b

    :try_start_c
    invoke-static/range {v21 .. v21}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 423
    new-instance v7, Ljava/net/URL;
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_23
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_21
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v19, "clientCertificateKeyStorePassword":Ljava/lang/String;
    :try_start_d
    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v6, v7

    .line 424
    if-nez v20, :cond_a

    move-object/from16 v16, v0

    const/4 v7, 0x0

    .end local v0    # "trustKeyStore":Ljava/security/KeyStore;
    .local v16, "trustKeyStore":Ljava/security/KeyStore;
    new-array v0, v7, [C

    goto :goto_11

    .end local v16    # "trustKeyStore":Ljava/security/KeyStore;
    .restart local v0    # "trustKeyStore":Ljava/security/KeyStore;
    :cond_a
    move-object/from16 v16, v0

    .end local v0    # "trustKeyStore":Ljava/security/KeyStore;
    .restart local v16    # "trustKeyStore":Ljava/security/KeyStore;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 426
    .local v0, "trustStorePassword":[C
    :goto_11
    invoke-static/range {v21 .. v21}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 427
    .end local v16    # "trustKeyStore":Ljava/security/KeyStore;
    .local v7, "trustKeyStore":Ljava/security/KeyStore;
    invoke-virtual {v7, v6, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_20
    .catch Ljava/security/KeyStoreException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v0, v7

    goto/16 :goto_12

    .line 459
    .end local v0    # "trustStorePassword":[C
    .end local v7    # "trustKeyStore":Ljava/security/KeyStore;
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    goto/16 :goto_1b

    .line 453
    :catch_1c
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v18, v4

    goto/16 :goto_16

    .line 450
    :catch_1d
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    goto/16 :goto_17

    .line 447
    :catch_1e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    goto/16 :goto_18

    .line 444
    :catch_1f
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    goto/16 :goto_19

    .line 441
    :catch_20
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    goto/16 :goto_1a

    .line 459
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object v1, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_1b

    .line 453
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_21
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_16

    .line 450
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_22
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_17

    .line 447
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_18

    .line 444
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_24
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_19

    .line 441
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_25
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v18, v4

    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    goto/16 :goto_1a

    .line 422
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .local v0, "trustKeyStore":Ljava/security/KeyStore;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    .line 430
    .end local v0    # "trustKeyStore":Ljava/security/KeyStore;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v16    # "trustKeyStore":Ljava/security/KeyStore;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    move-object/from16 v0, v16

    .end local v16    # "trustKeyStore":Ljava/security/KeyStore;
    .restart local v0    # "trustKeyStore":Ljava/security/KeyStore;
    :goto_12
    move-object/from16 v7, v18

    .end local v18    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v7, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_e
    invoke-virtual {v7, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 433
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v16
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4b
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_e} :catch_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_49
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_48
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_47
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 434
    .local v16, "origTms":[Ljavax/net/ssl/TrustManager;
    move-object/from16 v22, v0

    move-object/from16 v18, v4

    move-object/from16 v4, p0

    .end local v0    # "trustKeyStore":Ljava/security/KeyStore;
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .local v22, "trustKeyStore":Ljava/security/KeyStore;
    :try_start_f
    iget-object v0, v4, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getVerifyServerCertificate()Z

    move-result v0
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_46
    .catch Ljava/security/KeyStoreException; {:try_start_f .. :try_end_f} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_44
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_43
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_42
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 436
    .local v0, "verifyServerCert":Z
    move-object/from16 v23, v16

    move-object/from16 v4, v23

    move-object/from16 v23, v7

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v4, "arr$":[Ljavax/net/ssl/TrustManager;
    .local v23, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_10
    array-length v7, v4
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_41
    .catch Ljava/security/KeyStoreException; {:try_start_10 .. :try_end_10} :catch_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_3f
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_3e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3d
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .local v7, "len$":I
    const/16 v24, 0x0

    move-object/from16 v25, v8

    move/from16 v8, v24

    .local v8, "i$":I
    .local v25, "clientCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_13
    if-ge v8, v7, :cond_d

    :try_start_11
    aget-object v24, v4, v8

    move-object/from16 v26, v24

    .line 438
    .local v26, "tm":Ljavax/net/ssl/TrustManager;
    move-object/from16 v24, v4

    move-object/from16 v4, v26

    move/from16 v26, v7

    .end local v7    # "len$":I
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    .local v24, "arr$":[Ljavax/net/ssl/TrustManager;
    .local v26, "len$":I
    instance-of v7, v4, Ljavax/net/ssl/X509TrustManager;
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_39
    .catch Ljava/security/KeyStoreException; {:try_start_11 .. :try_end_11} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_11} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_11} :catch_36
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_35
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v7, :cond_c

    :try_start_12
    new-instance v7, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_2f
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_12} :catch_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_12} :catch_2d
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_12} :catch_2c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2b
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object/from16 v27, v10

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v27, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :try_start_13
    move-object v10, v4

    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v7, v10, v0}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;Z)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_2a
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_13} :catch_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_13} :catch_28
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_26
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/16 :goto_14

    .line 459
    .end local v0    # "verifyServerCert":Z
    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v8    # "i$":I
    .end local v16    # "origTms":[Ljavax/net/ssl/TrustManager;
    .end local v22    # "trustKeyStore":Ljava/security/KeyStore;
    .end local v24    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v26    # "len$":I
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    goto/16 :goto_1b

    .line 453
    :catch_26
    move-exception v0

    move-object/from16 v10, v17

    goto/16 :goto_16

    .line 450
    :catch_27
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    goto/16 :goto_17

    .line 447
    :catch_28
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    goto/16 :goto_18

    .line 444
    :catch_29
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    goto/16 :goto_19

    .line 441
    :catch_2a
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    goto/16 :goto_1a

    .line 459
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_7
    move-exception v0

    move-object/from16 v27, v10

    move-object v1, v0

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_2b
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_16

    .line 450
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_2c
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_17

    .line 447
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_2d
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_18

    .line 444
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_2e
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_19

    .line 441
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_2f
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1a

    .line 438
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v0    # "verifyServerCert":Z
    .restart local v4    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v8    # "i$":I
    .restart local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "origTms":[Ljavax/net/ssl/TrustManager;
    .restart local v22    # "trustKeyStore":Ljava/security/KeyStore;
    .restart local v24    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v26    # "len$":I
    :cond_c
    move-object/from16 v27, v10

    .end local v10    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    move-object v7, v4

    :goto_14
    move-object/from16 v10, v17

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :try_start_14
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_34
    .catch Ljava/security/KeyStoreException; {:try_start_14 .. :try_end_14} :catch_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_14} :catch_32
    .catch Ljava/security/cert/CertificateException; {:try_start_14 .. :try_end_14} :catch_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_30
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 436
    nop

    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v17, v10

    move-object/from16 v4, v24

    move/from16 v7, v26

    move-object/from16 v10, v27

    goto/16 :goto_13

    .line 459
    .end local v0    # "verifyServerCert":Z
    .end local v8    # "i$":I
    .end local v16    # "origTms":[Ljavax/net/ssl/TrustManager;
    .end local v22    # "trustKeyStore":Ljava/security/KeyStore;
    .end local v24    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v26    # "len$":I
    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v21

    goto/16 :goto_1b

    .line 453
    :catch_30
    move-exception v0

    goto/16 :goto_16

    .line 450
    :catch_31
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_17

    .line 447
    :catch_32
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_18

    .line 444
    :catch_33
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_19

    .line 441
    :catch_34
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_1a

    .line 459
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object v1, v0

    move-object/from16 v7, v21

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_35
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_16

    .line 450
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_36
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_17

    .line 447
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_37
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_18

    .line 444
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_38
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_19

    .line 441
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_39
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1a

    .line 436
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v0    # "verifyServerCert":Z
    .local v4, "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v7    # "len$":I
    .restart local v8    # "i$":I
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v16    # "origTms":[Ljavax/net/ssl/TrustManager;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v22    # "trustKeyStore":Ljava/security/KeyStore;
    :cond_d
    move-object/from16 v24, v4

    move/from16 v26, v7

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .line 441
    .end local v0    # "verifyServerCert":Z
    .end local v4    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v16    # "origTms":[Ljavax/net/ssl/TrustManager;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v22    # "trustKeyStore":Ljava/security/KeyStore;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    nop

    .line 413
    if-eqz v6, :cond_e

    .line 461
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3a

    .line 464
    goto :goto_15

    .line 462
    :catch_3a
    move-exception v0

    .line 464
    :cond_e
    :goto_15
    nop

    .line 466
    nop

    .line 469
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 470
    new-instance v0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;

    invoke-direct {v0}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>()V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_f
    :try_start_16
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 475
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 476
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_16} :catch_3c
    .catch Ljava/security/KeyManagementException; {:try_start_16 .. :try_end_16} :catch_3b

    return-object v1

    .line 480
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_3b
    move-exception v0

    .line 481
    .local v0, "kme":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyManagementException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v1, v2, v7, v7, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 478
    .end local v0    # "kme":Ljava/security/KeyManagementException;
    :catch_3c
    move-exception v0

    const/4 v7, 0x0

    .line 479
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v4, "TLS is not a valid SSL protocol."

    invoke-static {v4, v2, v7, v7, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 459
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v8, "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object v1, v0

    move-object/from16 v7, v21

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_3d
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_16

    .line 450
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_3e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_17

    .line 447
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_3f
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_18

    .line 444
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_40
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_19

    .line 441
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_41
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1a

    .line 459
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v7, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object v1, v0

    move-object/from16 v7, v21

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_42
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_16

    .line 450
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_43
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_17

    .line 447
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_44
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_18

    .line 444
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_45
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_19

    .line 441
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_46
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1a

    .line 459
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v4, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catchall_c
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object v1, v0

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_47
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_16

    .line 450
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_48
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_17

    .line 447
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_49
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_18

    .line 444
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_4a
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_19

    .line 441
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_4b
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1a

    .line 459
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v22, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    move-object v1, v0

    move-object/from16 v7, v21

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    goto/16 :goto_1b

    .line 453
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_4c
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    .line 454
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_16
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    move-object/from16 v7, v21

    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v7, "trustCertificateKeyStoreType":Ljava/lang/String;
    :try_start_18
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 456
    .restart local v1    # "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 457
    nop

    .end local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "trustStoreIS":Ljava/io/InputStream;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "trustStoreIS":Ljava/io/InputStream;
    .restart local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catchall_e
    move-exception v0

    move-object/from16 v7, v21

    move-object v1, v0

    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    goto/16 :goto_1b

    .line 450
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    :catch_4d
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    .line 451
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "e":Ljava/security/cert/CertificateException;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load trust"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "trustStoreIS":Ljava/io/InputStream;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 447
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "trustStoreIS":Ljava/io/InputStream;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_4e
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    .line 448
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "trustStoreIS":Ljava/io/InputStream;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 444
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "trustStoreIS":Ljava/io/InputStream;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_4f
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    .line 445
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "e":Ljava/security/KeyStoreException;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "trustStoreIS":Ljava/io/InputStream;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1

    .line 441
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "trustStoreIS":Ljava/io/InputStream;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catch_50
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move-object/from16 v10, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    move-object/from16 v18, v4

    .line 442
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v17    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v21    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v22    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v0, "e":Ljava/net/MalformedURLException;
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .local v10, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v18, "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v8, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "trustStoreIS":Ljava/io/InputStream;
    .end local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .end local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 459
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "trustStoreIS":Ljava/io/InputStream;
    .restart local v7    # "trustCertificateKeyStoreType":Ljava/lang/String;
    .restart local v10    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "mysqlIO":Lcom/mysql/jdbc/MysqlIO;
    :catchall_f
    move-exception v0

    move-object v1, v0

    .line 464
    :goto_1b
    if-eqz v6, :cond_10

    .line 461
    :try_start_19
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_51

    goto :goto_1c

    .line 462
    :catch_51
    move-exception v0

    goto :goto_1d

    .line 464
    :cond_10
    :goto_1c
    nop

    :goto_1d
    nop

    .line 459
    throw v1

    .line 368
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v27    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .local v5, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v6, "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v10, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v12    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_52
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object v3, v5

    move-object/from16 v20, v6

    move-object/from16 v25, v8

    move-object/from16 v23, v9

    move-object/from16 v16, v11

    move-object v1, v12

    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v11    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v12    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v1, "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .local v16, "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    goto :goto_1e

    .end local v1    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .end local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .end local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v23    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .local v3, "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v11    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v12    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    :catch_53
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object v3, v5

    move-object/from16 v20, v6

    move-object/from16 v25, v8

    move-object/from16 v16, v11

    move-object v1, v12

    .line 369
    .end local v4    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .end local v5    # "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v6    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .end local v8    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    .end local v11    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v12    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "tms":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    .local v3, "trustCertificateKeyStoreUrl":Ljava/lang/String;
    .restart local v16    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v18    # "clientCertificateKeyStoreType":Ljava/lang/String;
    .restart local v19    # "clientCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v20    # "trustCertificateKeyStorePassword":Ljava/lang/String;
    .restart local v25    # "clientCertificateKeyStoreUrl":Ljava/lang/String;
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "Default algorithm definitions for TrustManager and/or KeyManager are invalid.  Check java security properties file."

    const/4 v6, 0x0

    invoke-static {v5, v2, v6, v6, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public static isSSLEstablished(Ljava/net/Socket;)Z
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 487
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected static transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V
    .locals 25
    .param p0, "mysqlIO"    # Lcom/mysql/jdbc/MysqlIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    new-instance v0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/ExportControlled;->getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-direct {v0, v2, v3, v4}, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/mysql/jdbc/SocketFactory;Ljava/net/Socket;)V

    move-object v2, v0

    .line 106
    .local v2, "sslFact":Lcom/mysql/jdbc/SocketFactory;
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget v3, v1, Lcom/mysql/jdbc/MysqlIO;->port:I

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 108
    const/4 v0, 0x0

    .line 115
    .local v0, "tryProtocols":[Ljava/lang/String;
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledTLSProtocols()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v3, "enabledTLSProtocols":Ljava/lang/String;
    const-string v4, "\\s*,\\s*"

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 118
    :cond_0
    const/16 v9, 0x1c

    invoke-virtual {v1, v8, v5, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0x2e

    invoke-virtual {v1, v8, v6, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v1, v8, v5, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    invoke-virtual {v1, v8, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    const-string v9, "TLSv1.1"

    const-string v10, "TLSv1"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    sget-object v9, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    move-object v0, v9

    .line 128
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v9, "configuredProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v10, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 130
    .local v10, "jvmSupportedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v11, "allowedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    .line 132
    .local v15, "protocol":Ljava/lang/String;
    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 133
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v15    # "protocol":Ljava/lang/String;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 136
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    :cond_5
    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v12, Ljavax/net/ssl/SSLSocket;

    new-array v13, v7, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 139
    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledSSLCipherSuites()Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "enabledSSLCipherSuites":Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 142
    .local v13, "overrideCiphers":Z
    :goto_3
    const/4 v14, 0x0

    .line 143
    .local v14, "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_9

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 147
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 148
    .local v5, "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v6, v4

    .local v6, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v6, :cond_8

    aget-object v15, v4, v8

    .line 149
    .local v15, "cipher":Ljava/lang/String;
    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 150
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v15    # "cipher":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 154
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "len$":I
    .end local v8    # "i$":I
    :cond_8
    move-object/from16 v17, v0

    goto/16 :goto_8

    .line 156
    :cond_9
    const/4 v4, 0x0

    .line 157
    .local v4, "disableDHAlgorithm":Z
    const/16 v15, 0x2d

    invoke-virtual {v1, v8, v8, v15}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v15

    const/16 v5, 0x8

    if-eqz v15, :cond_a

    invoke-virtual {v1, v8, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_a
    const/16 v15, 0x1a

    invoke-virtual {v1, v8, v6, v15}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x7

    invoke-virtual {v1, v8, v15, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    const/4 v15, 0x7

    invoke-virtual {v1, v8, v15, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 163
    :cond_c
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v6

    if-ge v6, v5, :cond_e

    .line 164
    const/4 v4, 0x1

    goto :goto_5

    .line 166
    :cond_d
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v6

    if-lt v6, v5, :cond_e

    .line 169
    const/4 v4, 0x1

    .line 172
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 174
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v6, v5

    .restart local v6    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_6
    if-ge v8, v6, :cond_11

    aget-object v15, v5, v8

    .line 175
    .restart local v15    # "cipher":Ljava/lang/String;
    if-eqz v4, :cond_f

    const-string v7, "_DHE_"

    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v0

    .end local v0    # "tryProtocols":[Ljava/lang/String;
    .local v17, "tryProtocols":[Ljava/lang/String;
    const/4 v0, -0x1

    if-gt v7, v0, :cond_10

    const-string v7, "_DH_"

    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v0, :cond_10

    goto :goto_7

    .end local v17    # "tryProtocols":[Ljava/lang/String;
    .restart local v0    # "tryProtocols":[Ljava/lang/String;
    :cond_f
    move-object/from16 v17, v0

    .line 176
    .end local v0    # "tryProtocols":[Ljava/lang/String;
    .restart local v17    # "tryProtocols":[Ljava/lang/String;
    :goto_7
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v15    # "cipher":Ljava/lang/String;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    const/4 v7, 0x0

    goto :goto_6

    .end local v17    # "tryProtocols":[Ljava/lang/String;
    .restart local v0    # "tryProtocols":[Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v0

    .end local v0    # "tryProtocols":[Ljava/lang/String;
    .restart local v17    # "tryProtocols":[Ljava/lang/String;
    goto :goto_8

    .line 172
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "i$":I
    .end local v17    # "tryProtocols":[Ljava/lang/String;
    .restart local v0    # "tryProtocols":[Ljava/lang/String;
    :cond_12
    move-object/from16 v17, v0

    .line 183
    .end local v0    # "tryProtocols":[Ljava/lang/String;
    .end local v4    # "disableDHAlgorithm":Z
    .restart local v17    # "tryProtocols":[Ljava/lang/String;
    :goto_8
    if-eqz v14, :cond_13

    .line 184
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 187
    :cond_13
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 189
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnbufferedInput()Z

    move-result v0

    const/16 v4, 0x4000

    if-eqz v0, :cond_14

    .line 190
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_9

    .line 192
    :cond_14
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 195
    :goto_9
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 197
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 199
    iput-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .end local v3    # "enabledTLSProtocols":Ljava/lang/String;
    .end local v9    # "configuredProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "jvmSupportedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "allowedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "enabledSSLCipherSuites":Ljava/lang/String;
    .end local v13    # "overrideCiphers":Z
    .end local v14    # "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tryProtocols":[Ljava/lang/String;
    nop

    .line 205
    return-void

    .line 201
    :catch_0
    move-exception v0

    move-object/from16 v23, v0

    .line 202
    .local v23, "ioEx":Ljava/io/IOException;
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketSentTimeMs()J

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketReceivedTimeMs()J

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v24

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v24}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
