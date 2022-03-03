.class public Lcom/mysql/fabric/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private fabricUuid:Ljava/lang/String;

.field private protocolVersion:I

.field private resultSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 42
    .local p1, "responseData":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    .line 45
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    .line 49
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mysql/fabric/Response;->ttl:I

    .line 50
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    .line 51
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    .line 54
    :cond_0
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 55
    .local v1, "resultSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 57
    .local v0, "resultData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v2, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;

    invoke-direct {v2}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;-><init>()V

    const-string v3, "info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "rows"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;->parse(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    .line 59
    .end local v0    # "resultData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    return-void

    .line 46
    .end local v1    # "resultSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_2
    new-instance v0, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricUuid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    return v0
.end method

.method public getResultSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/mysql/fabric/Response;->ttl:I

    return v0
.end method
