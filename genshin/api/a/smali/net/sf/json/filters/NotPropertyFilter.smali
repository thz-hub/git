.class public Lnet/sf/json/filters/NotPropertyFilter;
.super Ljava/lang/Object;
.source "NotPropertyFilter.java"

# interfaces
.implements Lnet/sf/json/util/PropertyFilter;


# instance fields
.field private filter:Lnet/sf/json/util/PropertyFilter;


# direct methods
.method public constructor <init>(Lnet/sf/json/util/PropertyFilter;)V
    .locals 0
    .param p1, "filter"    # Lnet/sf/json/util/PropertyFilter;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/sf/json/filters/NotPropertyFilter;->filter:Lnet/sf/json/util/PropertyFilter;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lnet/sf/json/filters/NotPropertyFilter;->filter:Lnet/sf/json/util/PropertyFilter;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2, p3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
