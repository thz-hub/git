.class public Lcom/just/agentweb/JsAccessEntraceImpl;
.super Lcom/just/agentweb/BaseJsAccessEntrace;
.source "JsAccessEntraceImpl.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 40
    invoke-direct {p0, p1}, Lcom/just/agentweb/BaseJsAccessEntrace;-><init>(Landroid/webkit/WebView;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/just/agentweb/JsAccessEntraceImpl;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/just/agentweb/JsAccessEntraceImpl;->mWebView:Landroid/webkit/WebView;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/webkit/WebView;)Lcom/just/agentweb/JsAccessEntraceImpl;
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .line 36
    new-instance v0, Lcom/just/agentweb/JsAccessEntraceImpl;

    invoke-direct {v0, p0}, Lcom/just/agentweb/JsAccessEntraceImpl;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private safeCallJs(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "valueCallback"    # Landroid/webkit/ValueCallback;

    .line 45
    iget-object v0, p0, Lcom/just/agentweb/JsAccessEntraceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/just/agentweb/JsAccessEntraceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/just/agentweb/JsAccessEntraceImpl$1;-><init>(Lcom/just/agentweb/JsAccessEntraceImpl;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method


# virtual methods
.method public callJs(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/JsAccessEntraceImpl;->safeCallJs(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/BaseJsAccessEntrace;->callJs(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 60
    return-void
.end method
