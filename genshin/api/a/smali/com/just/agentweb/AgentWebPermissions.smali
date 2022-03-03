.class public Lcom/just/agentweb/AgentWebPermissions;
.super Ljava/lang/Object;
.source "AgentWebPermissions.java"


# static fields
.field public static final ACTION_CAMERA:Ljava/lang/String; = "Camera"

.field public static final ACTION_LOCATION:Ljava/lang/String; = "Location"

.field public static final ACTION_STORAGE:Ljava/lang/String; = "Storage"

.field public static final CAMERA:[Ljava/lang/String;

.field public static final LOCATION:[Ljava/lang/String;

.field public static final STORAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebPermissions;->CAMERA:[Ljava/lang/String;

    .line 36
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    .line 39
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
