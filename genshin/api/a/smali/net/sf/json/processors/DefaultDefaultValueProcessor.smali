.class public Lnet/sf/json/processors/DefaultDefaultValueProcessor;
.super Ljava/lang/Object;
.source "DefaultDefaultValueProcessor.java"

# interfaces
.implements Lnet/sf/json/processors/DefaultValueProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 30
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    return-object v0

    .line 32
    :cond_0
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 38
    :cond_2
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 40
    :cond_3
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    const-string v0, ""

    return-object v0

    .line 43
    :cond_4
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    return-object v0
.end method
