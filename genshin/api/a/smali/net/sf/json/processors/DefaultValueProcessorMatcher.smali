.class public abstract Lnet/sf/json/processors/DefaultValueProcessorMatcher;
.super Ljava/lang/Object;
.source "DefaultValueProcessorMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/processors/DefaultValueProcessorMatcher$DefaultDefaultValueProcessorMatcher;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/sf/json/processors/DefaultValueProcessorMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lnet/sf/json/processors/DefaultValueProcessorMatcher$DefaultDefaultValueProcessorMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/processors/DefaultValueProcessorMatcher$DefaultDefaultValueProcessorMatcher;-><init>(Lnet/sf/json/processors/DefaultValueProcessorMatcher$1;)V

    sput-object v0, Lnet/sf/json/processors/DefaultValueProcessorMatcher;->DEFAULT:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

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
