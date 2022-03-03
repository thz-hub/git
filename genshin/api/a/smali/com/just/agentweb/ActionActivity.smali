.class public final Lcom/just/agentweb/ActionActivity;
.super Landroid/app/Activity;
.source "ActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/ActionActivity$ChooserListener;,
        Lcom/just/agentweb/ActionActivity$PermissionListener;,
        Lcom/just/agentweb/ActionActivity$RationaleListener;
    }
.end annotation


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "KEY_ACTION"

.field public static final KEY_FILE_CHOOSER_INTENT:Ljava/lang/String; = "KEY_FILE_CHOOSER_INTENT"

.field public static final KEY_FROM_INTENTION:Ljava/lang/String; = "KEY_FROM_INTENTION"

.field public static final KEY_URI:Ljava/lang/String; = "KEY_URI"

.field public static final REQUEST_CODE:I = 0x254

.field private static final TAG:Ljava/lang/String;

.field private static mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

.field private static mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

.field private static mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;


# instance fields
.field private mAction:Lcom/just/agentweb/Action;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/just/agentweb/ActionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelAction()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 69
    sput-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 70
    sput-object v0, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    .line 71
    return-void
.end method

.method private chooserActionCallback(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 127
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v0, :cond_0

    .line 128
    const/16 v1, 0x254

    invoke-interface {v0, v1, p1, p2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 132
    return-void
.end method

.method private fetchFile(Lcom/just/agentweb/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/just/agentweb/Action;

    .line 99
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenFileChooser()V

    .line 103
    return-void
.end method

.method private permission(Lcom/just/agentweb/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/just/agentweb/Action;

    .line 142
    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 144
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 145
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    .line 146
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 147
    return-void

    .line 149
    :cond_0
    sget-object v1, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    if-eqz v1, :cond_3

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "rationale":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/just/agentweb/ActionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    .line 153
    if-eqz v1, :cond_1

    .line 154
    goto :goto_1

    .line 156
    .end local v4    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    :goto_1
    sget-object v3, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v3, v1, v4}, Lcom/just/agentweb/ActionActivity$RationaleListener;->onRationaleResult(ZLandroid/os/Bundle;)V

    .line 158
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    .line 159
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 160
    return-void

    .line 162
    .end local v1    # "rationale":Z
    :cond_3
    sget-object v1, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    if-eqz v1, :cond_4

    .line 163
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/just/agentweb/ActionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 165
    :cond_4
    return-void
.end method

.method private realOpenCamera()V
    .locals 6

    .line 171
    const/4 v0, 0x0

    const/16 v1, 0x254

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v3, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 175
    .local v3, "mFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 176
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 177
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 178
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 180
    :cond_1
    invoke-static {p0, v3}, Lcom/just/agentweb/AgentWebUtils;->getIntentCaptureCompat(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v4

    .line 182
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    .line 183
    invoke-virtual {p0, v4, v1}, Lcom/just/agentweb/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v3    # "mFile":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v3

    .line 185
    .local v3, "ignore":Ljava/lang/Throwable;
    sget-object v4, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v5, "\u627e\u4e0d\u5230\u7cfb\u7edf\u76f8\u673a"

    invoke-static {v4, v5}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v4, :cond_2

    .line 187
    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 189
    :cond_2
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 190
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .end local v3    # "ignore":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method

.method private realOpenFileChooser()V
    .locals 3

    .line 107
    :try_start_0
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_FILE_CHOOSER_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 112
    .local v0, "mIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->cancelAction()V

    .line 114
    return-void

    .line 116
    :cond_1
    const/16 v1, 0x254

    invoke-virtual {p0, v0, v1}, Lcom/just/agentweb/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u627e\u4e0d\u5230\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/just/agentweb/ActionActivity;->chooserActionCallback(ILandroid/content/Intent;)V

    .line 120
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method

.method private realOpenVideo()V
    .locals 6

    .line 198
    const/4 v0, 0x0

    const/16 v1, 0x254

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->createVideoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 202
    .local v3, "mFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 203
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 204
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 205
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 207
    :cond_1
    invoke-static {p0, v3}, Lcom/just/agentweb/AgentWebUtils;->getIntentVideoCompat(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v4

    .line 209
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    .line 210
    invoke-virtual {p0, v4, v1}, Lcom/just/agentweb/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v3    # "mFile":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v3

    .line 212
    .local v3, "ignore":Ljava/lang/Throwable;
    sget-object v4, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v5, "\u627e\u4e0d\u5230\u7cfb\u7edf\u76f8\u673a"

    invoke-static {v4, v5}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v4, :cond_2

    .line 214
    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 216
    :cond_2
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 217
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .end local v3    # "ignore":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method

.method public static setChooserListener(Lcom/just/agentweb/ActionActivity$ChooserListener;)V
    .locals 0
    .param p0, "chooserListener"    # Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 60
    sput-object p0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 61
    return-void
.end method

.method public static setPermissionListener(Lcom/just/agentweb/ActionActivity$PermissionListener;)V
    .locals 0
    .param p0, "permissionListener"    # Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 64
    sput-object p0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 65
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "action"    # Lcom/just/agentweb/Action;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/just/agentweb/ActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "KEY_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 136
    const/16 v0, 0x254

    if-ne p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    const-string v2, "KEY_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/just/agentweb/ActionActivity;->chooserActionCallback(ILandroid/content/Intent;)V

    .line 139
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    sget-object v0, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/just/agentweb/Action;

    iput-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    .line 82
    if-nez v1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->cancelAction()V

    .line 84
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 85
    return-void

    .line 87
    :cond_1
    invoke-virtual {v1}, Lcom/just/agentweb/Action;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 88
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-direct {p0, v1}, Lcom/just/agentweb/ActionActivity;->permission(Lcom/just/agentweb/Action;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {v1}, Lcom/just/agentweb/Action;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenCamera()V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {v1}, Lcom/just/agentweb/Action;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenVideo()V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-direct {p0, v1}, Lcom/just/agentweb/ActionActivity;->fetchFile(Lcom/just/agentweb/Action;)V

    .line 96
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 250
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 226
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {v1}, Lcom/just/agentweb/Action;->getFromIntention()I

    move-result v1

    const-string v2, "KEY_FROM_INTENTION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    sget-object v1, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    invoke-interface {v1, p2, p3, v0}, Lcom/just/agentweb/ActionActivity$PermissionListener;->onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V

    .line 231
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 232
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 233
    return-void
.end method
