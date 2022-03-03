.class public abstract Lnet/sf/json/util/WebHijackPreventionStrategy;
.super Ljava/lang/Object;
.source "WebHijackPreventionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/util/WebHijackPreventionStrategy$InfiniteLoopWebHijackPreventionStrategy;,
        Lnet/sf/json/util/WebHijackPreventionStrategy$CommentWebHijackPreventionStrategy;
    }
.end annotation


# static fields
.field public static final COMMENTS:Lnet/sf/json/util/WebHijackPreventionStrategy;

.field public static final INFINITE_LOOP:Lnet/sf/json/util/WebHijackPreventionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lnet/sf/json/util/WebHijackPreventionStrategy$CommentWebHijackPreventionStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/util/WebHijackPreventionStrategy$CommentWebHijackPreventionStrategy;-><init>(Lnet/sf/json/util/WebHijackPreventionStrategy$1;)V

    sput-object v0, Lnet/sf/json/util/WebHijackPreventionStrategy;->COMMENTS:Lnet/sf/json/util/WebHijackPreventionStrategy;

    .line 33
    new-instance v0, Lnet/sf/json/util/WebHijackPreventionStrategy$InfiniteLoopWebHijackPreventionStrategy;

    invoke-direct {v0, v1}, Lnet/sf/json/util/WebHijackPreventionStrategy$InfiniteLoopWebHijackPreventionStrategy;-><init>(Lnet/sf/json/util/WebHijackPreventionStrategy$1;)V

    sput-object v0, Lnet/sf/json/util/WebHijackPreventionStrategy;->INFINITE_LOOP:Lnet/sf/json/util/WebHijackPreventionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public abstract protect(Ljava/lang/String;)Ljava/lang/String;
.end method
