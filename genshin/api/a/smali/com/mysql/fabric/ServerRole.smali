.class public final enum Lcom/mysql/fabric/ServerRole;
.super Ljava/lang/Enum;
.source "ServerRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/fabric/ServerRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ServerRole;

.field public static final enum CONFIGURING:Lcom/mysql/fabric/ServerRole;

.field public static final enum FAULTY:Lcom/mysql/fabric/ServerRole;

.field public static final enum PRIMARY:Lcom/mysql/fabric/ServerRole;

.field public static final enum SECONDARY:Lcom/mysql/fabric/ServerRole;

.field public static final enum SPARE:Lcom/mysql/fabric/ServerRole;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "FAULTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->FAULTY:Lcom/mysql/fabric/ServerRole;

    new-instance v1, Lcom/mysql/fabric/ServerRole;

    const-string v3, "SPARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    new-instance v3, Lcom/mysql/fabric/ServerRole;

    const-string v5, "SECONDARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    new-instance v5, Lcom/mysql/fabric/ServerRole;

    const-string v7, "PRIMARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    new-instance v7, Lcom/mysql/fabric/ServerRole;

    const-string v9, "CONFIGURING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mysql/fabric/ServerRole;->CONFIGURING:Lcom/mysql/fabric/ServerRole;

    .line 29
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mysql/fabric/ServerRole;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mysql/fabric/ServerRole;->$VALUES:[Lcom/mysql/fabric/ServerRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerRole;
    .locals 2
    .param p0, "constant"    # Ljava/lang/Integer;

    .line 33
    invoke-static {}, Lcom/mysql/fabric/ServerRole;->values()[Lcom/mysql/fabric/ServerRole;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerRole;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/mysql/fabric/ServerRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ServerRole;
    .locals 1

    .line 29
    sget-object v0, Lcom/mysql/fabric/ServerRole;->$VALUES:[Lcom/mysql/fabric/ServerRole;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ServerRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method
