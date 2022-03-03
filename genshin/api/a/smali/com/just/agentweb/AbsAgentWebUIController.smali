.class public abstract Lcom/just/agentweb/AbsAgentWebUIController;
.super Ljava/lang/Object;
.source "AbsAgentWebUIController.java"


# static fields
.field public static HAS_DESIGN_LIB:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

.field private volatile mIsBindWebParent:Z

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z

    .line 44
    :try_start_0
    const-string v1, "com.google.android.material.snackbar.Snackbar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    const-string v1, "com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    const/4 v1, 0x1

    sput-boolean v1, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    .local v1, "ignore":Ljava/lang/Throwable;
    sput-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z

    .line 50
    .end local v1    # "ignore":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
.end method

.method final declared-synchronized bindWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1
    .param p1, "webParentLayout"    # Lcom/just/agentweb/WebParentLayout;
    .param p2, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    .line 67
    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    .line 68
    iput-object p2, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mActivity:Landroid/app/Activity;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/AbsAgentWebUIController;->bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local p0    # "this":Lcom/just/agentweb/AbsAgentWebUIController;
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local p1    # "webParentLayout":Lcom/just/agentweb/WebParentLayout;
    .end local p2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected create()Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 1

    .line 53
    sget-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/just/agentweb/DefaultDesignUIController;

    invoke-direct {v0}, Lcom/just/agentweb/DefaultDesignUIController;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/just/agentweb/DefaultUIController;

    invoke-direct {v0}, Lcom/just/agentweb/DefaultUIController;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected getDelegate()Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

    .line 58
    .local v0, "mAgentWebUIController":Lcom/just/agentweb/AbsAgentWebUIController;
    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/just/agentweb/AbsAgentWebUIController;->create()Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

    .line 61
    :cond_0
    return-object v0
.end method

.method public abstract onCancelLoading()V
.end method

.method public abstract onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
.end method

.method public abstract onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end method

.method public abstract onLoading(Ljava/lang/String;)V
.end method

.method public abstract onMainFrameError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onOpenPagePrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onShowMainFrame()V
.end method

.method public abstract onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected toDismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 77
    :cond_0
    return-void
.end method

.method protected toShowDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 83
    :cond_0
    return-void
.end method
