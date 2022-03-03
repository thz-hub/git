.class public Lnet/sf/json/filters/OrPropertyFilter;
.super Ljava/lang/Object;
.source "OrPropertyFilter.java"

# interfaces
.implements Lnet/sf/json/util/PropertyFilter;


# instance fields
.field private filter1:Lnet/sf/json/util/PropertyFilter;

.field private filter2:Lnet/sf/json/util/PropertyFilter;


# direct methods
.method public constructor <init>(Lnet/sf/json/util/PropertyFilter;Lnet/sf/json/util/PropertyFilter;)V
    .locals 0
    .param p1, "filter1"    # Lnet/sf/json/util/PropertyFilter;
    .param p2, "filter2"    # Lnet/sf/json/util/PropertyFilter;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/sf/json/filters/OrPropertyFilter;->filter1:Lnet/sf/json/util/PropertyFilter;

    .line 30
    iput-object p2, p0, Lnet/sf/json/filters/OrPropertyFilter;->filter2:Lnet/sf/json/util/PropertyFilter;

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lnet/sf/json/filters/OrPropertyFilter;->filter1:Lnet/sf/json/util/PropertyFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sf/json/filters/OrPropertyFilter;->filter2:Lnet/sf/json/util/PropertyFilter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
