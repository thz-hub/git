.class public Lcom/mysql/fabric/RangeShardMapping;
.super Lcom/mysql/fabric/ShardMapping;
.source "RangeShardMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
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

    .line 52
    .local p4, "shardTables":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;"
    .local p5, "shardIndices":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;"
    new-instance v5, Ljava/util/TreeSet;

    sget-object v0, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;->instance:Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/ShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 53
    iget-object v0, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method


# virtual methods
.method protected getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;
    .locals 6
    .param p1, "stringKey"    # Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "key":Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/ShardIndex;

    .line 66
    .local v2, "i":Lcom/mysql/fabric/ShardIndex;
    invoke-virtual {v2}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 67
    .local v3, "lowerBound":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 68
    return-object v2

    .line 70
    .end local v2    # "i":Lcom/mysql/fabric/ShardIndex;
    .end local v3    # "lowerBound":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 71
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
