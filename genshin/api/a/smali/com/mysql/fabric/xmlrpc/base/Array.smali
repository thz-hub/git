.class public Lcom/mysql/fabric/xmlrpc/base/Array;
.super Ljava/lang/Object;
.source "Array.java"


# instance fields
.field protected data:Lcom/mysql/fabric/xmlrpc/base/Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 1
    .param p1, "v"    # Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 45
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-direct {v0}, Lcom/mysql/fabric/xmlrpc/base/Data;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/xmlrpc/base/Data;->addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    .line 49
    return-void
.end method

.method public getData()Lcom/mysql/fabric/xmlrpc/base/Data;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    return-object v0
.end method

.method public setData(Lcom/mysql/fabric/xmlrpc/base/Data;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 41
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<array>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Array;->data:Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Data;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "</array>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
