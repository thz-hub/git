.class public Lcom/just/agentweb/AgentWebView$AgentWebClient;
.super Lcom/just/agentweb/MiddlewareWebClientBase;
.source "AgentWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgentWebClient"
.end annotation


# instance fields
.field private mAgentWebView:Lcom/just/agentweb/AgentWebView;


# direct methods
.method private constructor <init>(Lcom/just/agentweb/AgentWebView;)V
    .locals 0
    .param p1, "agentWebView"    # Lcom/just/agentweb/AgentWebView;

    .line 260
    invoke-direct {p0}, Lcom/just/agentweb/MiddlewareWebClientBase;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/AgentWebView;Lcom/just/agentweb/AgentWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/just/agentweb/AgentWebView;
    .param p2, "x1"    # Lcom/just/agentweb/AgentWebView$1;

    .line 256
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWebView$AgentWebClient;-><init>(Lcom/just/agentweb/AgentWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 283
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/MiddlewareWebClientBase;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$800(Lcom/just/agentweb/AgentWebView;)Lcom/just/agentweb/AgentWebView$FixedOnReceivedTitle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/just/agentweb/AgentWebView$FixedOnReceivedTitle;->onPageFinished(Landroid/webkit/WebView;)V

    .line 285
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/just/agentweb/AgentWebView;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished.url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/MiddlewareWebClientBase;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 268
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$300(Lcom/just/agentweb/AgentWebView;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$400(Lcom/just/agentweb/AgentWebView;)V

    .line 270
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/just/agentweb/AgentWebView;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectJavaScript, onPageStarted.url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$600(Lcom/just/agentweb/AgentWebView;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$700(Lcom/just/agentweb/AgentWebView;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebView;->access$800(Lcom/just/agentweb/AgentWebView;)Lcom/just/agentweb/AgentWebView$FixedOnReceivedTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWebView$FixedOnReceivedTitle;->onPageStarted()V

    .line 278
    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$AgentWebClient;->mAgentWebView:Lcom/just/agentweb/AgentWebView;

    invoke-virtual {v0, p2}, Lcom/just/agentweb/AgentWebView;->fixedAccessibilityInjectorExceptionForOnPageFinished(Ljava/lang/String;)V

    .line 279
    return-void
.end method
