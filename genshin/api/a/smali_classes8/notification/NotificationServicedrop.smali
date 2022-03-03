.class public Lnotification/NotificationServicedrop;
.super Landroid/app/Service;
.source "NotificationServicedrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnotification/NotificationServicedrop$ActionReceiver;
    }
.end annotation


# instance fields
.field private NormalView:Landroid/widget/RemoteViews;

.field bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field jueseurl1:Ljava/lang/String;

.field jueseurl10:Ljava/lang/String;

.field jueseurl11:Ljava/lang/String;

.field jueseurl12:Ljava/lang/String;

.field jueseurl13:Ljava/lang/String;

.field jueseurl14:Ljava/lang/String;

.field jueseurl15:Ljava/lang/String;

.field jueseurl16:Ljava/lang/String;

.field jueseurl17:Ljava/lang/String;

.field jueseurl18:Ljava/lang/String;

.field jueseurl19:Ljava/lang/String;

.field jueseurl2:Ljava/lang/String;

.field jueseurl20:Ljava/lang/String;

.field jueseurl21:Ljava/lang/String;

.field jueseurl22:Ljava/lang/String;

.field jueseurl23:Ljava/lang/String;

.field jueseurl3:Ljava/lang/String;

.field jueseurl4:Ljava/lang/String;

.field jueseurl5:Ljava/lang/String;

.field jueseurl6:Ljava/lang/String;

.field jueseurl7:Ljava/lang/String;

.field jueseurl8:Ljava/lang/String;

.field jueseurl9:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private receiver:Lnotification/NotificationServicedrop$ActionReceiver;

.field week:Ljava/lang/String;

.field wuqiurl1:Ljava/lang/String;

.field wuqiurl10:Ljava/lang/String;

.field wuqiurl11:Ljava/lang/String;

.field wuqiurl12:Ljava/lang/String;

.field wuqiurl13:Ljava/lang/String;

.field wuqiurl14:Ljava/lang/String;

.field wuqiurl15:Ljava/lang/String;

.field wuqiurl16:Ljava/lang/String;

.field wuqiurl17:Ljava/lang/String;

.field wuqiurl18:Ljava/lang/String;

.field wuqiurl19:Ljava/lang/String;

.field wuqiurl2:Ljava/lang/String;

.field wuqiurl20:Ljava/lang/String;

.field wuqiurl21:Ljava/lang/String;

.field wuqiurl22:Ljava/lang/String;

.field wuqiurl23:Ljava/lang/String;

.field wuqiurl24:Ljava/lang/String;

.field wuqiurl25:Ljava/lang/String;

.field wuqiurl26:Ljava/lang/String;

.field wuqiurl27:Ljava/lang/String;

.field wuqiurl28:Ljava/lang/String;

.field wuqiurl29:Ljava/lang/String;

.field wuqiurl3:Ljava/lang/String;

.field wuqiurl30:Ljava/lang/String;

.field wuqiurl31:Ljava/lang/String;

.field wuqiurl32:Ljava/lang/String;

.field wuqiurl33:Ljava/lang/String;

.field wuqiurl34:Ljava/lang/String;

.field wuqiurl35:Ljava/lang/String;

.field wuqiurl36:Ljava/lang/String;

.field wuqiurl4:Ljava/lang/String;

.field wuqiurl5:Ljava/lang/String;

.field wuqiurl6:Ljava/lang/String;

.field wuqiurl7:Ljava/lang/String;

.field wuqiurl8:Ljava/lang/String;

.field wuqiurl9:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lnotification/NotificationServicedrop$ActionReceiver;

    invoke-direct {v0, p0}, Lnotification/NotificationServicedrop$ActionReceiver;-><init>(Lnotification/NotificationServicedrop;)V

    iput-object v0, p0, Lnotification/NotificationServicedrop;->receiver:Lnotification/NotificationServicedrop$ActionReceiver;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl1:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl2:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl3:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl4:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl5:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl6:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl7:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl8:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl9:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl10:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl11:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl12:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl13:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl14:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl15:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl16:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl17:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl18:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl19:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl20:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl21:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl22:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl23:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl1:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl2:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl3:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl4:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl5:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl6:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl7:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl8:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl9:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl10:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl11:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl12:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl13:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl14:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl15:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl16:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl17:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl18:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl19:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl20:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl21:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl22:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl23:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl24:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl25:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl26:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl27:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl28:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl29:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl30:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl31:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl32:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl33:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl34:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl35:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl36:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnotification/NotificationServicedrop;)V
    .locals 0
    .param p0, "x0"    # Lnotification/NotificationServicedrop;

    .line 26
    invoke-direct {p0}, Lnotification/NotificationServicedrop;->initNotification()V

    return-void
.end method

.method private imageGet(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 203
    const-string v0, "\u83b7\u53d6\u56fe\u7247"

    const-string v1, "\u83b7\u53d6\u56fe\u72471"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p1}, Lhttp/getImage;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    .line 206
    return-void
.end method

.method private initNotification()V
    .locals 14

    .line 209
    new-instance v0, Lcore/systemInformation;

    invoke-direct {v0}, Lcore/systemInformation;-><init>()V

    .line 211
    .local v0, "si":Lcore/systemInformation;
    invoke-static {}, Lcore/systemInformation;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "BRAND":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSDKVersion()I

    move-result v2

    .line 214
    .local v2, "SDK":I
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    const-string v5, "\u6bcf\u65e5\u63d0\u9192\u63a8\u9001"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    .local v3, "builder":Landroidx/core/app/NotificationCompat$Builder;
    const v4, 0x7f0b0061

    const-string v5, "\u6389\u843d\u63d0\u9192"

    const v6, 0x7f0700bd

    const-string v7, "\u6389\u843d"

    const/16 v8, 0x1e

    if-le v2, v8, :cond_0

    .line 217
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v6, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    .line 224
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 226
    :cond_0
    iget-object v8, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v10, v9

    new-instance v9, Landroid/content/Intent;

    const-string v11, "notification.click"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x8000000

    invoke-static {v8, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 227
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v10, v12

    new-instance v12, Landroid/content/Intent;

    const-string v13, "notification.close"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v12, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 228
    .local v9, "closeIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 230
    invoke-virtual {v6, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 233
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 235
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    .line 236
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 237
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800d2

    invoke-virtual {v4, v5, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 241
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "closeIntent":Landroid/app/PendingIntent;
    :goto_0
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl1:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800dd

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 243
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl2:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e8

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 245
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl3:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ed

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 247
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl4:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ee

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 249
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl5:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ef

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 251
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl6:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f0

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 253
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl7:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f1

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 255
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl8:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f2

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 257
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl9:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f3

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 259
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl10:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800de

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 261
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl11:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800df

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 263
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl12:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e0

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 265
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl13:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e1

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 267
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl14:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e2

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 269
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl15:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e3

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 271
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl16:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e4

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 273
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl17:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e5

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 275
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl18:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e6

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 277
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl19:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 278
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e7

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 279
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl20:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800e9

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 281
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl21:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ea

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 283
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl22:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800eb

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 285
    iget-object v4, p0, Lnotification/NotificationServicedrop;->jueseurl23:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ec

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 288
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl1:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f5

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 290
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl2:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080100

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 292
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl3:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010b

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 294
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl4:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080113

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 296
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl5:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080114

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 298
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl6:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080115

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 300
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl7:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080116

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 302
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl8:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080117

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 304
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl9:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080118

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 306
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl10:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f6

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 308
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl11:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f7

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 310
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl12:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f8

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 312
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl13:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800f9

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 314
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl14:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800fa

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 316
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl15:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800fb

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 318
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl16:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800fc

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 320
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl17:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800fd

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 322
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl18:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800fe

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 324
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl19:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0800ff

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 326
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl20:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080101

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 328
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl21:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 329
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080102

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 330
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl22:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080103

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 332
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl23:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080104

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 334
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl24:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080105

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 336
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl25:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080106

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 338
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl26:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080107

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 340
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl27:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080108

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 342
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl28:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080109

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 344
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl29:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010a

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 346
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl30:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010c

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 348
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl31:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010d

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 350
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl32:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010e

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 352
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl33:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f08010f

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 354
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl34:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080110

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 356
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl35:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080111

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 358
    iget-object v4, p0, Lnotification/NotificationServicedrop;->wuqiurl36:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnotification/NotificationServicedrop;->imageGet(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f080112

    iget-object v6, p0, Lnotification/NotificationServicedrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 360
    iget-object v4, p0, Lnotification/NotificationServicedrop;->NormalView:Landroid/widget/RemoteViews;

    const v5, 0x7f0801fe

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u53ef\u5237\u6750\u6599\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iput-object v4, p0, Lnotification/NotificationServicedrop;->notification:Landroid/app/Notification;

    .line 363
    const/16 v5, 0xb

    invoke-virtual {p0, v5, v4}, Lnotification/NotificationServicedrop;->startForeground(ILandroid/app/Notification;)V

    .line 364
    return-void
.end method

.method private start()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/NotificationServicedrop$1;

    invoke-direct {v1, p0}, Lnotification/NotificationServicedrop$1;-><init>(Lnotification/NotificationServicedrop;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 371
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 372
    iget-object v0, p0, Lnotification/NotificationServicedrop;->receiver:Lnotification/NotificationServicedrop$ActionReceiver;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Lnotification/NotificationServicedrop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 107
    const-string v0, "jueseurl1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl1:Ljava/lang/String;

    .line 108
    const-string v0, "jueseurl2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl2:Ljava/lang/String;

    .line 109
    const-string v0, "jueseurl3"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl3:Ljava/lang/String;

    .line 110
    const-string v0, "jueseurl4"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl4:Ljava/lang/String;

    .line 111
    const-string v0, "jueseurl5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl5:Ljava/lang/String;

    .line 112
    const-string v0, "jueseurl6"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl6:Ljava/lang/String;

    .line 113
    const-string v0, "jueseurl7"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl7:Ljava/lang/String;

    .line 114
    const-string v0, "jueseurl8"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl8:Ljava/lang/String;

    .line 115
    const-string v0, "jueseurl9"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl9:Ljava/lang/String;

    .line 116
    const-string v0, "jueseurl10"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl10:Ljava/lang/String;

    .line 117
    const-string v0, "jueseurl11"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl11:Ljava/lang/String;

    .line 118
    const-string v0, "jueseurl12"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl12:Ljava/lang/String;

    .line 119
    const-string v0, "jueseurl13"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl13:Ljava/lang/String;

    .line 120
    const-string v0, "jueseurl14"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl14:Ljava/lang/String;

    .line 121
    const-string v0, "jueseurl15"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl15:Ljava/lang/String;

    .line 122
    const-string v0, "jueseurl16"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl16:Ljava/lang/String;

    .line 123
    const-string v0, "jueseurl17"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl17:Ljava/lang/String;

    .line 124
    const-string v0, "jueseurl18"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl18:Ljava/lang/String;

    .line 125
    const-string v0, "jueseurl19"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl19:Ljava/lang/String;

    .line 126
    const-string v0, "jueseurl20"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl20:Ljava/lang/String;

    .line 127
    const-string v0, "jueseurl21"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl21:Ljava/lang/String;

    .line 128
    const-string v0, "jueseurl22"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl22:Ljava/lang/String;

    .line 129
    const-string v0, "jueseurl23"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->jueseurl23:Ljava/lang/String;

    .line 131
    const-string v0, "wuqiurl1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl1:Ljava/lang/String;

    .line 132
    const-string v0, "wuqiurl2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl2:Ljava/lang/String;

    .line 133
    const-string v0, "wuqiurl3"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl3:Ljava/lang/String;

    .line 134
    const-string v0, "wuqiurl4"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl4:Ljava/lang/String;

    .line 135
    const-string v0, "wuqiurl5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl5:Ljava/lang/String;

    .line 136
    const-string v0, "wuqiurl6"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl6:Ljava/lang/String;

    .line 137
    const-string v0, "wuqiurl7"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl7:Ljava/lang/String;

    .line 138
    const-string v0, "wuqiurl8"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl8:Ljava/lang/String;

    .line 139
    const-string v0, "wuqiurl9"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl9:Ljava/lang/String;

    .line 140
    const-string v0, "wuqiurl10"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl10:Ljava/lang/String;

    .line 141
    const-string v0, "wuqiurl11"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl11:Ljava/lang/String;

    .line 142
    const-string v0, "wuqiurl12"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl12:Ljava/lang/String;

    .line 143
    const-string v0, "wuqiurl13"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl13:Ljava/lang/String;

    .line 144
    const-string v0, "wuqiurl14"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl14:Ljava/lang/String;

    .line 145
    const-string v0, "wuqiurl15"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl15:Ljava/lang/String;

    .line 146
    const-string v0, "wuqiurl16"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl16:Ljava/lang/String;

    .line 147
    const-string v0, "wuqiurl17"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl17:Ljava/lang/String;

    .line 148
    const-string v0, "wuqiurl18"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl18:Ljava/lang/String;

    .line 149
    const-string v0, "wuqiurl19"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl19:Ljava/lang/String;

    .line 150
    const-string v0, "wuqiurl20"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl20:Ljava/lang/String;

    .line 151
    const-string v0, "wuqiurl21"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl21:Ljava/lang/String;

    .line 152
    const-string v0, "wuqiurl22"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl22:Ljava/lang/String;

    .line 153
    const-string v0, "wuqiurl23"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl23:Ljava/lang/String;

    .line 154
    const-string v0, "wuqiurl24"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl24:Ljava/lang/String;

    .line 155
    const-string v0, "wuqiurl25"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl25:Ljava/lang/String;

    .line 156
    const-string v0, "wuqiurl26"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl26:Ljava/lang/String;

    .line 157
    const-string v0, "wuqiurl27"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl27:Ljava/lang/String;

    .line 158
    const-string v0, "wuqiurl28"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl28:Ljava/lang/String;

    .line 159
    const-string v0, "wuqiurl29"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl29:Ljava/lang/String;

    .line 160
    const-string v0, "wuqiurl30"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl30:Ljava/lang/String;

    .line 161
    const-string v0, "wuqiurl31"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl31:Ljava/lang/String;

    .line 162
    const-string v0, "wuqiurl32"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl32:Ljava/lang/String;

    .line 163
    const-string v0, "wuqiurl33"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl33:Ljava/lang/String;

    .line 164
    const-string v0, "wuqiurl34"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl34:Ljava/lang/String;

    .line 165
    const-string v0, "wuqiurl35"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl35:Ljava/lang/String;

    .line 166
    const-string v0, "wuqiurl36"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->wuqiurl36:Ljava/lang/String;

    .line 167
    const-string v0, "week"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->week:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lnotification/NotificationServicedrop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnotification/NotificationServicedrop;->context:Landroid/content/Context;

    .line 175
    invoke-direct {p0}, Lnotification/NotificationServicedrop;->start()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "notification.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "notification.dropclose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lnotification/NotificationServicedrop;->receiver:Lnotification/NotificationServicedrop$ActionReceiver;

    invoke-virtual {p0, v1, v0}, Lnotification/NotificationServicedrop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    const/4 v1, 0x1

    return v1
.end method
