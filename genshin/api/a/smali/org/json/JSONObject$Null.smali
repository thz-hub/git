.class final Lorg/json/JSONObject$Null;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Null"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/json/JSONObject$1;

    .line 98
    invoke-direct {p0}, Lorg/json/JSONObject$Null;-><init>()V

    return-void
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 0

    .line 106
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 117
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "null"

    return-object v0
.end method
