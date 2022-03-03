.class final Lnet/sf/json/util/CycleDetectionStrategy$LenientCycleDetectionStrategy;
.super Lnet/sf/json/util/CycleDetectionStrategy;
.source "CycleDetectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/CycleDetectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LenientCycleDetectionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/CycleDetectionStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/CycleDetectionStrategy$1;

    .line 65
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy$LenientCycleDetectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "reference"    # Ljava/lang/Object;

    .line 67
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "reference"    # Ljava/lang/Object;

    .line 71
    new-instance v0, Lnet/sf/json/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v0
.end method
