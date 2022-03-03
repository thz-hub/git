.class public Lcom/just/agentweb/DefaultChromeClient;
.super Lcom/just/agentweb/MiddlewareWebChromeBase;
.source "DefaultChromeClient.java"


# static fields
.field public static final ANDROID_WEBCHROMECLIENT_PATH:Ljava/lang/String; = "android.webkit.WebChromeClient"

.field public static final FROM_CODE_INTENTION:I = 0x18

.field public static final FROM_CODE_INTENTION_LOCATION:I = 0x60


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAgentWebUIController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field private mFileChooser:Ljava/lang/Object;

.field private mIVideo:Lcom/just/agentweb/IVideo;

.field private mIndicatorController:Lcom/just/agentweb/IndicatorController;

.field private mIsWrapper:Z

.field private mOrigin:Ljava/lang/String;

.field private mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

.field private mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/just/agentweb/IndicatorController;Landroid/webkit/WebChromeClient;Lcom/just/agentweb/IVideo;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "indicatorController"    # Lcom/just/agentweb/IndicatorController;
    .param p3, "chromeClient"    # Landroid/webkit/WebChromeClient;
    .param p4, "iVideo"    # Lcom/just/agentweb/IVideo;
    .param p5, "permissionInterceptor"    # Lcom/just/agentweb/PermissionInterceptor;
    .param p6, "webView"    # Landroid/webkit/WebView;

    .line 116
    invoke-direct {p0, p3}, Lcom/just/agentweb/MiddlewareWebChromeBase;-><init>(Landroid/webkit/WebChromeClient;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 57
    const-class v1, Lcom/just/agentweb/DefaultChromeClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    .line 85
    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 101
    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    .line 195
    new-instance v0, Lcom/just/agentweb/DefaultChromeClient$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultChromeClient$1;-><init>(Lcom/just/agentweb/DefaultChromeClient;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 117
    iput-object p2, p0, Lcom/just/agentweb/DefaultChromeClient;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    .line 118
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    .line 119
    iput-object p3, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 121
    iput-object p4, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    .line 122
    iput-object p5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 123
    iput-object p6, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p6}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebUIControllerByWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;

    .line 49
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;

    .line 49
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/just/agentweb/DefaultChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 0
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;
    .param p1, "x1"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;

    .line 49
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/just/agentweb/DefaultChromeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultChromeClient;

    .line 49
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 9
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 310
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/just/agentweb/AgentWebUtils;->showFileChooserCompat(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/ValueCallback;Ljava/lang/String;Landroid/os/Handler$Callback;)Z

    .line 323
    return-void

    .line 311
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method private onGeolocationPermissionsShowPromptInternal(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 170
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    const-string v4, "location"

    invoke-interface {v0, v2, v3, v4}, Lcom/just/agentweb/PermissionInterceptor;->intercept(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 177
    .local v0, "mActivity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 178
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 179
    return-void

    .line 181
    :cond_1
    const/4 v2, 0x0

    .line 182
    .local v2, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/just/agentweb/AgentWebUtils;->getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v4, "onGeolocationPermissionsShowPromptInternal:true"

    invoke-static {v3, v4}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v3, 0x1

    invoke-interface {p2, p1, v3, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 186
    :cond_2
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/just/agentweb/Action;->createPermissionsAction([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object v1

    .line 187
    .local v1, "mAction":Lcom/just/agentweb/Action;
    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Lcom/just/agentweb/Action;->setFromIntention(I)Lcom/just/agentweb/Action;

    .line 188
    iget-object v3, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    invoke-static {v3}, Lcom/just/agentweb/ActionActivity;->setPermissionListener(Lcom/just/agentweb/ActionActivity$PermissionListener;)V

    .line 189
    iput-object p2, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 190
    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    .line 191
    invoke-static {v0, v1}, Lcom/just/agentweb/ActionActivity;->start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    .line 193
    .end local v1    # "mAction":Lcom/just/agentweb/Action;
    :goto_0
    return-void
.end method

.method private openFileChooserAboveL(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 263
    .local p2, "valueCallbacks":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileChooserParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  getTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " accept:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  isCaptureEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 265
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/just/agentweb/AgentWebUtils;->showFileChooserCompat(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/ValueCallback;Ljava/lang/String;Landroid/os/Handler$Callback;)Z

    move-result v1

    return v1

    .line 266
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 327
    invoke-super {p0, p1}, Lcom/just/agentweb/MiddlewareWebChromeBase;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .line 246
    const-wide/16 v0, 0x2

    mul-long v0, v0, p7

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 247
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcom/just/agentweb/MiddlewareWebChromeBase;->onGeolocationPermissionsHidePrompt()V

    .line 161
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->onGeolocationPermissionsShowPromptInternal(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 167
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Lcom/just/agentweb/IVideo;->onHideCustomView()V

    .line 343
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 145
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 237
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 240
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 130
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/MiddlewareWebChromeBase;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 131
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2}, Lcom/just/agentweb/IndicatorController;->progress(Landroid/webkit/WebView;I)V

    .line 134
    :cond_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .line 251
    const-wide/16 v0, 0x2

    mul-long v0, v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 252
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 155
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/MiddlewareWebChromeBase;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 156
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .line 138
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/MiddlewareWebChromeBase;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 333
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0, p1, p2}, Lcom/just/agentweb/IVideo;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 257
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>=5.0"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/DefaultChromeClient;->openFileChooserAboveL(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser<3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "*/*"

    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 289
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>=4.1"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 291
    return-void
.end method
