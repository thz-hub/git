.class public Lwidget/DanResinService;
.super Landroid/app/Service;
.source "DanResinService.java"


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

.field resinInfo2:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwidget/DanResinService;->sdf:Ljava/text/SimpleDateFormat;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lwidget/DanResinService;->resinCount:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lwidget/DanResinService;->resinInfo1:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lwidget/DanResinService;->resinInfo2:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/DanResinService;->expInfo1:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lwidget/DanResinService;->expInfo3:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lwidget/DanResinService;->expInfo5:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lwidget/DanResinService;->expInfo7:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lwidget/DanResinService;->expInfo9:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lwidget/DanResinService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/DanResinService;

    .line 28
    invoke-direct {p0}, Lwidget/DanResinService;->updateView()V

    return-void
.end method

.method static synthetic access$100(Lwidget/DanResinService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lwidget/DanResinService;

    .line 28
    iget-object v0, p0, Lwidget/DanResinService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lwidget/DanResinService;)V
    .locals 0
    .param p0, "x0"    # Lwidget/DanResinService;

    .line 28
    invoke-direct {p0}, Lwidget/DanResinService;->loadResinInfo()V

    return-void
.end method

.method private loadResinInfo()V
    .locals 3

    .line 89
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lwidget/DanResinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "expeditionImageId1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/DanResinService;->expeditionImageId1:I

    .line 91
    const-string v1, "expeditionImageId2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/DanResinService;->expeditionImageId2:I

    .line 92
    const-string v1, "expeditionImageId3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/DanResinService;->expeditionImageId3:I

    .line 93
    const-string v1, "expeditionImageId4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/DanResinService;->expeditionImageId4:I

    .line 94
    const-string v1, "expeditionImageId5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lwidget/DanResinService;->expeditionImageId5:I

    .line 95
    const-string v1, "expInfo1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->expInfo1:Ljava/lang/String;

    .line 96
    const-string v1, "expInfo3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->expInfo3:Ljava/lang/String;

    .line 97
    const-string v1, "expInfo5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->expInfo5:Ljava/lang/String;

    .line 98
    const-string v1, "expInfo7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->expInfo7:Ljava/lang/String;

    .line 99
    const-string v1, "expInfo9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->expInfo9:Ljava/lang/String;

    .line 100
    const-string v1, "resinCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->resinCount:Ljava/lang/String;

    .line 101
    const-string v1, "resinInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->resinInfo1:Ljava/lang/String;

    .line 102
    const-string v1, "resinInfo2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwidget/DanResinService;->resinInfo2:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private updateView()V
    .locals 6

    .line 110
    iget-object v0, p0, Lwidget/DanResinService;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lwidget/DanResinService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b007b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 117
    .local v1, "rViews":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lwidget/DanResinService;->resinCount:Ljava/lang/String;

    const-string v3, "\u5f53\u524d\u6811\u8102\u6570\u4e3a\uff1a"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwidget/DanResinService;->resinCount:Ljava/lang/String;

    .line 118
    const v3, 0x7f0801f9

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    const v2, 0x7f0801fd

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lwidget/DanResinService;->resinInfo1:Ljava/lang/String;

    const-string v3, "\u6811\u8102\u5c06\u4e8e"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwidget/DanResinService;->resinInfo1:Ljava/lang/String;

    .line 123
    const-string v3, "\u5b8c\u5168\u6062\u590d"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwidget/DanResinService;->resinInfo1:Ljava/lang/String;

    .line 125
    const v5, 0x7f0801fa

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lwidget/DanResinService;->resinInfo2:Ljava/lang/String;

    const-string v5, "\u6811\u8102"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwidget/DanResinService;->resinInfo2:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwidget/DanResinService;->resinInfo2:Ljava/lang/String;

    .line 130
    const v3, 0x7f0801fb

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 133
    nop

    .line 134
    invoke-virtual {p0}, Lwidget/DanResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 135
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lwidget/DanResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lwidget/DanResinInfoProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v3, "cName":Landroid/content/ComponentName;
    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 138
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
    invoke-virtual {p0}, Lwidget/DanResinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwidget/DanResinService;->context:Landroid/content/Context;

    .line 48
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lwidget/DanResinService;->timer:Ljava/util/Timer;

    .line 52
    new-instance v2, Lwidget/DanResinService$1;

    invoke-direct {v2, p0}, Lwidget/DanResinService$1;-><init>(Lwidget/DanResinService;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 58
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    iput-object v7, p0, Lwidget/DanResinService;->timer:Ljava/util/Timer;

    .line 62
    new-instance v8, Lwidget/DanResinService$2;

    invoke-direct {v8, p0}, Lwidget/DanResinService$2;-><init>(Lwidget/DanResinService;)V

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x493e0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lwidget/DanResinService;->timer:Ljava/util/Timer;

    .line 145
    return-void
.end method
