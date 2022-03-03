.class public Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;
.super Ljava/lang/Object;
.source "InternalXmlRpcMethodCaller.java"

# interfaces
.implements Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# instance fields
.field private xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/xmlrpc/Client;

    invoke-direct {v0, p1}, Lcom/mysql/fabric/xmlrpc/Client;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/mysql/fabric/FabricCommunicationException;

    invoke-direct {v1, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;
    .locals 4
    .param p1, "array"    # Lcom/mysql/fabric/xmlrpc/base/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/fabric/xmlrpc/base/Array;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Array;->getData()Lcom/mysql/fabric/xmlrpc/base/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Data;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 78
    .local v2, "v":Lcom/mysql/fabric/xmlrpc/base/Value;
    invoke-direct {p0, v2}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/mysql/fabric/xmlrpc/base/Value;
    :cond_0
    return-object v0
.end method

.method private unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;
    .locals 5
    .param p1, "v"    # Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 63
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getType()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getType()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 68
    .local v2, "m":Lcom/mysql/fabric/xmlrpc/base/Member;
    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/mysql/fabric/xmlrpc/base/Member;
    :cond_1
    return-object v0

    .line 72
    .end local v0    # "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 8
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;

    invoke-direct {v0}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;-><init>()V

    .line 93
    .local v0, "methodCall":Lcom/mysql/fabric/xmlrpc/base/MethodCall;
    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Params;-><init>()V

    .line 94
    .local v1, "p":Lcom/mysql/fabric/xmlrpc/base/Params;
    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 95
    new-array p2, v2, [Ljava/lang/Object;

    .line 97
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 98
    aget-object v4, p2, v3

    if-eqz v4, :cond_4

    .line 100
    const-class v4, Ljava/lang/String;

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v6, p2, v3

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v1, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto :goto_1

    .line 102
    :cond_1
    const-class v4, Ljava/lang/Double;

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v6, p2, v3

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(D)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v1, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto :goto_1

    .line 104
    :cond_2
    const-class v4, Ljava/lang/Integer;

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v6, p2, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v1, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    .line 97
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "nil args unsupported"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v0, p1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->setMethodName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v3, v0}, Lcom/mysql/fabric/xmlrpc/Client;->execute(Lcom/mysql/fabric/xmlrpc/base/MethodCall;)Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    move-result-object v3

    .line 114
    .local v3, "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    invoke-virtual {v3}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getParams()Lcom/mysql/fabric/xmlrpc/base/Params;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->getParam()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/Param;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {p0, v2}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 115
    .end local v3    # "resp":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during call to `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' (args="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/xmlrpc/Client;->clearHeader(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/fabric/xmlrpc/Client;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
