.class public Lcom/just/agentweb/DefaultWebClient$Builder;
.super Ljava/lang/Object;
.source "DefaultWebClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClient:Landroid/webkit/WebViewClient;

.field private mIsInterceptUnkownScheme:Z

.field private mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

.field private mUrlHandleWays:I

.field private mWebClientHelper:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mIsInterceptUnkownScheme:Z

    return-void
.end method

.method static synthetic access$000(Lcom/just/agentweb/DefaultWebClient$Builder;)Landroid/webkit/WebViewClient;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/just/agentweb/DefaultWebClient$Builder;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/just/agentweb/DefaultWebClient$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/just/agentweb/DefaultWebClient$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mWebClientHelper:Z

    return v0
.end method

.method static synthetic access$400(Lcom/just/agentweb/DefaultWebClient$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mIsInterceptUnkownScheme:Z

    return v0
.end method

.method static synthetic access$500(Lcom/just/agentweb/DefaultWebClient$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultWebClient$Builder;

    .line 594
    iget v0, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mUrlHandleWays:I

    return v0
.end method


# virtual methods
.method public build()Lcom/just/agentweb/DefaultWebClient;
    .locals 1

    .line 639
    new-instance v0, Lcom/just/agentweb/DefaultWebClient;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultWebClient;-><init>(Lcom/just/agentweb/DefaultWebClient$Builder;)V

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 604
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mActivity:Landroid/app/Activity;

    .line 605
    return-object p0
.end method

.method public setClient(Landroid/webkit/WebViewClient;)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 609
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mClient:Landroid/webkit/WebViewClient;

    .line 610
    return-object p0
.end method

.method public setInterceptUnkownUrl(Z)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "interceptUnkownScheme"    # Z

    .line 629
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mIsInterceptUnkownScheme:Z

    .line 630
    return-object p0
.end method

.method public setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "permissionInterceptor"    # Lcom/just/agentweb/PermissionInterceptor;

    .line 619
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 620
    return-object p0
.end method

.method public setUrlHandleWays(I)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "urlHandleWays"    # I

    .line 634
    iput p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mUrlHandleWays:I

    .line 635
    return-object p0
.end method

.method public setWebClientHelper(Z)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "webClientHelper"    # Z

    .line 614
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mWebClientHelper:Z

    .line 615
    return-object p0
.end method

.method public setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/DefaultWebClient$Builder;
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 624
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$Builder;->mWebView:Landroid/webkit/WebView;

    .line 625
    return-object p0
.end method
