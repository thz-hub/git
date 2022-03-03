.class public Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "ExportControlled.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ExportControlled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509TrustManagerWrapper"
.end annotation


# instance fields
.field private certFactory:Ljava/security/cert/CertificateFactory;

.field private origTm:Ljavax/net/ssl/X509TrustManager;

.field private validator:Ljava/security/cert/CertPathValidator;

.field private validatorParams:Ljava/security/cert/PKIXParameters;

.field private verifyServerCert:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 252
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 253
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 254
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 277
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Z)V
    .locals 8
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "verifyServerCertificate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 252
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 253
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 254
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 257
    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 258
    iput-boolean p2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 260
    if-eqz p2, :cond_1

    .line 262
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v2, "anch":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .local v3, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 264
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljava/security/cert/TrustAnchor;

    invoke-direct {v7, v6, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    nop

    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 267
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 268
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 269
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v2    # "anch":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 285
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 291
    .local v0, "certSelect":Ljava/security/cert/X509CertSelector;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 296
    .local v1, "certPath":Ljava/security/cert/CertPath;
    iget-object v2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v3, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2, v1, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v2

    .line 298
    .local v2, "result":Ljava/security/cert/CertPathValidatorResult;
    move-object v3, v2

    check-cast v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    .end local v2    # "result":Ljava/security/cert/CertPathValidatorResult;
    goto :goto_1

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 300
    .end local v1    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 307
    .end local v0    # "certSelect":Ljava/security/cert/X509CertSelector;
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 310
    :cond_2
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method
