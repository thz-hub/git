.class Lcom/mysql/fabric/ShardMappingFactory$1;
.super Ljava/lang/Object;
.source "ShardMappingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/fabric/ShardMappingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mysql$fabric$ShardingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/mysql/fabric/ShardingType;->values()[Lcom/mysql/fabric/ShardingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mysql/fabric/ShardMappingFactory$1;->$SwitchMap$com$mysql$fabric$ShardingType:[I

    :try_start_0
    sget-object v1, Lcom/mysql/fabric/ShardingType;->RANGE:Lcom/mysql/fabric/ShardingType;

    invoke-virtual {v1}, Lcom/mysql/fabric/ShardingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mysql/fabric/ShardMappingFactory$1;->$SwitchMap$com$mysql$fabric$ShardingType:[I

    sget-object v1, Lcom/mysql/fabric/ShardingType;->HASH:Lcom/mysql/fabric/ShardingType;

    invoke-virtual {v1}, Lcom/mysql/fabric/ShardingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
