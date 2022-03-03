.class Lcom/just/agentweb/DefaultWebClient$1;
.super Ljava/lang/Object;
.source "DefaultWebClient.java"

# interfaces
.implements Lcom/alipay/sdk/app/H5PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultWebClient;->isAlipay(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultWebClient;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultWebClient;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultWebClient;

    .line 405
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$1;->this$0:Lcom/just/agentweb/DefaultWebClient;

    iput-object p2, p0, Lcom/just/agentweb/DefaultWebClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResult(Lcom/alipay/sdk/util/H5PayResultModel;)V
    .locals 2
    .param p1, "result"    # Lcom/alipay/sdk/util/H5PayResultModel;

    .line 408
    invoke-virtual {p1}, Lcom/alipay/sdk/util/H5PayResultModel;->getReturnUrl()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    new-instance v1, Lcom/just/agentweb/DefaultWebClient$1$1;

    invoke-direct {v1, p0, v0}, Lcom/just/agentweb/DefaultWebClient$1$1;-><init>(Lcom/just/agentweb/DefaultWebClient$1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/just/agentweb/AgentWebUtils;->runInUiThread(Ljava/lang/Runnable;)V

    .line 417
    :cond_0
    return-void
.end method
