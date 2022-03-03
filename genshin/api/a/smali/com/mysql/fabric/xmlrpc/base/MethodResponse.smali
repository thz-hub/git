.class public Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
.super Ljava/lang/Object;
.source "MethodResponse.java"


# instance fields
.field protected fault:Lcom/mysql/fabric/xmlrpc/base/Fault;

.field protected params:Lcom/mysql/fabric/xmlrpc/base/Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->fault:Lcom/mysql/fabric/xmlrpc/base/Fault;

    return-object v0
.end method

.method public getParams()Lcom/mysql/fabric/xmlrpc/base/Params;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    return-object v0
.end method

.method public setFault(Lcom/mysql/fabric/xmlrpc/base/Fault;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Fault;

    .line 56
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->fault:Lcom/mysql/fabric/xmlrpc/base/Fault;

    .line 57
    return-void
.end method

.method public setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 42
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<methodResponse>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Params;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->fault:Lcom/mysql/fabric/xmlrpc/base/Fault;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    const-string v1, "</methodResponse>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
