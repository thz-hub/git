.class Lnotification/baseService$4;
.super Ljava/lang/Object;
.source "baseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotification/baseService;->getResinInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnotification/baseService;


# direct methods
.method constructor <init>(Lnotification/baseService;)V
    .locals 0
    .param p1, "this$0"    # Lnotification/baseService;

    .line 277
    iput-object p1, p0, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 280
    move-object/from16 v1, p0

    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    iget-object v2, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v2, v2, Lnotification/baseService;->cookie:Ljava/lang/String;

    invoke-static {v0, v2}, Lhttp/getDaily;->Daily(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "jsonText":Ljava/lang/String;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 282
    .local v4, "a":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 283
    .local v5, "b":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v0, "avatarname":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcore/Avatar_Name;->GetAvatarNameHanToPinyin()Ljava/util/Map;

    move-result-object v6

    .line 285
    .end local v0    # "avatarname":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "avatarname":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :try_start_0
    invoke-static {v2}, Lhttp/DailyInfo;->getDaily(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 288
    invoke-static {v2}, Lhttp/DailyInfo;->getExp(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 289
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lhttp/DailyInfo;->resinRecoveryTime(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lnotification/baseService;->recoveryTime:I

    .line 290
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lhttp/DailyInfo;->qianRecoveryTime(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lnotification/baseService;->qrecoveryTime:I

    .line 292
    const-string v0, "\u6811\u8102\u6062\u590d\u79d2\u6570"

    iget-object v7, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget v7, v7, Lnotification/baseService;->recoveryTime:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "\u5b9d\u94b1\u6062\u590d\u79d2\u6570"

    iget-object v7, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget v7, v7, Lnotification/baseService;->qrecoveryTime:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 298
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v7, 0xb

    aget-object v8, v5, v7

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lnotification/baseService;->expeditionImage1:Ljava/lang/String;

    .line 299
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v8, 0xc

    aget-object v9, v5, v8

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lnotification/baseService;->expeditionImage2:Ljava/lang/String;

    .line 300
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v9, 0xd

    aget-object v10, v5, v9

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Lnotification/baseService;->expeditionImage3:Ljava/lang/String;

    .line 301
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v10, 0xe

    aget-object v11, v5, v10

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v0, Lnotification/baseService;->expeditionImage4:Ljava/lang/String;

    .line 302
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v11, 0xf

    aget-object v12, v5, v11

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lnotification/baseService;->expeditionImage5:Ljava/lang/String;

    .line 303
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v12, v0, Lnotification/baseService;->expeditionImage1:Ljava/lang/String;

    invoke-static {v0, v12}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lnotification/baseService;->expeditionImageId1:I

    .line 304
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v12, v0, Lnotification/baseService;->expeditionImage2:Ljava/lang/String;

    invoke-static {v0, v12}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lnotification/baseService;->expeditionImageId2:I

    .line 305
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v12, v0, Lnotification/baseService;->expeditionImage3:Ljava/lang/String;

    invoke-static {v0, v12}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lnotification/baseService;->expeditionImageId3:I

    .line 306
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v12, v0, Lnotification/baseService;->expeditionImage4:Ljava/lang/String;

    invoke-static {v0, v12}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lnotification/baseService;->expeditionImageId4:I

    .line 307
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    iget-object v12, v0, Lnotification/baseService;->expeditionImage5:Ljava/lang/String;

    invoke-static {v0, v12}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lnotification/baseService;->expeditionImageId5:I

    .line 308
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v12, v4, v3

    iput-object v12, v0, Lnotification/baseService;->resinCount:Ljava/lang/String;

    .line 309
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v12, 0x1

    aget-object v13, v4, v12

    iput-object v13, v0, Lnotification/baseService;->resinInfo1:Ljava/lang/String;

    .line 310
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v13, 0x2

    aget-object v14, v4, v13

    iput-object v14, v0, Lnotification/baseService;->resinInfo2:Ljava/lang/String;

    .line 311
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v14, 0x3

    aget-object v15, v4, v14

    iput-object v15, v0, Lnotification/baseService;->strTask:Ljava/lang/String;

    .line 312
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v15, 0x4

    aget-object v11, v4, v15

    iput-object v11, v0, Lnotification/baseService;->qianCount:Ljava/lang/String;

    .line 313
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v11, 0x5

    aget-object v10, v4, v11

    iput-object v10, v0, Lnotification/baseService;->qianInfo1:Ljava/lang/String;

    .line 314
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v10, 0x6

    aget-object v9, v4, v10

    iput-object v9, v0, Lnotification/baseService;->qianInfo2:Ljava/lang/String;

    .line 316
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->expCount:Ljava/lang/String;

    .line 317
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v12

    iput-object v3, v0, Lnotification/baseService;->expInfo1:Ljava/lang/String;

    .line 318
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v13

    iput-object v3, v0, Lnotification/baseService;->expInfo2:Ljava/lang/String;

    .line 319
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v14

    iput-object v3, v0, Lnotification/baseService;->expInfo3:Ljava/lang/String;

    .line 320
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v15

    iput-object v3, v0, Lnotification/baseService;->expInfo4:Ljava/lang/String;

    .line 321
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v11

    iput-object v3, v0, Lnotification/baseService;->expInfo5:Ljava/lang/String;

    .line 322
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v10

    iput-object v3, v0, Lnotification/baseService;->expInfo6:Ljava/lang/String;

    .line 323
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/4 v3, 0x7

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->expInfo7:Ljava/lang/String;

    .line 324
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x8

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->expInfo8:Ljava/lang/String;

    .line 325
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x9

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->expInfo9:Ljava/lang/String;

    .line 326
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0xa

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->expInfo10:Ljava/lang/String;

    .line 327
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x10

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->strEx1:Ljava/lang/String;

    .line 328
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x11

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->strEx2:Ljava/lang/String;

    .line 329
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x12

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->strEx3:Ljava/lang/String;

    .line 330
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x13

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->strEx4:Ljava/lang/String;

    .line 331
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0x14

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->strEx5:Ljava/lang/String;

    .line 332
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v7

    iput-object v3, v0, Lnotification/baseService;->exName1:Ljava/lang/String;

    .line 333
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    aget-object v3, v5, v8

    iput-object v3, v0, Lnotification/baseService;->exName2:Ljava/lang/String;

    .line 334
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0xd

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->exName3:Ljava/lang/String;

    .line 335
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0xe

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->exName4:Ljava/lang/String;

    .line 336
    iget-object v0, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    const/16 v3, 0xf

    aget-object v3, v5, v3

    iput-object v3, v0, Lnotification/baseService;->exName5:Ljava/lang/String;

    .line 338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "msg":Landroid/os/Message;
    iput v13, v0, Landroid/os/Message;->what:I

    .line 340
    iget-object v3, v1, Lnotification/baseService$4;->this$0:Lnotification/baseService;

    invoke-static {v3}, Lnotification/baseService;->access$900(Lnotification/baseService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
