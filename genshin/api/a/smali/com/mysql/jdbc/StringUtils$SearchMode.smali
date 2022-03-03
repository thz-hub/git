.class public final enum Lcom/mysql/jdbc/StringUtils$SearchMode;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/StringUtils$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "ALLOW_BACKSLASH_ESCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v1, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v3, "SKIP_BETWEEN_MARKERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v3, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v5, "SKIP_BLOCK_COMMENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v5, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v7, "SKIP_LINE_COMMENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v7, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v9, "SKIP_WHITE_SPACE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    .line 52
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mysql/jdbc/StringUtils$SearchMode;->$VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/StringUtils$SearchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/StringUtils$SearchMode;
    .locals 1

    .line 52
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->$VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/StringUtils$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/StringUtils$SearchMode;

    return-object v0
.end method
