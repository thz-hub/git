.class public Lcom/just/agentweb/DefaultDownloadImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private isInstallDownloader:Z

.field protected mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mAgentWebUIController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/download/library/ResourceRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "permissionInterceptor"    # Lcom/just/agentweb/PermissionInterceptor;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 76
    iput-object p3, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebUIControllerByWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/download/library/DownloadImpl;->getInstance(Landroid/content/Context;)Lcom/download/library/DownloadImpl;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string v2, "implementation \'com.download.library:Downloader:x.x.x\'"

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z

    .line 88
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/DefaultDownloadImpl;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "permissionInterceptor"    # Lcom/just/agentweb/PermissionInterceptor;

    .line 244
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/just/agentweb/DefaultDownloadImpl;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)V

    return-object v0
.end method


# virtual methods
.method protected checkNeedPermission()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/just/agentweb/AgentWebUtils;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    sget-object v1, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_0
    return-object v0
.end method

.method protected createCallback(Ljava/lang/String;)Landroid/os/Handler$Callback;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl$3;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createResourceRequest(Ljava/lang/String;)Lcom/download/library/ResourceRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/download/library/DownloadImpl;->getInstance(Landroid/content/Context;)Lcom/download/library/DownloadImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/download/library/DownloadImpl;->with(Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/download/library/ResourceRequest;->setEnableIndicator(Z)Lcom/download/library/ResourceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/download/library/ResourceRequest;->autoOpenIgnoreMD5()Lcom/download/library/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected forceDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/download/library/ResourceRequest;

    .line 184
    .local v0, "resourceRequest":Lcom/download/library/ResourceRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/download/library/ResourceRequest;->setForceDownload(Z)Lcom/download/library/ResourceRequest;

    .line 185
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->performDownload(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/ActionActivity$PermissionListener;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl$2;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isForceRequest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/download/library/ResourceRequest;

    .line 176
    .local v0, "resourceRequest":Lcom/download/library/ResourceRequest;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/download/library/ResourceRequest;->getDownloadTask()Lcom/download/library/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/download/library/DownloadTask;->isForceDownload()Z

    move-result v1

    return v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .line 93
    move-object v8, p0

    iget-boolean v0, v8, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable start download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; implementation \'com.download.library:Downloader:x.x.x\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_0
    move-object v9, p1

    sget-object v10, Lcom/just/agentweb/DefaultDownloadImpl;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/just/agentweb/DefaultDownloadImpl$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/just/agentweb/DefaultDownloadImpl$1;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method protected onDownloadStartInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .line 106
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    if-eqz v0, :cond_1

    .line 110
    sget-object v1, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    const-string v2, "download"

    invoke-interface {v0, p1, v1, v2}, Lcom/just/agentweb/PermissionInterceptor;->intercept(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->createResourceRequest(Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    move-result-object v0

    .line 115
    .local v0, "resourceRequest":Lcom/download/library/ResourceRequest;
    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/just/agentweb/Action;->createPermissionsAction([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object v2

    .line 122
    .local v2, "mAction":Lcom/just/agentweb/Action;
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/ActionActivity$PermissionListener;

    move-result-object v3

    invoke-static {v3}, Lcom/just/agentweb/ActionActivity;->setPermissionListener(Lcom/just/agentweb/ActionActivity$PermissionListener;)V

    .line 123
    iget-object v3, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/just/agentweb/ActionActivity;->start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    .line 125
    .end local v1    # "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "mAction":Lcom/just/agentweb/Action;
    :goto_0
    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    .line 128
    :goto_1
    return-void

    .line 107
    .end local v0    # "resourceRequest":Lcom/download/library/ResourceRequest;
    :cond_4
    :goto_2
    return-void
.end method

.method protected performDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 211
    :try_start_0
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/download/library/DownloadImpl;->getInstance(Landroid/content/Context;)Lcom/download/library/DownloadImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/download/library/DownloadImpl;->exist(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/download/library/DownloadImpl;->getInstance(Landroid/content/Context;)Lcom/download/library/DownloadImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/download/library/DownloadImpl;->exist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 216
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget v2, Lcom/just/agentweb/R$string;->agentweb_download_task_has_been_exist:I

    .line 217
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preDownload"

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/AbsAgentWebUIController;->onShowMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/download/library/ResourceRequest;

    .line 222
    .local v0, "resourceRequest":Lcom/download/library/ResourceRequest;
    const-string v1, "Cookie"

    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/download/library/ResourceRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    .line 223
    invoke-virtual {p0, v0}, Lcom/just/agentweb/DefaultDownloadImpl;->taskEnqueue(Lcom/download/library/ResourceRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "resourceRequest":Lcom/download/library/ResourceRequest;
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "ignore":Ljava/lang/Throwable;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    .end local v0    # "ignore":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method

.method protected preDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->isForceRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->checkNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->showDialog(Ljava/lang/String;)V

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->performDownload(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected showDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    move-object v2, v0

    .local v2, "mAgentWebUIController":Lcom/just/agentweb/AbsAgentWebUIController;
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->createCallback(Ljava/lang/String;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/just/agentweb/AbsAgentWebUIController;->onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 197
    :cond_1
    return-void

    .line 191
    .end local v2    # "mAgentWebUIController":Lcom/just/agentweb/AbsAgentWebUIController;
    :cond_2
    :goto_0
    return-void
.end method

.method protected taskEnqueue(Lcom/download/library/ResourceRequest;)V
    .locals 1
    .param p1, "resourceRequest"    # Lcom/download/library/ResourceRequest;

    .line 232
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$4;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultDownloadImpl$4;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;)V

    invoke-virtual {p1, v0}, Lcom/download/library/ResourceRequest;->enqueue(Lcom/download/library/DownloadListenerAdapter;)V

    .line 239
    return-void
.end method
