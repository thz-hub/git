.class final Lnet/sf/json/util/CycleDetectionStrategy$StrictCycleDetectionStrategy;
.super Lnet/sf/json/util/CycleDetectionStrategy;
.source "CycleDetectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/CycleDetectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrictCycleDetectionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/CycleDetectionStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/CycleDetectionStrategy$1;

    .line 91
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy$StrictCycleDetectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 2
    .param p1, "reference"    # Ljava/lang/Object;

    .line 93
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "There is a cycle in the hierarchy!"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "reference"    # Ljava/lang/Object;

    .line 97
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "There is a cycle in the hierarchy!"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
