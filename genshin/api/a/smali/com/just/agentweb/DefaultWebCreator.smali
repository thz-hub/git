.class public Lcom/just/agentweb/DefaultWebCreator;
.super Ljava/lang/Object;
.source "DefaultWebCreator.java"

# interfaces
.implements Lcom/just/agentweb/WebCreator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

.field private mColor:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHeight:I

.field private mIWebLayout:Lcom/just/agentweb/IWebLayout;

.field private mIndex:I

.field private mIsCreated:Z

.field private mIsNeedDefaultProgress:Z

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mProgressView:Lcom/just/agentweb/BaseIndicatorView;

.field private mTargetProgress:Landroid/view/View;

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/just/agentweb/DefaultWebCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/DefaultWebCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IIILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "index"    # I
    .param p5, "color"    # I
    .param p6, "mHeight"    # I
    .param p7, "webView"    # Landroid/webkit/WebView;
    .param p8, "webLayout"    # Lcom/just/agentweb/IWebLayout;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 53
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 54
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 79
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 80
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 81
    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 82
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 83
    iput p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    .line 84
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 85
    iput p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    .line 86
    iput-object p7, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 87
    iput-object p8, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "index"    # I
    .param p5, "webView"    # Landroid/webkit/WebView;
    .param p6, "webLayout"    # Lcom/just/agentweb/IWebLayout;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 53
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 54
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 101
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 102
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 103
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 104
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 105
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 106
    iput-object p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 107
    iput-object p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILcom/just/agentweb/BaseIndicatorView;Landroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "index"    # I
    .param p5, "progressView"    # Lcom/just/agentweb/BaseIndicatorView;
    .param p6, "webView"    # Landroid/webkit/WebView;
    .param p7, "webLayout"    # Lcom/just/agentweb/IWebLayout;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 53
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 54
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 122
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 123
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 124
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 125
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 126
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 127
    iput-object p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    .line 128
    iput-object p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 129
    iput-object p7, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    .line 130
    return-void
.end method

.method private createLayout()Landroid/view/ViewGroup;
    .locals 12

    .line 199
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 200
    .local v0, "mActivity":Landroid/app/Activity;
    new-instance v1, Lcom/just/agentweb/WebParentLayout;

    invoke-direct {v1, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;)V

    .line 201
    .local v1, "mFrameLayout":Lcom/just/agentweb/WebParentLayout;
    sget v2, Lcom/just/agentweb/R$id;->web_parent_layout_id:I

    invoke-virtual {v1, v2}, Lcom/just/agentweb/WebParentLayout;->setId(I)V

    .line 202
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/just/agentweb/WebParentLayout;->setBackgroundColor(I)V

    .line 203
    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createWebView()Landroid/webkit/WebView;

    move-result-object v3

    iput-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->webLayout()Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "target":Landroid/view/View;
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v4, "mLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v3, v4}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Lcom/just/agentweb/WebParentLayout;->bindWebView(Landroid/webkit/WebView;)V

    .line 207
    sget-object v5, Lcom/just/agentweb/DefaultWebCreator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  instanceof  AgentWebView:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    instance-of v7, v7, Lcom/just/agentweb/AgentWebView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    instance-of v5, v5, Lcom/just/agentweb/AgentWebView;

    if-eqz v5, :cond_1

    .line 209
    const/4 v5, 0x2

    iput v5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 211
    :cond_1
    new-instance v5, Landroid/view/ViewStub;

    invoke-direct {v5, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 212
    .local v5, "mViewStub":Landroid/view/ViewStub;
    sget v6, Lcom/just/agentweb/R$id;->mainframe_error_viewsub_id:I

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setId(I)V

    .line 213
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-boolean v6, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_4

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v8, Lcom/just/agentweb/WebIndicator;

    invoke-direct {v8, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;)V

    .line 217
    .local v8, "mWebIndicator":Lcom/just/agentweb/WebIndicator;
    iget v9, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    if-lez v9, :cond_2

    .line 218
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    iget v11, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    int-to-float v11, v11

    invoke-static {v0, v11}, Lcom/just/agentweb/AgentWebUtils;->dp2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v6, v9

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {v8}, Lcom/just/agentweb/WebIndicator;->offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 222
    :goto_1
    iget v9, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    if-eq v9, v2, :cond_3

    .line 223
    invoke-virtual {v8, v9}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    .line 225
    :cond_3
    const/16 v2, 0x30

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 226
    iput-object v8, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    move-object v2, v8

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v6}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v8, v7}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "mWebIndicator":Lcom/just/agentweb/WebIndicator;
    goto :goto_2

    .line 228
    :cond_4
    if-nez v6, :cond_5

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    if-eqz v2, :cond_5

    .line 229
    iput-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2}, Lcom/just/agentweb/BaseIndicatorView;->offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    invoke-virtual {v2, v7}, Lcom/just/agentweb/BaseIndicatorView;->setVisibility(I)V

    goto :goto_3

    .line 228
    :cond_5
    :goto_2
    nop

    .line 232
    :goto_3
    return-object v1
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 3

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "mWebView":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 253
    const/4 v1, 0x3

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    goto :goto_0

    .line 254
    :cond_0
    sget-boolean v1, Lcom/just/agentweb/AgentWebConfig;->IS_KITKAT_OR_BELOW_KITKAT:Z

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Lcom/just/agentweb/AgentWebView;

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 256
    const/4 v1, 0x2

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    goto :goto_0

    .line 258
    :cond_1
    new-instance v1, Lcom/just/agentweb/LollipopFixedWebView;

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/just/agentweb/LollipopFixedWebView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 259
    const/4 v1, 0x1

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 261
    :goto_0
    return-object v0
.end method

.method private webLayout()Landroid/view/View;
    .locals 3

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "mWebView":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v1}, Lcom/just/agentweb/IWebLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v1}, Lcom/just/agentweb/IWebLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 241
    sget-object v1, Lcom/just/agentweb/DefaultWebCreator;->TAG:Ljava/lang/String;

    const-string v2, "add webview"

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 245
    :goto_0
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 246
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v1}, Lcom/just/agentweb/IWebLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public create()Lcom/just/agentweb/DefaultWebCreator;
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    if-eqz v0, :cond_0

    .line 153
    return-object p0

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 159
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/just/agentweb/ProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :try_start_0
    invoke-static {v1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    .line 164
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 169
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 170
    .local v0, "mViewGroup":Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    move-object v0, v1

    .line 172
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 174
    :cond_2
    iget v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 177
    :cond_3
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :goto_1
    return-object p0
.end method

.method public bridge synthetic create()Lcom/just/agentweb/WebCreator;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/just/agentweb/DefaultWebCreator;->create()Lcom/just/agentweb/DefaultWebCreator;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTargetProgress()Landroid/view/View;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mTargetProgress:Landroid/view/View;

    return-object v0
.end method

.method public getWebParentLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewType()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    return v0
.end method

.method public offer()Lcom/just/agentweb/BaseIndicatorSpec;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    return-object v0
.end method

.method public setTargetProgress(Landroid/view/View;)V
    .locals 0
    .param p1, "targetProgress"    # Landroid/view/View;

    .line 147
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mTargetProgress:Landroid/view/View;

    .line 148
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 134
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 135
    return-void
.end method
