.class public Lcom/mysql/fabric/xmlrpc/base/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field protected member:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/fabric/xmlrpc/base/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMember(Lcom/mysql/fabric/xmlrpc/base/Member;)V
    .locals 1
    .param p1, "m"    # Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 41
    invoke-virtual {p0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getMember()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/fabric/xmlrpc/base/Member;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "<struct>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Struct;->member:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/Member;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    const-string v1, "</struct>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
