.class public Lcom/mysql/fabric/xmlrpc/base/Fault;
.super Ljava/lang/Object;
.source "Fault.java"


# instance fields
.field protected value:Lcom/mysql/fabric/xmlrpc/base/Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/mysql/fabric/xmlrpc/base/Value;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Fault;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    return-object v0
.end method

.method public setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 41
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Fault;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Fault;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "<fault>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Fault;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "</fault>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
