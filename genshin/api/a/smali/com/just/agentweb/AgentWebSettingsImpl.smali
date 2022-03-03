.class public Lcom/just/agentweb/AgentWebSettingsImpl;
.super Lcom/just/agentweb/AbsAgentWebSettings;
.source "AgentWebSettingsImpl.java"


# instance fields
.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/just/agentweb/AbsAgentWebSettings;-><init>()V

    return-void
.end method

.method private getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 51
    :cond_0
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 52
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 55
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V
    .locals 0
    .param p1, "agentWeb"    # Lcom/just/agentweb/AgentWeb;

    .line 35
    iput-object p1, p0, Lcom/just/agentweb/AgentWebSettingsImpl;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 36
    return-void
.end method

.method public setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "downloadListener"    # Landroid/webkit/DownloadListener;

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/just/agentweb/AgentWebSettingsImpl;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWebSettingsImpl;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v1}, Lcom/just/agentweb/AgentWeb;->getPermissionInterceptor()Lcom/just/agentweb/PermissionInterceptor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/just/agentweb/DefaultDownloadImpl;->create(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/DefaultDownloadImpl;

    move-result-object p2

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/AbsAgentWebSettings;->setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;

    move-result-object v0

    return-object v0
.end method
