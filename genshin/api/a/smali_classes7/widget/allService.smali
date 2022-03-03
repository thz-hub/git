.class public Lwidget/allService;
.super Landroid/app/Service;
.source "allService.java"


# instance fields
.field private context:Landroid/content/Context;

.field expInfo1:Ljava/lang/String;

.field expInfo3:Ljava/lang/String;

.field expInfo5:Ljava/lang/String;

.field expInfo7:Ljava/lang/String;

.field expInfo9:Ljava/lang/String;

.field expeditionImageId1:I

.field expeditionImageId2:I

.field expeditionImageId3:I

.field expeditionImageId4:I

.field expeditionImageId5:I

.field resinCount:Ljava/lang/String;

.field resinInfo1:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwidget/allService;->sdf:Ljava/text/SimpleDateFormat;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/allService;->resinCount:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lwidget/allService;->resinInfo1:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lwidget/allService;->expInfo1:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lwidget/allService;->expInfo3:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lwidget/allService;->expInfo5:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lwidget/allService;->expInfo7:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lwidget/allService;->expInfo9:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lwidget/allService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/allService;

    .line 29
    invoke-direct {p0}, Lwidget/allService;->updateView()V

    return-void
.end method

.method static synthetic access$100(Lwidget/allService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lwidget/allService;

    .line 29
    iget-object v0, p0, Lwidget/allService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lwidget/allService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/allService;

    .line 29
    invoke-direct {p0}, Lwidget/allService;->loadResinInfo()V

    return-void
.end method

.method private loadResinInfo()V
    .locals 3

    .line 89
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lwidget/allService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "expeditionImageId1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/allService;->expeditionImageId1:I

    .line 91
    const-string v1, "expeditionImageId2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/allService;->expeditionImageId2:I

    .line 92
    const-string v1, "expeditionImageId3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/allService;->expeditionImageId3:I

    .line 93
    const-string v1, "expeditionImageId4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/allService;->expeditionImageId4:I

    .line 94
    const-string v1, "expeditionImageId5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/allService;->expeditionImageId5:I

    .line 95
    const-string v1, "expInfo1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->expInfo1:Ljava/lang/String;

    .line 96
    const-string v1, "expInfo3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->expInfo3:Ljava/lang/String;

    .line 97
    const-string v1, "expInfo5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->expInfo5:Ljava/lang/String;

    .line 98
    const-string v1, "expInfo7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->expInfo7:Ljava/lang/String;

    .line 99
    const-string v1, "expInfo9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->expInfo9:Ljava/lang/String;

    .line 100
    const-string v1, "resinCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->resinCount:Ljava/lang/String;

    .line 101
    const-string v1, "resinInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/allService;->resinInfo1:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private updateView()V
    .locals 6

    .line 109
    iget-object v0, p0, Lwidget/allService;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lwidget/allService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b007a

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v1, "rViews":Landroid/widget/RemoteViews;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwidget/allService;->resinCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t\t\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0801f9

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lwidget/allService;->resinInfo1:Ljava/lang/String;

    const v3, 0x7f0801fa

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lwidget/allService;->expInfo1:Ljava/lang/String;

    const v3, 0x7f0801ea

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lwidget/allService;->expInfo3:Ljava/lang/String;

    const v3, 0x7f0801eb

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lwidget/allService;->expInfo5:Ljava/lang/String;

    const v3, 0x7f0801ec

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lwidget/allService;->expInfo7:Ljava/lang/String;

    const v3, 0x7f0801ed

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lwidget/allService;->expInfo9:Ljava/lang/String;

    const v3, 0x7f0801ee

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    iget v2, p0, Lwidget/allService;->expeditionImageId1:I

    const v3, 0x7f0800d3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 124
    iget v2, p0, Lwidget/allService;->expeditionImageId2:I

    const v3, 0x7f0800d4

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 125
    iget v2, p0, Lwidget/allService;->expeditionImageId3:I

    const v3, 0x7f0800d5

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 126
    iget v2, p0, Lwidget/allService;->expeditionImageId4:I

    const v3, 0x7f0800d6

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 127
    iget v2, p0, Lwidget/allService;->expeditionImageId5:I

    const v3, 0x7f0800d7

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Lwidget/allService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 131
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lwidget/allService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lwidget/AllInfoProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v3, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lwidget/allService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwidget/allService;->context:Landroid/content/Context;

    .line 49
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lwidget/allService;->timer:Ljava/util/Timer;

    .line 53
    new-instance v2, Lwidget/allService$1;

    invoke-direct {v2, p0}, Lwidget/allService$1;-><init>(Lwidget/allService;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 59
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    iput-object v7, p0, Lwidget/allService;->timer:Ljava/util/Timer;

    .line 63
    new-instance v8, Lwidget/allService$2;

    invoke-direct {v8, p0}, Lwidget/allService$2;-><init>(Lwidget/allService;)V

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x493e0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/allService;->timer:Ljava/util/Timer;

    .line 141
    return-void
.end method
