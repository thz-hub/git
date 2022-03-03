.class public abstract Lcom/mysql/fabric/ShardMapping;
.super Ljava/lang/Object;
.source "ShardMapping.java"


# instance fields
.field private globalGroupName:Ljava/lang/String;

.field private mappingId:I

.field protected shardIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;"
        }
    .end annotation
.end field

.field protected shardTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;"
        }
    .end annotation
.end field

.field private shardingType:Lcom/mysql/fabric/ShardingType;


# direct methods
.method public constructor <init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "mappingId"    # I
    .param p2, "shardingType"    # Lcom/mysql/fabric/ShardingType;
    .param p3, "globalGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mysql/fabric/ShardingType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p4, "shardTables":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;"
    .local p5, "shardIndices":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/mysql/fabric/ShardMapping;->mappingId:I

    .line 41
    iput-object p2, p0, Lcom/mysql/fabric/ShardMapping;->shardingType:Lcom/mysql/fabric/ShardingType;

    .line 42
    iput-object p3, p0, Lcom/mysql/fabric/ShardMapping;->globalGroupName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/mysql/fabric/ShardMapping;->shardTables:Ljava/util/Set;

    .line 44
    iput-object p5, p0, Lcom/mysql/fabric/ShardMapping;->shardIndices:Ljava/util/Set;

    .line 45
    return-void
.end method


# virtual methods
.method public getGlobalGroupName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mysql/fabric/ShardMapping;->globalGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/ShardMapping;->getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/ShardIndex;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMappingId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/mysql/fabric/ShardMapping;->mappingId:I

    return v0
.end method

.method protected abstract getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;
.end method

.method public getShardIndices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mysql/fabric/ShardMapping;->shardIndices:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getShardTables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/mysql/fabric/ShardMapping;->shardTables:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getShardingType()Lcom/mysql/fabric/ShardingType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mysql/fabric/ShardMapping;->shardingType:Lcom/mysql/fabric/ShardingType;

    return-object v0
.end method
