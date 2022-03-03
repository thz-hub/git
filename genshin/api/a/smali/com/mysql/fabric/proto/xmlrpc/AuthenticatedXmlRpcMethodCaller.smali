.class public Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;
.super Ljava/lang/Object;
.source "AuthenticatedXmlRpcMethodCaller.java"

# interfaces
.implements Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# instance fields
.field private password:Ljava/lang/String;

.field private underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

.field private url:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "underlyingCaller"    # Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 44
    iput-object p2, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->url:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->username:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->password:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->getChallengeHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "authenticateHeader":Ljava/lang/String;
    nop

    .line 66
    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->parseDigestChallenge(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 68
    .local v1, "digestChallenge":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->password:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->generateAuthorizationHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "authorizationHeader":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    const-string v4, "Authorization"

    invoke-interface {v3, v4, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v3, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 62
    .end local v0    # "authenticateHeader":Ljava/lang/String;
    .end local v1    # "digestChallenge":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "authorizationHeader":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 63
    .restart local v0    # "authenticateHeader":Ljava/lang/String;
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/mysql/fabric/FabricCommunicationException;

    const-string v3, "Unable to obtain challenge header for authentication"

    invoke-direct {v2, v3, v1}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->clearHeader(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
