.class public Lcom/mysql/fabric/xmlrpc/base/Param;
.super Ljava/lang/Object;
.source "Param.java"


# instance fields
.field protected value:Lcom/mysql/fabric/xmlrpc/base/Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Param;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 35
    return-void
.end method


# virtual methods
.method public getValue()Lcom/mysql/fabric/xmlrpc/base/Value;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Param;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    return-object v0
.end method

.method public setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 0
    .param p1, "value"    # Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 48
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Param;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<param>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Param;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "</param>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
