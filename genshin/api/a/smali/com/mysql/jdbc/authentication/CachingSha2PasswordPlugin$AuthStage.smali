.class public final enum Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
.super Ljava/lang/Enum;
.source "CachingSha2PasswordPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    new-instance v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v1, "FAST_AUTH_SEND_SCRAMBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v3, "FAST_AUTH_READ_RESULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v3, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v5, "FAST_AUTH_COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v5, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v7, "FULL_AUTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 44
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->$VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
    .locals 1

    .line 44
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->$VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-object v0
.end method
