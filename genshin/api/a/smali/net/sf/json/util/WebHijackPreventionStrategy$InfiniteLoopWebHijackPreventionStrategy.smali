.class final Lnet/sf/json/util/WebHijackPreventionStrategy$InfiniteLoopWebHijackPreventionStrategy;
.super Lnet/sf/json/util/WebHijackPreventionStrategy;
.source "WebHijackPreventionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/WebHijackPreventionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfiniteLoopWebHijackPreventionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lnet/sf/json/util/WebHijackPreventionStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/WebHijackPreventionStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/WebHijackPreventionStrategy$1;

    .line 50
    invoke-direct {p0}, Lnet/sf/json/util/WebHijackPreventionStrategy$InfiniteLoopWebHijackPreventionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public protect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "while(1);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
