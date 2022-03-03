.class public Lcom/just/agentweb/DefaultDesignUIController;
.super Lcom/just/agentweb/DefaultUIController;
.source "DefaultDesignUIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;
    }
.end annotation


# static fields
.field private static final RECYCLERVIEW_ID:I = 0x1001


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/just/agentweb/DefaultUIController;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultDesignUIController;

    .line 44
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultDesignUIController;

    .line 44
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/just/agentweb/DefaultDesignUIController;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultDesignUIController;

    .line 44
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method private getAdapter([Ljava/lang/String;Landroid/os/Handler$Callback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "ways"    # [Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 131
    new-instance v0, Lcom/just/agentweb/DefaultDesignUIController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/just/agentweb/DefaultDesignUIController$2;-><init>(Lcom/just/agentweb/DefaultDesignUIController;[Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method private onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "message"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    .line 59
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    return-void

    .line 68
    :cond_1
    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 72
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/just/agentweb/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 68
    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v9}, Lcom/just/agentweb/AgentWebUtils;->show(Landroid/view/View;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method private showChooserInternal(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "ways"    # [Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Handler$Callback;

    .line 100
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 104
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ways:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/16 v2, 0x1001

    if-nez v0, :cond_2

    .line 111
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 112
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "mRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 115
    iget-object v3, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 117
    .end local v0    # "mRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .restart local v0    # "mRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultDesignUIController;->getAdapter([Ljava/lang/String;Landroid/os/Handler$Callback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 119
    iget-object v2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v3, Lcom/just/agentweb/DefaultDesignUIController$1;

    invoke-direct {v3, p0, p4}, Lcom/just/agentweb/DefaultDesignUIController$1;-><init>(Lcom/just/agentweb/DefaultDesignUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 127
    iget-object v2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 128
    return-void

    .line 101
    .end local v0    # "mRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1
    .param p1, "webParentLayout"    # Lcom/just/agentweb/WebParentLayout;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 179
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/DefaultUIController;->bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    .line 180
    iput-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    .line 181
    iput-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    .line 182
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 183
    return-void
.end method

.method public onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 95
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/DefaultUIController;->onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 96
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/just/agentweb/DefaultDesignUIController;->onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/DefaultUIController;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 86
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "jsPromptResult"    # Landroid/webkit/JsPromptResult;

    .line 174
    invoke-super/range {p0 .. p5}, Lcom/just/agentweb/DefaultUIController;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    .line 175
    return-void
.end method

.method public onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "ways"    # [Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Handler$Callback;

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/just/agentweb/DefaultDesignUIController;->showChooserInternal(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 91
    return-void
.end method

.method public onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    return-void

    .line 196
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/just/agentweb/DefaultDesignUIController;->onJsAlertInternal(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 200
    return-void

    .line 189
    :cond_3
    :goto_0
    return-void
.end method
