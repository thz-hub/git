.class final Lnet/sf/json/util/CycleDetectionStrategy$LenientNoRefCycleDetectionStrategy;
.super Lnet/sf/json/util/CycleDetectionStrategy;
.source "CycleDetectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/CycleDetectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LenientNoRefCycleDetectionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/CycleDetectionStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/CycleDetectionStrategy$1;

    .line 81
    invoke-direct {p0}, Lnet/sf/json/util/CycleDetectionStrategy$LenientNoRefCycleDetectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "reference"    # Ljava/lang/Object;

    .line 83
    sget-object v0, Lnet/sf/json/util/CycleDetectionStrategy;->IGNORE_PROPERTY_ARR:Lnet/sf/json/JSONArray;

    return-object v0
.end method

.method public handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "reference"    # Ljava/lang/Object;

    .line 87
    sget-object v0, Lnet/sf/json/util/CycleDetectionStrategy;->IGNORE_PROPERTY_OBJ:Lnet/sf/json/JSONObject;

    return-object v0
.end method
