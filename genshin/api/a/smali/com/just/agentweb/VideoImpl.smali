.class public Lcom/just/agentweb/VideoImpl;
.super Ljava/lang/Object;
.source "VideoImpl.java"

# interfaces
.implements Lcom/just/agentweb/IVideo;
.implements Lcom/just/agentweb/EventInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoiveParentView:Landroid/view/ViewGroup;

.field private mMoiveView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/just/agentweb/VideoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/VideoImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    .line 44
    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    .line 52
    return-void
.end method


# virtual methods
.method public event()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/just/agentweb/VideoImpl;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/just/agentweb/VideoImpl;->onHideCustomView()V

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoState()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHideCustomView()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 102
    .local v1, "mPair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 103
    .end local v1    # "mPair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_6

    .line 115
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 117
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 121
    :cond_7
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 57
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 62
    .local v2, "mWindow":Landroid/view/Window;
    const/4 v3, 0x0

    .line 64
    .local v3, "mPair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 65
    new-instance v4, Landroidx/core/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 66
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 67
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 70
    new-instance v4, Landroidx/core/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 71
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 72
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 75
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 76
    return-void

    .line 78
    :cond_3
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_4

    .line 79
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 81
    :cond_4
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-nez v4, :cond_5

    .line 82
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 83
    .local v4, "mDecorView":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    .line 84
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 85
    iget-object v5, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    .end local v4    # "mDecorView":Landroid/widget/FrameLayout;
    :cond_5
    iput-object p2, p0, Lcom/just/agentweb/VideoImpl;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 88
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    return-void

    .line 58
    .end local v2    # "mWindow":Landroid/view/Window;
    .end local v3    # "mPair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    :goto_0
    return-void
.end method
