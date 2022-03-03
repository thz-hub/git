.class public Lnotification/noticationServiceDome;
.super Ljava/lang/Object;
.source "noticationServiceDome.java"


# static fields
.field public static final BACK:Ljava/lang/String; = "back"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final ID_FOR_BIG_PICTURE:I = 0x4

.field public static final ID_FOR_BIG_TEXT:I = 0x2

.field public static final ID_FOR_CUSTOM_VIEW:I = 0x7

.field public static final ID_FOR_CUSTOM_VIEW2:I = 0xb

.field public static final ID_FOR_GROUP:I = 0x9

.field public static final ID_FOR_INBOX:I = 0x3

.field public static final ID_FOR_MEDIA:I = 0x6

.field public static final ID_FOR_MESSAGING:I = 0x5

.field public static final ID_FOR_NORMAL:I = 0x1

.field public static final ID_FOR_NORMAL_ACTION:I = 0x8

.field public static final KEY_TEXT_REPLY:Ljava/lang/String; = "key_text_reply"

.field public static final MAKE_AS_READ:Ljava/lang/String; = "make_as_read"

.field public static final NEXT:Ljava/lang/String; = "next"

.field public static final PAUSE:Ljava/lang/String; = "pause"

.field public static final REPLY:Ljava/lang/String; = "reply"

.field public static final REPLY_MESSAGING:Ljava/lang/String; = "reply_messaging"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigPicture(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;ZZZZZ)V
    .locals 19
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "imageId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "SubText"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "picId"    # I
    .param p6, "channel_id"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "isSound"    # Z
    .param p9, "isShowLock"    # Z
    .param p10, "isHeads"    # Z
    .param p11, "isAutoCancel"    # Z
    .param p12, "isOnly"    # Z

    .line 207
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p11

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 209
    .local v7, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v8, Lcore/systemInformation;

    invoke-direct {v8}, Lcore/systemInformation;-><init>()V

    .line 210
    .local v8, "si":Lcore/systemInformation;
    invoke-static {}, Lcore/systemInformation;->getBrand()Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "BRAND":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSDKVersion()I

    move-result v10

    .line 212
    .local v10, "SDK":I
    new-instance v11, Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v12, p6

    invoke-direct {v11, v5, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .local v11, "builder":Landroidx/core/app/NotificationCompat$Builder;
    const v13, 0x7f0e002f

    const/16 v14, 0x1e

    if-le v10, v14, :cond_0

    .line 216
    new-instance v14, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v14}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 217
    .local v14, "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 218
    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 219
    invoke-virtual {v14, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 221
    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v15

    .line 222
    invoke-virtual {v15, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v15

    .line 223
    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 224
    move-object v15, v8

    move-object/from16 v16, v9

    .end local v8    # "si":Lcore/systemInformation;
    .end local v9    # "BRAND":Ljava/lang/String;
    .local v15, "si":Lcore/systemInformation;
    .local v16, "BRAND":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 225
    invoke-virtual {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 226
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 227
    invoke-virtual {v8, v14}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 228
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 229
    invoke-virtual {v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    .end local v14    # "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v9, v7

    goto :goto_0

    .line 233
    .end local v15    # "si":Lcore/systemInformation;
    .end local v16    # "BRAND":Ljava/lang/String;
    .restart local v8    # "si":Lcore/systemInformation;
    .restart local v9    # "BRAND":Ljava/lang/String;
    :cond_0
    move-object v15, v8

    move-object/from16 v16, v9

    .end local v8    # "si":Lcore/systemInformation;
    .end local v9    # "BRAND":Ljava/lang/String;
    .restart local v15    # "si":Lcore/systemInformation;
    .restart local v16    # "BRAND":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-class v9, LUI/MainActivity;

    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    long-to-int v14, v13

    .line 239
    .local v14, "requestCode":I
    const/high16 v13, 0x10000000

    invoke-static {v5, v14, v8, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 241
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v17, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct/range {v17 .. v17}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object/from16 v18, v17

    .line 242
    .local v18, "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, v18

    .end local v18    # "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .local v0, "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 243
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 244
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 246
    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 247
    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 248
    const v4, 0x7f0e002f

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 249
    move-object v9, v7

    move-object/from16 v17, v8

    .end local v7    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v8    # "intent":Landroid/content/Intent;
    .local v9, "largeIcon":Landroid/graphics/Bitmap;
    .local v17, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 251
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 253
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 267
    .end local v0    # "style":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "requestCode":I
    .end local v17    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 269
    if-eqz p9, :cond_1

    .line 270
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 272
    :cond_1
    if-eqz p10, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 274
    const-string v0, "notification"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 275
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p12, :cond_3

    const/4 v4, 0x4

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v4, v7

    :goto_2
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    return-void
.end method

.method public static bigText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;ZZZZZ)V
    .locals 20
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "imageId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "SubText"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "picId"    # I
    .param p6, "channel_id"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "isSound"    # Z
    .param p9, "isShowLock"    # Z
    .param p10, "isHeads"    # Z
    .param p11, "isAutoCancel"    # Z
    .param p12, "isOnly"    # Z

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p11

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 110
    .local v7, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v8, Lcore/systemInformation;

    invoke-direct {v8}, Lcore/systemInformation;-><init>()V

    .line 111
    .local v8, "si":Lcore/systemInformation;
    invoke-static {}, Lcore/systemInformation;->getBrand()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "BRAND":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSDKVersion()I

    move-result v10

    .line 113
    .local v10, "SDK":I
    new-instance v11, Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v12, p6

    invoke-direct {v11, v5, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    .local v11, "builder":Landroidx/core/app/NotificationCompat$Builder;
    const-string v13, "msg"

    const v14, 0x7f0e002f

    const/16 v15, 0x1e

    if-le v10, v15, :cond_0

    .line 117
    new-instance v15, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v15}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 118
    .local v15, "style":Landroidx/core/app/NotificationCompat$BigTextStyle;
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 119
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 120
    move-object/from16 v16, v8

    .end local v8    # "si":Lcore/systemInformation;
    .local v16, "si":Lcore/systemInformation;
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 122
    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 123
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 124
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 125
    move-object/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "BRAND":Ljava/lang/String;
    .end local v10    # "SDK":I
    .local v17, "BRAND":Ljava/lang/String;
    .local v18, "SDK":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 126
    invoke-virtual {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 127
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 128
    invoke-virtual {v8, v15}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 129
    invoke-virtual {v8, v13}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 130
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 132
    invoke-virtual {v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    .end local v15    # "style":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v15, v7

    goto :goto_0

    .line 135
    .end local v16    # "si":Lcore/systemInformation;
    .end local v17    # "BRAND":Ljava/lang/String;
    .end local v18    # "SDK":I
    .restart local v8    # "si":Lcore/systemInformation;
    .restart local v9    # "BRAND":Ljava/lang/String;
    .restart local v10    # "SDK":I
    :cond_0
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    .end local v8    # "si":Lcore/systemInformation;
    .end local v9    # "BRAND":Ljava/lang/String;
    .end local v10    # "SDK":I
    .restart local v16    # "si":Lcore/systemInformation;
    .restart local v17    # "BRAND":Ljava/lang/String;
    .restart local v18    # "SDK":I
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-class v9, Lcore/OpenApp;

    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    long-to-int v10, v9

    const/high16 v9, 0x10000000

    invoke-static {v5, v10, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 142
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v10}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 143
    .local v10, "style":Landroidx/core/app/NotificationCompat$BigTextStyle;
    invoke-virtual {v10, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 144
    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 145
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 147
    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v15

    .line 148
    invoke-virtual {v15, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v15

    .line 149
    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v14

    .line 150
    move-object v15, v7

    move-object/from16 v19, v8

    .end local v7    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v8    # "intent":Landroid/content/Intent;
    .local v15, "largeIcon":Landroid/graphics/Bitmap;
    .local v19, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 151
    invoke-virtual {v7, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 152
    invoke-virtual {v7, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 153
    invoke-virtual {v7, v10}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 154
    invoke-virtual {v7, v13}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 155
    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 156
    invoke-virtual {v7, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 157
    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 181
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "style":Landroidx/core/app/NotificationCompat$BigTextStyle;
    .end local v19    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 184
    if-eqz p9, :cond_1

    .line 185
    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 188
    :cond_1
    const/4 v7, 0x2

    if-eqz p10, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v11, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 190
    const-string v8, "notification"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 191
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p12, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    :goto_2
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 192
    return-void
.end method

.method public static normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;ZZZZZ)V
    .locals 13
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "SubText"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "picId"    # I
    .param p4, "channel_id"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "isSound"    # Z
    .param p7, "isShowLock"    # Z
    .param p8, "isHeads"    # Z
    .param p9, "isAutoCancel"    # Z
    .param p10, "isOnly"    # Z

    .line 53
    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 65
    .local v2, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v4, p4

    invoke-direct {v3, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .local v3, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 68
    const v6, 0x7f0e002f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 70
    move-object v6, p0

    invoke-virtual {v5, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 71
    move-object v7, p2

    invoke-virtual {v5, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 72
    move/from16 v8, p9

    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 74
    move-object v9, p1

    invoke-virtual {v5, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 80
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 83
    const/4 v5, 0x1

    if-eqz p7, :cond_0

    .line 84
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 87
    :cond_0
    if-eqz p8, :cond_1

    const/4 v10, 0x2

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    const-string v10, "notification"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 90
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v5, v11

    :goto_1
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 91
    return-void
.end method
