.class public abstract Lnet/sf/json/util/PropertyExclusionClassMatcher;
.super Ljava/lang/Object;
.source "PropertyExclusionClassMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/util/PropertyExclusionClassMatcher$DefaultPropertyExclusionClassMatcher;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/sf/json/util/PropertyExclusionClassMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lnet/sf/json/util/PropertyExclusionClassMatcher$DefaultPropertyExclusionClassMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/util/PropertyExclusionClassMatcher$DefaultPropertyExclusionClassMatcher;-><init>(Lnet/sf/json/util/PropertyExclusionClassMatcher$1;)V

    sput-object v0, Lnet/sf/json/util/PropertyExclusionClassMatcher;->DEFAULT:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
.end method
