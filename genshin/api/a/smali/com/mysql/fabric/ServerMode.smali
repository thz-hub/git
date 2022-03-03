.class public final enum Lcom/mysql/fabric/ServerMode;
.super Ljava/lang/Enum;
.source "ServerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/fabric/ServerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ServerMode;

.field public static final enum OFFLINE:Lcom/mysql/fabric/ServerMode;

.field public static final enum READ_ONLY:Lcom/mysql/fabric/ServerMode;

.field public static final enum READ_WRITE:Lcom/mysql/fabric/ServerMode;

.field public static final enum WRITE_ONLY:Lcom/mysql/fabric/ServerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/mysql/fabric/ServerMode;

    const-string v1, "OFFLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerMode;->OFFLINE:Lcom/mysql/fabric/ServerMode;

    new-instance v1, Lcom/mysql/fabric/ServerMode;

    const-string v3, "READ_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/fabric/ServerMode;->READ_ONLY:Lcom/mysql/fabric/ServerMode;

    new-instance v3, Lcom/mysql/fabric/ServerMode;

    const-string v5, "WRITE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mysql/fabric/ServerMode;->WRITE_ONLY:Lcom/mysql/fabric/ServerMode;

    new-instance v5, Lcom/mysql/fabric/ServerMode;

    const-string v7, "READ_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mysql/fabric/ServerMode;->READ_WRITE:Lcom/mysql/fabric/ServerMode;

    .line 30
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mysql/fabric/ServerMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mysql/fabric/ServerMode;->$VALUES:[Lcom/mysql/fabric/ServerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerMode;
    .locals 2
    .param p0, "constant"    # Ljava/lang/Integer;

    .line 34
    invoke-static {}, Lcom/mysql/fabric/ServerMode;->values()[Lcom/mysql/fabric/ServerMode;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/mysql/fabric/ServerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ServerMode;
    .locals 1

    .line 30
    sget-object v0, Lcom/mysql/fabric/ServerMode;->$VALUES:[Lcom/mysql/fabric/ServerMode;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ServerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method
