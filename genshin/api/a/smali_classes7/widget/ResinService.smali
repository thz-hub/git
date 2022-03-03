.class public Lwidget/ResinService;
.super Landroid/app/Service;
.source "ResinService.java"


# instance fields
.field private context:Landroid/content/Context;

.field expCount:Ljava/lang/String;

.field expInfo1:Ljava/lang/String;

.field expInfo10:Ljava/lang/String;

.field expInfo2:Ljava/lang/String;

.field expInfo3:Ljava/lang/String;

.field expInfo4:Ljava/lang/String;

.field expInfo5:Ljava/lang/String;

.field expInfo6:Ljava/lang/String;

.field expInfo7:Ljava/lang/String;

.field expInfo8:Ljava/lang/String;

.field expInfo9:Ljava/lang/String;

.field expeditionImageId1:I

.field expeditionImageId2:I

.field expeditionImageId3:I

.field expeditionImageId4:I

.field expeditionImageId5:I

.field lastAppVertion:Ljava/lang/String;

.field notice:Ljava/lang/String;

.field notice2:Ljava/lang/String;

.field noticeversion:Ljava/lang/String;

.field resinCount:Ljava/lang/String;

.field resinInfo1:Ljava/lang/String;

.field resinInfo2:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwidget/ResinService;->sdf:Ljava/text/SimpleDateFormat;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/ResinService;->resinCount:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lwidget/ResinService;->resinInfo1:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lwidget/ResinService;->resinInfo2:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lwidget/ResinService;->expInfo1:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lwidget/ResinService;->expInfo2:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lwidget/ResinService;->expInfo3:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lwidget/ResinService;->expInfo4:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lwidget/ResinService;->expInfo5:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lwidget/ResinService;->expInfo6:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lwidget/ResinService;->expInfo7:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lwidget/ResinService;->expInfo8:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lwidget/ResinService;->expInfo9:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lwidget/ResinService;->expInfo10:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lwidget/ResinService;->expCount:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lwidget/ResinService;->notice:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lwidget/ResinService;->notice2:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lwidget/ResinService;->noticeversion:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lwidget/ResinService;->lastAppVertion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lwidget/ResinService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/ResinService;

    .line 29
    invoke-direct {p0}, Lwidget/ResinService;->updateView()V

    return-void
.end method

.method static synthetic access$100(Lwidget/ResinService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lwidget/ResinService;

    .line 29
    iget-object v0, p0, Lwidget/ResinService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lwidget/ResinService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/ResinService;

    .line 29
    invoke-direct {p0}, Lwidget/ResinService;->loadResinInfo()V

    return-void
.end method

.method private loadResinInfo()V
    .locals 3

    .line 99
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lwidget/ResinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "resinCount"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/ResinService;->resinCount:Ljava/lang/String;

    .line 101
    const-string v1, "resinInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/ResinService;->resinInfo1:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private updateView()V
    .locals 6

    .line 109
    iget-object v0, p0, Lwidget/ResinService;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lwidget/ResinService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b007d

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v1, "rViews":Landroid/widget/RemoteViews;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwidget/ResinService;->resinCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t\t\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0801f9

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lwidget/ResinService;->resinInfo1:Ljava/lang/String;

    const v3, 0x7f0801fa

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    nop

    .line 120
    invoke-virtual {p0}, Lwidget/ResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 121
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lwidget/ResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lwidget/ResinProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v3, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-virtual {p0}, Lwidget/ResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwidget/ResinService;->context:Landroid/content/Context;

    .line 48
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lwidget/ResinService;->timer:Ljava/util/Timer;

    .line 52
    new-instance v2, Lwidget/ResinService$1;

    invoke-direct {v2, p0}, Lwidget/ResinService$1;-><init>(Lwidget/ResinService;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 58
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    iput-object v7, p0, Lwidget/ResinService;->timer:Ljava/util/Timer;

    .line 62
    new-instance v8, Lwidget/ResinService$2;

    invoke-direct {v8, p0}, Lwidget/ResinService$2;-><init>(Lwidget/ResinService;)V

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x493e0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/ResinService;->timer:Ljava/util/Timer;

    .line 131
    return-void
.end method
