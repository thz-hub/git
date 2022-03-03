.class public Lnet/sf/json/filters/TruePropertyFilter;
.super Ljava/lang/Object;
.source "TruePropertyFilter.java"

# interfaces
.implements Lnet/sf/json/util/PropertyFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x1

    return v0
.end method
