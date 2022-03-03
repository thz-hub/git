.class public Lcom/just/agentweb/DefaultUIController;
.super Lcom/just/agentweb/AbsAgentWebUIController;
.source "DefaultUIController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mAskOpenOtherAppDialog:Landroidx/appcompat/app/AlertDialog;

.field protected mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

.field private mJsPromptResult:Landroid/webkit/JsPromptResult;

.field private mJsResult:Landroid/webkit/JsResult;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPromptDialog:Landroidx/appcompat/app/AlertDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/just/agentweb/AbsAgentWebUIController;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    .line 44
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    .line 45
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/AlertDialog;

    .line 48
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/AlertDialog;

    .line 50
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsResult;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultUIController;

    .line 39
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/just/agentweb/DefaultUIController;
    .param p1, "x1"    # Landroid/webkit/JsResult;

    .line 39
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultUIController;

    .line 39
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/just/agentweb/DefaultUIController;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/just/agentweb/DefaultUIController;

    .line 39
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method private onForceDownloadAlertInternal(Landroid/os/Handler$Callback;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 113
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    .local v0, "mAlertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/just/agentweb/R$string;->agentweb_tips:I

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/just/agentweb/R$string;->agentweb_honeycomblow:I

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/just/agentweb/R$string;->agentweb_download:I

    .line 125
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/just/agentweb/DefaultUIController$4;

    invoke-direct {v4, p0, p1}, Lcom/just/agentweb/DefaultUIController$4;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/just/agentweb/R$string;->agentweb_cancel:I

    .line 136
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/just/agentweb/DefaultUIController$3;

    invoke-direct {v4, p0}, Lcom/just/agentweb/DefaultUIController$3;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 146
    return-void

    .line 114
    .end local v0    # "mAlertDialog":Landroidx/appcompat/app/AlertDialog;
    :cond_2
    :goto_0
    return-void
.end method

.method private onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "jsResult"    # Landroid/webkit/JsResult;

    .line 184
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    .line 186
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    .line 193
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_2

    .line 198
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/just/agentweb/DefaultUIController$9;

    invoke-direct {v3, p0}, Lcom/just/agentweb/DefaultUIController$9;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 200
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/just/agentweb/DefaultUIController$8;

    invoke-direct {v3, p0}, Lcom/just/agentweb/DefaultUIController$8;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 207
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/just/agentweb/DefaultUIController$7;

    invoke-direct {v2, p0}, Lcom/just/agentweb/DefaultUIController$7;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 217
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    .line 229
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 230
    return-void

    .line 187
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    .line 188
    return-void
.end method

.method private onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "jsPromptResult"    # Landroid/webkit/JsPromptResult;

    .line 234
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    .line 235
    .local v0, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p3}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 242
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_2

    .line 246
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/just/agentweb/DefaultUIController$12;

    invoke-direct {v4, p0}, Lcom/just/agentweb/DefaultUIController$12;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 251
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/just/agentweb/DefaultUIController$11;

    invoke-direct {v4, p0, v1}, Lcom/just/agentweb/DefaultUIController$11;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/widget/EditText;)V

    .line 258
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/just/agentweb/DefaultUIController$10;

    invoke-direct {v3, p0}, Lcom/just/agentweb/DefaultUIController$10;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 269
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/AlertDialog;

    .line 278
    .end local v1    # "et":Landroid/widget/EditText;
    :cond_2
    iput-object p3, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    .line 279
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 280
    return-void

    .line 236
    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 237
    return-void
.end method

.method private showChooserInternal([Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 4
    .param p1, "ways"    # [Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 150
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 154
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    return-void

    .line 158
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    new-instance v3, Lcom/just/agentweb/DefaultUIController$6;

    invoke-direct {v3, p0, p2}, Lcom/just/agentweb/DefaultUIController$6;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 159
    invoke-virtual {v0, p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/just/agentweb/DefaultUIController$5;

    invoke-direct {v2, p0, p2}, Lcom/just/agentweb/DefaultUIController$5;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 171
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 180
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 181
    return-void

    .line 151
    :cond_2
    :goto_0
    return-void
.end method

.method private toCancelJsresult(Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsResult;

    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1
    .param p1, "webParentLayout"    # Lcom/just/agentweb/WebParentLayout;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 363
    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    .line 364
    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    .line 365
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    .line 367
    return-void
.end method

.method public onCancelLoading()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 331
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 338
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 339
    return-void

    .line 328
    :cond_3
    :goto_0
    return-void
.end method

.method public onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 108
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->onForceDownloadAlertInternal(Landroid/os/Handler$Callback;)V

    .line 109
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/just/agentweb/AgentWebUtils;->toastShowShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    .line 98
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultUIController;->onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 99
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "jsPromptResult"    # Landroid/webkit/JsPromptResult;

    .line 284
    invoke-direct {p0, p3, p4, p5}, Lcom/just/agentweb/DefaultUIController;->onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    .line 285
    return-void
.end method

.method public onLoading(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 310
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 315
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 318
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 319
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 322
    return-void

    .line 307
    :cond_3
    :goto_0
    return-void
.end method

.method public onMainFrameError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWebParentLayout onMainFrameError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->showPageMainFrameError()V

    .line 294
    :cond_0
    return-void
.end method

.method public onOpenPagePrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .line 59
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->TAG:Ljava/lang/String;

    const-string v1, "onOpenPagePrompt"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    .local v1, "mActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 65
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/just/agentweb/R$string;->agentweb_leave_app_and_go_other_page:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 73
    invoke-static {v1}, Lcom/just/agentweb/AgentWebUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/just/agentweb/R$string;->agentweb_tips:I

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/just/agentweb/DefaultUIController$2;

    invoke-direct {v3, p0, p3}, Lcom/just/agentweb/DefaultUIController$2;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 75
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/just/agentweb/R$string;->agentweb_leave:I

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/just/agentweb/DefaultUIController$1;

    invoke-direct {v3, p0, p3}, Lcom/just/agentweb/DefaultUIController$1;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/AlertDialog;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 94
    return-void

    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method public onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "permissionType"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 352
    return-void
.end method

.method public onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "ways"    # [Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Handler$Callback;

    .line 103
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultUIController;->showChooserInternal([Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 104
    return-void
.end method

.method public onShowMainFrame()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->hideErrorLayout()V

    .line 301
    :cond_0
    return-void
.end method

.method public onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWebUtils;->toastShowShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    return-void
.end method
