.class public Lnotification/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnotification/NotificationService$ActionReceiver;
    }
.end annotation


# instance fields
.field private NormalView:Landroid/widget/RemoteViews;

.field bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field expInfo1:Ljava/lang/String;

.field expInfo2:Ljava/lang/String;

.field expInfo3:Ljava/lang/String;

.field expInfo4:Ljava/lang/String;

.field expInfo5:Ljava/lang/String;

.field expeditionImageId1:I

.field expeditionImageId2:I

.field expeditionImageId3:I

.field expeditionImageId4:I

.field expeditionImageId5:I

.field private notification:Landroid/app/Notification;

.field private receiver:Lnotification/NotificationService$ActionReceiver;

.field resinCount:Ljava/lang/String;

.field resinInfo1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lnotification/NotificationService$ActionReceiver;

    invoke-direct {v0, p0}, Lnotification/NotificationService$ActionReceiver;-><init>(Lnotification/NotificationService;)V

    iput-object v0, p0, Lnotification/NotificationService;->receiver:Lnotification/NotificationService$ActionReceiver;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lnotification/NotificationService;->resinCount:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lnotification/NotificationService;->resinInfo1:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lnotification/NotificationService;->expInfo1:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lnotification/NotificationService;->expInfo2:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lnotification/NotificationService;->expInfo3:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lnotification/NotificationService;->expInfo4:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lnotification/NotificationService;->expInfo5:Ljava/lang/String;

    .line 49
    const v0, 0x7f07007b

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId1:I

    .line 50
    iput v0, p0, Lnotification/NotificationService;->expeditionImageId2:I

    .line 51
    iput v0, p0, Lnotification/NotificationService;->expeditionImageId3:I

    .line 52
    iput v0, p0, Lnotification/NotificationService;->expeditionImageId4:I

    .line 53
    iput v0, p0, Lnotification/NotificationService;->expeditionImageId5:I

    return-void
.end method

.method static synthetic access$000(Lnotification/NotificationService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/NotificationService;

    .line 25
    invoke-direct {p0}, Lnotification/NotificationService;->initNotification()V

    return-void
.end method

.method private imageGet()V
    .locals 3

    .line 98
    const-string v0, "\u83b7\u53d6\u56fe\u7247"

    const-string v1, "\u83b7\u53d6\u56fe\u72471"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, "https://upload-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Albedo.png"

    .line 101
    .local v1, "url22":Ljava/lang/String;
    const-string v2, "\u83b7\u53d6\u56fe\u72472"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v1}, Lhttp/getImage;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lnotification/NotificationService;->bitmap:Landroid/graphics/Bitmap;

    .line 103
    const-string v2, "\u83b7\u53d6\u56fe\u72473"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private initNotification()V
    .locals 14

    .line 107
    new-instance v0, Lcore/systemInformation;

    invoke-direct {v0}, Lcore/systemInformation;-><init>()V

    .line 109
    .local v0, "si":Lcore/systemInformation;
    invoke-static {}, Lcore/systemInformation;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "BRAND":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSDKVersion()I

    move-result v2

    .line 112
    .local v2, "SDK":I
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    const-string v5, "\u5e38\u9a7b\u901a\u77e5"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .local v3, "builder":Landroidx/core/app/NotificationCompat$Builder;
    const v4, 0x7f0b0062

    const/4 v5, 0x1

    const v6, 0x7f0e002f

    const v7, 0x7f0700bd

    const/16 v8, 0x1e

    if-le v2, v8, :cond_0

    .line 115
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    .line 120
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 122
    :cond_0
    iget-object v8, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v10, v9

    new-instance v9, Landroid/content/Intent;

    const-string v11, "notification.click"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x8000000

    invoke-static {v8, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 123
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v10, v12

    new-instance v12, Landroid/content/Intent;

    const-string v13, "notification.close"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v12, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 125
    .local v9, "closeIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v10, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 128
    invoke-virtual {v6, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 129
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 130
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    .line 131
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 132
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d2

    invoke-virtual {v4, v5, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 140
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "closeIntent":Landroid/app/PendingIntent;
    :goto_0
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801f9

    iget-object v6, p0, Lnotification/NotificationService;->resinCount:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801fa

    iget-object v6, p0, Lnotification/NotificationService;->resinInfo1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801ea

    iget-object v6, p0, Lnotification/NotificationService;->expInfo1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 143
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801eb

    iget-object v6, p0, Lnotification/NotificationService;->expInfo2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801ec

    iget-object v6, p0, Lnotification/NotificationService;->expInfo3:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801ed

    iget-object v6, p0, Lnotification/NotificationService;->expInfo4:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801ee

    iget-object v6, p0, Lnotification/NotificationService;->expInfo5:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 147
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d3

    iget v6, p0, Lnotification/NotificationService;->expeditionImageId1:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d4

    iget v6, p0, Lnotification/NotificationService;->expeditionImageId2:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 149
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d5

    iget v6, p0, Lnotification/NotificationService;->expeditionImageId3:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 150
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d6

    iget v6, p0, Lnotification/NotificationService;->expeditionImageId4:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 151
    iget-object v4, p0, Lnotification/NotificationService;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d7

    iget v6, p0, Lnotification/NotificationService;->expeditionImageId5:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 155
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iput-object v4, p0, Lnotification/NotificationService;->notification:Landroid/app/Notification;

    .line 156
    const/4 v5, 0x7

    invoke-virtual {p0, v5, v4}, Lnotification/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 157
    return-void
.end method

.method private start()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/NotificationService$1;

    invoke-direct {v1, p0}, Lnotification/NotificationService$1;-><init>(Lnotification/NotificationService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 165
    iget-object v0, p0, Lnotification/NotificationService;->receiver:Lnotification/NotificationService$ActionReceiver;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lnotification/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 57
    const-string v0, "resinCount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->resinCount:Ljava/lang/String;

    .line 58
    const-string v0, "resinInfo1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->resinInfo1:Ljava/lang/String;

    .line 59
    const-string v0, "expInfo1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->expInfo1:Ljava/lang/String;

    .line 60
    const-string v0, "expInfo2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->expInfo2:Ljava/lang/String;

    .line 61
    const-string v0, "expInfo3"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->expInfo3:Ljava/lang/String;

    .line 62
    const-string v0, "expInfo4"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->expInfo4:Ljava/lang/String;

    .line 63
    const-string v0, "expInfo5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->expInfo5:Ljava/lang/String;

    .line 64
    const-string v0, "expeditionImageId1"

    const v1, 0x7f07007b

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId1:I

    .line 65
    const-string v0, "expeditionImageId2"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId2:I

    .line 66
    const-string v0, "expeditionImageId3"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId3:I

    .line 67
    const-string v0, "expeditionImageId4"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId4:I

    .line 68
    const-string v0, "expeditionImageId5"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnotification/NotificationService;->expeditionImageId5:I

    .line 70
    invoke-virtual {p0}, Lnotification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationService;->context:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lnotification/NotificationService;->start()V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "notification.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "notification.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lnotification/NotificationService;->receiver:Lnotification/NotificationService$ActionReceiver;

    invoke-virtual {p0, v1, v0}, Lnotification/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x1

    return v1
.end method
