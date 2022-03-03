.class public Lcom/mysql/fabric/ShardMappingFactory;
.super Ljava/lang/Object;
.source "ShardMappingFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public createShardMapping(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lcom/mysql/fabric/ShardMapping;
    .locals 8
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
            ">;)",
            "Lcom/mysql/fabric/ShardMapping;"
        }
    .end annotation

    .line 34
    .local p4, "shardTables":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardTable;>;"
    .local p5, "shardIndices":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/fabric/ShardIndex;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "sm":Lcom/mysql/fabric/ShardMapping;
    sget-object v1, Lcom/mysql/fabric/ShardMappingFactory$1;->$SwitchMap$com$mysql$fabric$ShardingType:[I

    invoke-virtual {p2}, Lcom/mysql/fabric/ShardingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ShardingType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :pswitch_0
    new-instance v1, Lcom/mysql/fabric/HashShardMapping;

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/mysql/fabric/HashShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    move-object v0, v1

    .line 41
    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v7, Lcom/mysql/fabric/RangeShardMapping;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mysql/fabric/RangeShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    move-object v0, v7

    .line 38
    nop

    .line 45
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
