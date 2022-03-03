.class public final enum Lcom/mysql/fabric/ShardingType;
.super Ljava/lang/Enum;
.source "ShardingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/fabric/ShardingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ShardingType;

.field public static final enum HASH:Lcom/mysql/fabric/ShardingType;

.field public static final enum LIST:Lcom/mysql/fabric/ShardingType;

.field public static final enum RANGE:Lcom/mysql/fabric/ShardingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/mysql/fabric/ShardingType;

    const-string v1, "LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ShardingType;->LIST:Lcom/mysql/fabric/ShardingType;

    new-instance v1, Lcom/mysql/fabric/ShardingType;

    const-string v3, "RANGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/fabric/ShardingType;->RANGE:Lcom/mysql/fabric/ShardingType;

    new-instance v3, Lcom/mysql/fabric/ShardingType;

    const-string v5, "HASH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mysql/fabric/ShardingType;->HASH:Lcom/mysql/fabric/ShardingType;

    .line 33
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mysql/fabric/ShardingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mysql/fabric/ShardingType;->$VALUES:[Lcom/mysql/fabric/ShardingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ShardingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/mysql/fabric/ShardingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardingType;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ShardingType;
    .locals 1

    .line 33
    sget-object v0, Lcom/mysql/fabric/ShardingType;->$VALUES:[Lcom/mysql/fabric/ShardingType;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ShardingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ShardingType;

    return-object v0
.end method
