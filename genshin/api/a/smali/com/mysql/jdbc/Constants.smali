.class public Lcom/mysql/jdbc/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final MILLIS_I18N:Ljava/lang/String;

.field public static final SLASH_STAR_SPACE_AS_BYTES:[B

.field public static final SPACE_STAR_SLASH_SPACE_AS_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    .line 38
    const-string v0, "Milliseconds"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x2at
        0x20t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x2at
        0x2ft
        0x20t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method
