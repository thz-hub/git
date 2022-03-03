.class final Lnet/sf/json/processors/JsonBeanProcessorMatcher$DefaultJsonBeanProcessorMatcher;
.super Lnet/sf/json/processors/JsonBeanProcessorMatcher;
.source "JsonBeanProcessorMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/processors/JsonBeanProcessorMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultJsonBeanProcessorMatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lnet/sf/json/processors/JsonBeanProcessorMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/processors/JsonBeanProcessorMatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/processors/JsonBeanProcessorMatcher$1;

    .line 42
    invoke-direct {p0}, Lnet/sf/json/processors/JsonBeanProcessorMatcher$DefaultJsonBeanProcessorMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "set"    # Ljava/util/Set;

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    return-object p1

    .line 47
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
