.class public Lnotification/baseService;
.super Landroid/app/Service;
.source "baseService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleService"


# instance fields
.field appVertion:Ljava/lang/String;

.field private btn_getinfo:Landroid/widget/Button;

.field private btn_set:Landroid/widget/Button;

.field private btn_yuanShenLaunch:Landroid/widget/Button;

.field private btn_yunyuanShenLaunch:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field cookie:Ljava/lang/String;

.field private dao:Lcom/example/cherisheveryminutemobile/UserDao;

.field exName1:Ljava/lang/String;

.field exName2:Ljava/lang/String;

.field exName3:Ljava/lang/String;

.field exName4:Ljava/lang/String;

.field exName5:Ljava/lang/String;

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

.field expedition1:Z

.field expedition2:Z

.field expedition3:Z

.field expedition4:Z

.field expedition5:Z

.field expeditionImage1:Ljava/lang/String;

.field expeditionImage2:Ljava/lang/String;

.field expeditionImage3:Ljava/lang/String;

.field expeditionImage4:Ljava/lang/String;

.field expeditionImage5:Ljava/lang/String;

.field expeditionImageId1:I

.field expeditionImageId2:I

.field expeditionImageId3:I

.field expeditionImageId4:I

.field expeditionImageId5:I

.field expeditionnum:Z

.field private handler:Landroid/os/Handler;

.field private hc:Lhttp/HTTPClient;

.field ip:Ljava/lang/String;

.field private iv_expedition1:Landroid/widget/ImageView;

.field private iv_expedition2:Landroid/widget/ImageView;

.field private iv_expedition3:Landroid/widget/ImageView;

.field private iv_expedition4:Landroid/widget/ImageView;

.field private iv_expedition5:Landroid/widget/ImageView;

.field lastAppVertion:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field notice:Ljava/lang/String;

.field notice2:Ljava/lang/String;

.field noticeversion:Ljava/lang/String;

.field qianCount:Ljava/lang/String;

.field qianInfo1:Ljava/lang/String;

.field qianInfo2:Ljava/lang/String;

.field qiannotice1:Z

.field qiannotice2:Z

.field qiannotice3:Z

.field qiannotice4:Z

.field qrecoveryTime:I

.field recoveryTime:I

.field resinCount:Ljava/lang/String;

.field resinInfo1:Ljava/lang/String;

.field resinInfo2:Ljava/lang/String;

.field resinnotice1:Z

.field resinnotice2:Z

.field resinnotice3:Z

.field resinnotice4:Z

.field serviceIntent:Landroid/content/Intent;

.field si:Lcore/systemInformation;

.field strEx1:Ljava/lang/String;

.field strEx2:Ljava/lang/String;

.field strEx3:Ljava/lang/String;

.field strEx4:Ljava/lang/String;

.field strEx5:Ljava/lang/String;

.field strTask:Ljava/lang/String;

.field private task8m:Ljava/util/TimerTask;

.field taskReceived:Z

.field text:I

.field private timer8m:Ljava/util/Timer;

.field private tv_expedition1:Landroid/widget/TextView;

.field private tv_expedition2:Landroid/widget/TextView;

.field private tv_expedition3:Landroid/widget/TextView;

.field private tv_expedition4:Landroid/widget/TextView;

.field private tv_expedition5:Landroid/widget/TextView;

.field private tv_expeditionCount:Landroid/widget/TextView;

.field private tv_notice:Landroid/widget/TextView;

.field private tv_resin:Landroid/widget/TextView;

.field private tv_task:Landroid/widget/TextView;

.field private tv_uid:Landroid/widget/TextView;

.field uid:Ljava/lang/String;

.field update:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Lnotification/baseService$1;

    invoke-direct {v0, p0}, Lnotification/baseService$1;-><init>(Lnotification/baseService;)V

    iput-object v0, p0, Lnotification/baseService;->handler:Landroid/os/Handler;

    .line 373
    const-string v0, "1.0"

    iput-object v0, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    .line 663
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lnotification/baseService;->timer8m:Ljava/util/Timer;

    .line 667
    new-instance v0, Lnotification/baseService$5;

    invoke-direct {v0, p0}, Lnotification/baseService$5;-><init>(Lnotification/baseService;)V

    iput-object v0, p0, Lnotification/baseService;->task8m:Ljava/util/TimerTask;

    .line 713
    new-instance v0, Lcore/systemInformation;

    invoke-direct {v0}, Lcore/systemInformation;-><init>()V

    iput-object v0, p0, Lnotification/baseService;->si:Lcore/systemInformation;

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lnotification/baseService;->cookie:Ljava/lang/String;

    .line 717
    iput-object v0, p0, Lnotification/baseService;->ip:Ljava/lang/String;

    .line 718
    iput-object v0, p0, Lnotification/baseService;->uid:Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lnotification/baseService;->expeditionImage1:Ljava/lang/String;

    .line 720
    iput-object v0, p0, Lnotification/baseService;->expeditionImage2:Ljava/lang/String;

    .line 721
    iput-object v0, p0, Lnotification/baseService;->expeditionImage3:Ljava/lang/String;

    .line 722
    iput-object v0, p0, Lnotification/baseService;->expeditionImage4:Ljava/lang/String;

    .line 723
    iput-object v0, p0, Lnotification/baseService;->expeditionImage5:Ljava/lang/String;

    .line 729
    iput-object v0, p0, Lnotification/baseService;->resinCount:Ljava/lang/String;

    .line 730
    iput-object v0, p0, Lnotification/baseService;->resinInfo1:Ljava/lang/String;

    .line 731
    iput-object v0, p0, Lnotification/baseService;->resinInfo2:Ljava/lang/String;

    .line 732
    iput-object v0, p0, Lnotification/baseService;->qianCount:Ljava/lang/String;

    .line 733
    iput-object v0, p0, Lnotification/baseService;->qianInfo1:Ljava/lang/String;

    .line 734
    iput-object v0, p0, Lnotification/baseService;->qianInfo2:Ljava/lang/String;

    .line 736
    iput-object v0, p0, Lnotification/baseService;->strTask:Ljava/lang/String;

    .line 737
    iput-object v0, p0, Lnotification/baseService;->expInfo1:Ljava/lang/String;

    .line 738
    iput-object v0, p0, Lnotification/baseService;->expInfo2:Ljava/lang/String;

    .line 739
    iput-object v0, p0, Lnotification/baseService;->expInfo3:Ljava/lang/String;

    .line 740
    iput-object v0, p0, Lnotification/baseService;->expInfo4:Ljava/lang/String;

    .line 741
    iput-object v0, p0, Lnotification/baseService;->expInfo5:Ljava/lang/String;

    .line 742
    iput-object v0, p0, Lnotification/baseService;->expInfo6:Ljava/lang/String;

    .line 743
    iput-object v0, p0, Lnotification/baseService;->expInfo7:Ljava/lang/String;

    .line 744
    iput-object v0, p0, Lnotification/baseService;->expInfo8:Ljava/lang/String;

    .line 745
    iput-object v0, p0, Lnotification/baseService;->expInfo9:Ljava/lang/String;

    .line 746
    iput-object v0, p0, Lnotification/baseService;->expInfo10:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Lnotification/baseService;->expCount:Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lnotification/baseService;->text:I

    .line 749
    const-string v1, ""

    iput-object v1, p0, Lnotification/baseService;->notice:Ljava/lang/String;

    .line 750
    iput-object v1, p0, Lnotification/baseService;->notice2:Ljava/lang/String;

    .line 751
    iput-object v1, p0, Lnotification/baseService;->noticeversion:Ljava/lang/String;

    .line 752
    iput-object v1, p0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    .line 753
    iput-object v1, p0, Lnotification/baseService;->update:Ljava/lang/String;

    .line 755
    iput-boolean v0, p0, Lnotification/baseService;->resinnotice1:Z

    .line 756
    iput-boolean v0, p0, Lnotification/baseService;->resinnotice2:Z

    .line 757
    iput-boolean v0, p0, Lnotification/baseService;->resinnotice3:Z

    .line 758
    iput-boolean v0, p0, Lnotification/baseService;->resinnotice4:Z

    .line 759
    iput-boolean v0, p0, Lnotification/baseService;->qiannotice1:Z

    .line 760
    iput-boolean v0, p0, Lnotification/baseService;->qiannotice2:Z

    .line 761
    iput-boolean v0, p0, Lnotification/baseService;->qiannotice3:Z

    .line 762
    iput-boolean v0, p0, Lnotification/baseService;->qiannotice4:Z

    .line 763
    iput-boolean v0, p0, Lnotification/baseService;->expeditionnum:Z

    .line 764
    iput-boolean v0, p0, Lnotification/baseService;->expedition1:Z

    .line 765
    iput-boolean v0, p0, Lnotification/baseService;->expedition2:Z

    .line 766
    iput-boolean v0, p0, Lnotification/baseService;->expedition3:Z

    .line 767
    iput-boolean v0, p0, Lnotification/baseService;->expedition4:Z

    .line 768
    iput-boolean v0, p0, Lnotification/baseService;->expedition5:Z

    .line 769
    const v2, 0x186a0

    iput v2, p0, Lnotification/baseService;->recoveryTime:I

    .line 770
    iput v2, p0, Lnotification/baseService;->qrecoveryTime:I

    .line 772
    iput-boolean v0, p0, Lnotification/baseService;->taskReceived:Z

    .line 773
    iput-object v1, p0, Lnotification/baseService;->strEx1:Ljava/lang/String;

    .line 774
    iput-object v1, p0, Lnotification/baseService;->strEx2:Ljava/lang/String;

    .line 775
    iput-object v1, p0, Lnotification/baseService;->strEx3:Ljava/lang/String;

    .line 776
    iput-object v1, p0, Lnotification/baseService;->strEx4:Ljava/lang/String;

    .line 777
    iput-object v1, p0, Lnotification/baseService;->strEx5:Ljava/lang/String;

    .line 778
    const-string v0, "\u80e1\u6843"

    iput-object v0, p0, Lnotification/baseService;->exName1:Ljava/lang/String;

    .line 779
    iput-object v0, p0, Lnotification/baseService;->exName2:Ljava/lang/String;

    .line 780
    iput-object v0, p0, Lnotification/baseService;->exName3:Ljava/lang/String;

    .line 781
    iput-object v0, p0, Lnotification/baseService;->exName4:Ljava/lang/String;

    .line 782
    iput-object v0, p0, Lnotification/baseService;->exName5:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->sendNotification()V

    return-void
.end method

.method static synthetic access$100(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->saveResinInfo()V

    return-void
.end method

.method static synthetic access$1000(Lnotification/baseService;)Lcom/example/cherisheveryminutemobile/UserDao;
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    iget-object v0, p0, Lnotification/baseService;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    return-object v0
.end method

.method static synthetic access$1100(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->getUserInfor()V

    return-void
.end method

.method static synthetic access$1200(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->getAppVersion()V

    return-void
.end method

.method static synthetic access$200(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->stratOngoingNotification()V

    return-void
.end method

.method static synthetic access$300(Lnotification/baseService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    iget-object v0, p0, Lnotification/baseService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lnotification/baseService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lnotification/baseService;->getImageId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->getResinInfo()V

    return-void
.end method

.method static synthetic access$600(Lnotification/baseService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->getSystemInfo()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lnotification/baseService;)V
    .locals 0
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    invoke-direct {p0}, Lnotification/baseService;->getIP()V

    return-void
.end method

.method static synthetic access$800(Lnotification/baseService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;

    .line 41
    invoke-direct/range {p0 .. p9}, Lnotification/baseService;->upLoadUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lnotification/baseService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnotification/baseService;

    .line 41
    iget-object v0, p0, Lnotification/baseService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAppVersion()V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/baseService$3;

    invoke-direct {v1, p0}, Lnotification/baseService$3;-><init>(Lnotification/baseService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void
.end method

.method private getIP()V
    .locals 4

    .line 402
    const-string v0, "https://ip.cn/api/index?ip=&type=0"

    .line 403
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lnotification/baseService;->uid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {v0}, Lhttp/HTTPClient;->doIpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "getip":Ljava/lang/String;
    new-instance v2, Lhttp/IpInfo;

    invoke-direct {v2}, Lhttp/IpInfo;-><init>()V

    .line 407
    .local v2, "ipinfo":Lhttp/IpInfo;
    :try_start_0
    invoke-static {v1}, Lhttp/IpInfo;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnotification/baseService;->ip:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    .line 408
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 412
    .end local v1    # "getip":Ljava/lang/String;
    .end local v2    # "ipinfo":Lhttp/IpInfo;
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getImageId(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lnotification/baseService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 430
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lnotification/baseService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getResinInfo()V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/baseService$4;

    invoke-direct {v1, p0}, Lnotification/baseService$4;-><init>(Lnotification/baseService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    return-void
.end method

.method private getSystemInfo()[Ljava/lang/String;
    .locals 11

    .line 379
    iget-object v0, p0, Lnotification/baseService;->si:Lcore/systemInformation;

    invoke-virtual {v0, p0}, Lcore/systemInformation;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lnotification/baseService;->si:Lcore/systemInformation;

    invoke-virtual {v0}, Lcore/systemInformation;->getNowTime()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "NowTime":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "DEVICE":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getModelName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "MODEL":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "systemVersion":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getBrand()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "BRAND":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getSDKVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "SDK":Ljava/lang/String;
    invoke-static {}, Lcore/systemInformation;->getDISPLAY()Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "DISPLAY":Ljava/lang/String;
    iget-object v7, p0, Lnotification/baseService;->si:Lcore/systemInformation;

    invoke-virtual {v7, p0}, Lcore/systemInformation;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "androidId":Ljava/lang/String;
    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    const/4 v9, 0x6

    aput-object v5, v8, v9

    const/4 v9, 0x7

    aput-object v6, v8, v9

    const/16 v9, 0x8

    aput-object v7, v8, v9

    .line 395
    .local v8, "a":[Ljava/lang/String;
    return-object v8
.end method

.method private getUserInfor()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/baseService$2;

    invoke-direct {v1, p0}, Lnotification/baseService$2;-><init>(Lnotification/baseService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    return-void
.end method

.method private intView()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lnotification/baseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnotification/baseService;->context:Landroid/content/Context;

    .line 189
    new-instance v0, Lhttp/HTTPClient;

    invoke-direct {v0}, Lhttp/HTTPClient;-><init>()V

    iput-object v0, p0, Lnotification/baseService;->hc:Lhttp/HTTPClient;

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnotification/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    .line 191
    new-instance v0, Lcom/example/cherisheveryminutemobile/UserDao;

    invoke-direct {v0}, Lcom/example/cherisheveryminutemobile/UserDao;-><init>()V

    iput-object v0, p0, Lnotification/baseService;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lnotification/baseService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnotification/baseService;->mainHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method private loadUser()V
    .locals 3

    .line 418
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnotification/baseService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnotification/baseService;->uid:Ljava/lang/String;

    .line 420
    const-string v1, "COOKIE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnotification/baseService;->cookie:Ljava/lang/String;

    .line 421
    return-void
.end method

.method private saveAppInfo()V
    .locals 4

    .line 267
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnotification/baseService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 268
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lnotification/baseService;->uid:Ljava/lang/String;

    const-string v3, "UID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    iget-object v2, p0, Lnotification/baseService;->cookie:Ljava/lang/String;

    const-string v3, "COOKIE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method private saveResinInfo()V
    .locals 4

    .line 131
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnotification/baseService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lnotification/baseService;->expeditionImageId1:I

    const-string v3, "expeditionImageId1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget v2, p0, Lnotification/baseService;->expeditionImageId2:I

    const-string v3, "expeditionImageId2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget v2, p0, Lnotification/baseService;->expeditionImageId3:I

    const-string v3, "expeditionImageId3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget v2, p0, Lnotification/baseService;->expeditionImageId4:I

    const-string v3, "expeditionImageId4"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget v2, p0, Lnotification/baseService;->expeditionImageId5:I

    const-string v3, "expeditionImageId5"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v2, p0, Lnotification/baseService;->notice:Ljava/lang/String;

    const-string v3, "notice"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v2, p0, Lnotification/baseService;->notice2:Ljava/lang/String;

    const-string v3, "notice2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v2, p0, Lnotification/baseService;->noticeversion:Ljava/lang/String;

    const-string v3, "noticeversion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v2, p0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    const-string v3, "lastAppVertion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v2, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    const-string v3, "appVertion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v2, p0, Lnotification/baseService;->expInfo1:Ljava/lang/String;

    const-string v3, "expInfo1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v2, p0, Lnotification/baseService;->expInfo2:Ljava/lang/String;

    const-string v3, "expInfo2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v2, p0, Lnotification/baseService;->expInfo3:Ljava/lang/String;

    const-string v3, "expInfo3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v2, p0, Lnotification/baseService;->expInfo4:Ljava/lang/String;

    const-string v3, "expInfo4"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v2, p0, Lnotification/baseService;->expInfo5:Ljava/lang/String;

    const-string v3, "expInfo5"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v2, p0, Lnotification/baseService;->expInfo6:Ljava/lang/String;

    const-string v3, "expInfo6"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v2, p0, Lnotification/baseService;->expInfo7:Ljava/lang/String;

    const-string v3, "expInfo7"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v2, p0, Lnotification/baseService;->expInfo8:Ljava/lang/String;

    const-string v3, "expInfo8"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v2, p0, Lnotification/baseService;->expInfo9:Ljava/lang/String;

    const-string v3, "expInfo9"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v2, p0, Lnotification/baseService;->expInfo10:Ljava/lang/String;

    const-string v3, "expInfo10"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v2, p0, Lnotification/baseService;->expCount:Ljava/lang/String;

    const-string v3, "expCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v2, p0, Lnotification/baseService;->resinCount:Ljava/lang/String;

    const-string v3, "resinCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v2, p0, Lnotification/baseService;->resinInfo1:Ljava/lang/String;

    const-string v3, "resinInfo1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object v2, p0, Lnotification/baseService;->resinInfo2:Ljava/lang/String;

    const-string v3, "resinInfo2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v2, p0, Lnotification/baseService;->strTask:Ljava/lang/String;

    const-string v3, "strTask"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-boolean v2, p0, Lnotification/baseService;->taskReceived:Z

    const-string v3, "taskReceived"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v2, p0, Lnotification/baseService;->qianCount:Ljava/lang/String;

    const-string v3, "qianCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v2, p0, Lnotification/baseService;->qianInfo1:Ljava/lang/String;

    const-string v3, "qianInfo1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v2, p0, Lnotification/baseService;->qianInfo2:Ljava/lang/String;

    const-string v3, "qianInfo2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget v2, p0, Lnotification/baseService;->recoveryTime:I

    const-string v3, "recoveryTime"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget v2, p0, Lnotification/baseService;->qrecoveryTime:I

    const-string v3, "qrecoveryTime"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-boolean v2, p0, Lnotification/baseService;->resinnotice1:Z

    const-string v3, "resinnotice1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-boolean v2, p0, Lnotification/baseService;->resinnotice2:Z

    const-string v3, "resinnotice2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-boolean v2, p0, Lnotification/baseService;->resinnotice3:Z

    const-string v3, "resinnotice3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-boolean v2, p0, Lnotification/baseService;->resinnotice4:Z

    const-string v3, "resinnotice4"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-boolean v2, p0, Lnotification/baseService;->qiannotice1:Z

    const-string v3, "qiannotice1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-boolean v2, p0, Lnotification/baseService;->qiannotice2:Z

    const-string v3, "qiannotice2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-boolean v2, p0, Lnotification/baseService;->qiannotice3:Z

    const-string v3, "qiannotice3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-boolean v2, p0, Lnotification/baseService;->qiannotice4:Z

    const-string v3, "qiannotice4"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-boolean v2, p0, Lnotification/baseService;->expedition1:Z

    const-string v3, "expedition1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-boolean v2, p0, Lnotification/baseService;->expedition2:Z

    const-string v3, "expedition2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-boolean v2, p0, Lnotification/baseService;->expedition3:Z

    const-string v3, "expedition3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-boolean v2, p0, Lnotification/baseService;->expedition4:Z

    const-string v3, "expedition4"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    iget-boolean v2, p0, Lnotification/baseService;->expedition5:Z

    const-string v3, "expedition5"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method private sendNotification()V
    .locals 30

    .line 462
    move-object/from16 v13, p0

    iget v0, v13, Lnotification/baseService;->recoveryTime:I

    const/16 v14, 0x1c20

    const/16 v15, 0x258

    const/16 v12, 0xe10

    const-string v1, "\u6811\u8102\u8fd8\u6709"

    const-string v11, "\u5c31\u6ee1\u4e86!"

    const/4 v10, 0x0

    .line 470
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 462
    const/4 v9, 0x1

    .line 470
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 462
    if-le v0, v12, :cond_1

    if-ge v0, v14, :cond_1

    .line 465
    iget-boolean v2, v13, Lnotification/baseService;->resinnotice1:Z

    if-nez v2, :cond_0

    .line 467
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x0

    .line 470
    nop

    .line 468
    const-string v1, "\u6811\u8102\u63d0\u9192"

    const-string v2, "\u6811\u8102\u4e24\u5c0f\u65f6\u63d0\u9192"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v19, v8

    .end local v8    # "rt":Ljava/lang/String;
    .local v19, "rt":Ljava/lang/String;
    move/from16 v8, v18

    const/4 v14, 0x1

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 471
    iput-boolean v14, v13, Lnotification/baseService;->resinnotice1:Z

    .line 472
    .end local v19    # "rt":Ljava/lang/String;
    move-object/from16 v15, v20

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 465
    :cond_0
    move-object/from16 v20, v11

    const/4 v14, 0x1

    move-object/from16 v15, v20

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 462
    :cond_1
    move-object/from16 v20, v11

    const/4 v14, 0x1

    .line 473
    if-le v0, v15, :cond_3

    const/16 v12, 0xe10

    if-ge v0, v12, :cond_3

    .line 476
    iget-boolean v2, v13, Lnotification/baseService;->resinnotice2:Z

    if-nez v2, :cond_2

    .line 478
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 481
    nop

    .line 479
    const-string v1, "\u6811\u8102\u63d0\u9192"

    const-string v2, "\u6811\u8102\u4e00\u5c0f\u65f6\u63d0\u9192"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v19, v11

    .end local v11    # "rt":Ljava/lang/String;
    .restart local v19    # "rt":Ljava/lang/String;
    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 482
    iput-boolean v14, v13, Lnotification/baseService;->resinnotice2:Z

    .line 483
    .end local v19    # "rt":Ljava/lang/String;
    move-object/from16 v15, v21

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 476
    :cond_2
    move-object/from16 v21, v20

    move-object/from16 v15, v21

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 473
    :cond_3
    move-object/from16 v21, v20

    .line 484
    if-lez v0, :cond_5

    if-ge v0, v15, :cond_5

    .line 487
    iget-boolean v2, v13, Lnotification/baseService;->resinnotice3:Z

    if-nez v2, :cond_4

    .line 489
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 492
    nop

    .line 490
    const-string v1, "\u6811\u8102\u63d0\u9192"

    const-string v2, "\u6811\u8102\u5341\u5206\u949f\u63d0\u9192"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v15, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v12

    .end local v12    # "rt":Ljava/lang/String;
    .local v20, "rt":Ljava/lang/String;
    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 493
    iput-boolean v14, v13, Lnotification/baseService;->resinnotice3:Z

    .line 494
    .end local v20    # "rt":Ljava/lang/String;
    const/4 v12, 0x0

    goto :goto_0

    .line 487
    :cond_4
    move-object/from16 v15, v21

    const/4 v12, 0x0

    goto :goto_0

    .line 484
    :cond_5
    move-object/from16 v15, v21

    .line 495
    if-nez v0, :cond_7

    .line 498
    iget-boolean v0, v13, Lnotification/baseService;->resinnotice4:Z

    if-nez v0, :cond_6

    .line 501
    const/4 v8, 0x0

    .line 503
    nop

    .line 501
    const-string v1, "\u6811\u8102\u63d0\u9192"

    const-string v2, "\u6811\u8102\u6ee1\u4e86\u63d0\u9192"

    const-string v3, "\u6811\u8102\u5df2\u7ecf\u6ee1\u4e86\uff01"

    const-string v4, "\u6811\u8102\u5df2\u7ecf\u6ee1\u4e86\uff01"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 504
    iput-boolean v14, v13, Lnotification/baseService;->resinnotice4:Z

    const/4 v12, 0x0

    goto :goto_0

    .line 498
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 509
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, v13, Lnotification/baseService;->resinnotice1:Z

    .line 510
    iput-boolean v12, v13, Lnotification/baseService;->resinnotice2:Z

    .line 511
    iput-boolean v12, v13, Lnotification/baseService;->resinnotice3:Z

    .line 512
    iput-boolean v12, v13, Lnotification/baseService;->resinnotice4:Z

    .line 515
    :goto_0
    iget v0, v13, Lnotification/baseService;->qrecoveryTime:I

    const-string v1, "\u5b9d\u94b1\u8fd8\u6709"

    const/16 v2, 0xe10

    if-le v0, v2, :cond_9

    const/16 v3, 0x1c20

    if-ge v0, v3, :cond_9

    .line 518
    iget-boolean v2, v13, Lnotification/baseService;->qiannotice1:Z

    if-nez v2, :cond_8

    .line 520
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v11

    .line 521
    .restart local v11    # "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 523
    nop

    .line 521
    const-string v1, "\u5b9d\u94b1\u63d0\u9192"

    const-string v2, "\u5b9d\u94b1\u4e24\u5c0f\u65f6\u63d0\u9192"

    const-string v5, "qian"

    const-string v6, "qian"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v15, v11

    .end local v11    # "rt":Ljava/lang/String;
    .local v15, "rt":Ljava/lang/String;
    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 524
    iput-boolean v14, v13, Lnotification/baseService;->qiannotice1:Z

    .line 525
    .end local v15    # "rt":Ljava/lang/String;
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 518
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 526
    :cond_9
    const/16 v3, 0x258

    if-le v0, v3, :cond_b

    if-ge v0, v2, :cond_b

    .line 529
    iget-boolean v2, v13, Lnotification/baseService;->qiannotice2:Z

    if-nez v2, :cond_a

    .line 531
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v12

    .line 532
    .restart local v12    # "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 534
    nop

    .line 532
    const-string v1, "\u5b9d\u94b1\u63d0\u9192"

    const-string v2, "\u5b9d\u94b1\u4e00\u5c0f\u65f6\u63d0\u9192"

    const-string v5, "qian"

    const-string v6, "qian"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object v15, v12

    .end local v12    # "rt":Ljava/lang/String;
    .restart local v15    # "rt":Ljava/lang/String;
    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 535
    iput-boolean v14, v13, Lnotification/baseService;->qiannotice2:Z

    .line 536
    .end local v15    # "rt":Ljava/lang/String;
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 529
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 537
    :cond_b
    if-lez v0, :cond_d

    const/16 v2, 0x258

    if-ge v0, v2, :cond_d

    .line 540
    iget-boolean v2, v13, Lnotification/baseService;->qiannotice3:Z

    if-nez v2, :cond_c

    .line 542
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v12

    .line 543
    .restart local v12    # "rt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 545
    nop

    .line 543
    const-string v1, "\u5b9d\u94b1\u63d0\u9192"

    const-string v2, "\u5b9d\u94b1\u5341\u5206\u949f\u63d0\u9192"

    const-string v5, "qian"

    const-string v6, "qian"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object v15, v12

    .end local v12    # "rt":Ljava/lang/String;
    .restart local v15    # "rt":Ljava/lang/String;
    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 546
    iput-boolean v14, v13, Lnotification/baseService;->qiannotice3:Z

    .line 547
    .end local v15    # "rt":Ljava/lang/String;
    const/4 v15, 0x0

    goto :goto_1

    .line 540
    :cond_c
    const/4 v15, 0x0

    goto :goto_1

    .line 548
    :cond_d
    if-nez v0, :cond_f

    .line 551
    iget-boolean v1, v13, Lnotification/baseService;->qiannotice4:Z

    if-nez v1, :cond_e

    .line 553
    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v15

    .line 554
    .restart local v15    # "rt":Ljava/lang/String;
    const/4 v8, 0x0

    .line 556
    nop

    .line 554
    const-string v1, "\u5b9d\u94b1\u63d0\u9192"

    const-string v2, "\u5b9d\u94b1\u6ee1\u4e86\u63d0\u9192"

    const-string v3, "\u5b9d\u94b1\u5df2\u7ecf\u6ee1\u4e86\uff01"

    const-string v4, "\u5b9d\u94b1\u5df2\u7ecf\u6ee1\u4e86\uff01"

    const-string v5, "qian"

    const-string v6, "qian"

    const-string v7, "\u6811\u8102\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 557
    iput-boolean v14, v13, Lnotification/baseService;->qiannotice4:Z

    .line 558
    .end local v15    # "rt":Ljava/lang/String;
    const/4 v15, 0x0

    goto :goto_1

    .line 551
    :cond_e
    const/4 v15, 0x0

    goto :goto_1

    .line 562
    :cond_f
    const/4 v15, 0x0

    iput-boolean v15, v13, Lnotification/baseService;->qiannotice1:Z

    .line 563
    iput-boolean v15, v13, Lnotification/baseService;->qiannotice2:Z

    .line 564
    iput-boolean v15, v13, Lnotification/baseService;->qiannotice3:Z

    .line 565
    iput-boolean v15, v13, Lnotification/baseService;->qiannotice4:Z

    .line 568
    :goto_1
    iget-object v0, v13, Lnotification/baseService;->strEx1:Ljava/lang/String;

    const-string v12, "Finished"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    if-eqz v0, :cond_11

    .line 570
    iget-boolean v0, v13, Lnotification/baseService;->expedition1:Z

    if-nez v0, :cond_10

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lnotification/baseService;->exName1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lnotification/baseService;->expeditionImage1:Ljava/lang/String;

    const/4 v8, 0x0

    .line 574
    nop

    .line 572
    const-string v1, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v2, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v4, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    const-string v6, "shuzhi"

    const-string v7, "\u63a2\u7d22\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    move-object/from16 v23, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 575
    iput-boolean v14, v13, Lnotification/baseService;->expedition1:Z

    goto :goto_2

    .line 570
    :cond_10
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    goto :goto_2

    .line 579
    :cond_11
    move-object/from16 v22, v11

    move-object/from16 v23, v12

    iput-boolean v15, v13, Lnotification/baseService;->expedition1:Z

    .line 581
    :goto_2
    iget-object v0, v13, Lnotification/baseService;->strEx2:Ljava/lang/String;

    move-object/from16 v12, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 583
    iget-boolean v0, v13, Lnotification/baseService;->expedition2:Z

    if-nez v0, :cond_12

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lnotification/baseService;->exName2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lnotification/baseService;->expeditionImage2:Ljava/lang/String;

    const/4 v8, 0x0

    .line 587
    nop

    .line 585
    const-string v1, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v2, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v4, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    const-string v6, "shuzhi"

    const-string v7, "\u63a2\u7d22\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v24, v11

    move-object/from16 v11, v16

    move-object/from16 v25, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 588
    iput-boolean v14, v13, Lnotification/baseService;->expedition2:Z

    goto :goto_3

    .line 583
    :cond_12
    move-object/from16 v25, v12

    move-object/from16 v24, v22

    goto :goto_3

    .line 592
    :cond_13
    move-object/from16 v25, v12

    move-object/from16 v24, v22

    iput-boolean v15, v13, Lnotification/baseService;->expedition2:Z

    .line 594
    :goto_3
    iget-object v0, v13, Lnotification/baseService;->strEx3:Ljava/lang/String;

    move-object/from16 v12, v25

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 596
    iget-boolean v0, v13, Lnotification/baseService;->expedition3:Z

    if-nez v0, :cond_14

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lnotification/baseService;->exName3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lnotification/baseService;->expeditionImage3:Ljava/lang/String;

    const/4 v8, 0x0

    .line 600
    nop

    .line 598
    const-string v1, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v2, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v4, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    const-string v6, "shuzhi"

    const-string v7, "\u63a2\u7d22\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v26, v11

    move-object/from16 v11, v16

    move-object/from16 v27, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 601
    iput-boolean v14, v13, Lnotification/baseService;->expedition3:Z

    goto :goto_4

    .line 596
    :cond_14
    move-object/from16 v27, v12

    move-object/from16 v26, v24

    goto :goto_4

    .line 605
    :cond_15
    move-object/from16 v27, v12

    move-object/from16 v26, v24

    iput-boolean v15, v13, Lnotification/baseService;->expedition3:Z

    .line 607
    :goto_4
    iget-object v0, v13, Lnotification/baseService;->strEx4:Ljava/lang/String;

    move-object/from16 v12, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 609
    iget-boolean v0, v13, Lnotification/baseService;->expedition4:Z

    if-nez v0, :cond_16

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lnotification/baseService;->exName4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lnotification/baseService;->expeditionImage4:Ljava/lang/String;

    const/4 v8, 0x0

    .line 613
    nop

    .line 611
    const-string v1, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v2, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v4, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    const-string v6, "shuzhi"

    const-string v7, "\u63a2\u7d22\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v28, v11

    move-object/from16 v11, v16

    move-object/from16 v29, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 614
    iput-boolean v14, v13, Lnotification/baseService;->expedition4:Z

    goto :goto_5

    .line 609
    :cond_16
    move-object/from16 v29, v12

    move-object/from16 v28, v26

    goto :goto_5

    .line 618
    :cond_17
    move-object/from16 v29, v12

    move-object/from16 v28, v26

    iput-boolean v15, v13, Lnotification/baseService;->expedition4:Z

    .line 620
    :goto_5
    iget-object v0, v13, Lnotification/baseService;->strEx5:Ljava/lang/String;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 622
    iget-boolean v0, v13, Lnotification/baseService;->expedition5:Z

    if-nez v0, :cond_19

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lnotification/baseService;->exName5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lnotification/baseService;->expeditionImage5:Ljava/lang/String;

    const/4 v8, 0x0

    .line 626
    nop

    .line 624
    const-string v1, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v2, "\u63a2\u7d22\u5b8c\u6210\u63d0\u9192"

    const-string v4, "\u63a2\u7d22\u5df2\u5b8c\u6210"

    const-string v6, "shuzhi"

    const-string v7, "\u63a2\u7d22\u63d0\u9192\u901a\u77e5"

    move-object/from16 v0, p0

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lnotification/baseService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 627
    iput-boolean v14, v13, Lnotification/baseService;->expedition5:Z

    goto :goto_6

    .line 631
    :cond_18
    iput-boolean v15, v13, Lnotification/baseService;->expedition5:Z

    .line 633
    :cond_19
    :goto_6
    return-void
.end method

.method private start()V
    .locals 6

    .line 199
    invoke-direct {p0}, Lnotification/baseService;->loadUser()V

    .line 200
    iget-object v0, p0, Lnotification/baseService;->timer8m:Ljava/util/Timer;

    iget-object v1, p0, Lnotification/baseService;->task8m:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x75300

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 202
    return-void
.end method

.method private startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "SubText"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "pic"    # Ljava/lang/String;
    .param p6, "image"    # Ljava/lang/String;
    .param p7, "channel_id"    # Ljava/lang/String;
    .param p8, "isSound"    # Z
    .param p9, "isShowLock"    # Ljava/lang/Boolean;
    .param p10, "isHeads"    # Ljava/lang/Boolean;
    .param p11, "isAutoCancel"    # Ljava/lang/Boolean;
    .param p12, "isOnly"    # Ljava/lang/Boolean;

    .line 653
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lnotification/baseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lnotification/baseService;->context:Landroid/content/Context;

    .line 655
    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lnotification/baseService;->getImageId(Ljava/lang/String;)I

    move-result v15

    .line 656
    .local v15, "picId":I
    move-object/from16 v14, p6

    invoke-direct {v0, v14}, Lnotification/baseService;->getImageId(Ljava/lang/String;)I

    move-result v16

    .line 658
    .local v16, "imageId":I
    iget-object v9, v0, Lnotification/baseService;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object/from16 v2, p4

    move/from16 v3, v16

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v15

    move-object/from16 v8, p7

    move/from16 v14, v17

    invoke-static/range {v2 .. v14}, Lnotification/noticationServiceDome;->bigText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;ZZZZZ)V

    .line 661
    return-void
.end method

.method private stratOngoingNotification()V
    .locals 3

    .line 437
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->resinCount:Ljava/lang/String;

    const-string v2, "resinCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->resinInfo1:Ljava/lang/String;

    const-string v2, "resinInfo1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget v1, p0, Lnotification/baseService;->expeditionImageId1:I

    const-string v2, "expeditionImageId1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget v1, p0, Lnotification/baseService;->expeditionImageId2:I

    const-string v2, "expeditionImageId2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget v1, p0, Lnotification/baseService;->expeditionImageId3:I

    const-string v2, "expeditionImageId3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget v1, p0, Lnotification/baseService;->expeditionImageId4:I

    const-string v2, "expeditionImageId4"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget v1, p0, Lnotification/baseService;->expeditionImageId5:I

    const-string v2, "expeditionImageId5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->expInfo1:Ljava/lang/String;

    const-string v2, "expInfo1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->expInfo3:Ljava/lang/String;

    const-string v2, "expInfo2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->expInfo5:Ljava/lang/String;

    const-string v2, "expInfo3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->expInfo7:Ljava/lang/String;

    const-string v2, "expInfo4"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->expInfo9:Ljava/lang/String;

    const-string v2, "expInfo5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v0, p0, Lnotification/baseService;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnotification/baseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    return-void
.end method

.method private upLoadUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "appVertion"    # Ljava/lang/String;
    .param p2, "lastdate"    # Ljava/lang/String;
    .param p3, "DEVICE"    # Ljava/lang/String;
    .param p4, "MODEL"    # Ljava/lang/String;
    .param p5, "RELEASE"    # Ljava/lang/String;
    .param p6, "BRAND"    # Ljava/lang/String;
    .param p7, "SDK"    # Ljava/lang/String;
    .param p8, "DISPLAY"    # Ljava/lang/String;
    .param p9, "androidId"    # Ljava/lang/String;

    .line 364
    move-object v0, p0

    iget-object v1, v0, Lnotification/baseService;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v2, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/example/cherisheveryminutemobile/UserDao;->getUid(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, "item":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 366
    iget-object v3, v0, Lnotification/baseService;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v4, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    iget-object v5, v0, Lnotification/baseService;->ip:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/example/cherisheveryminutemobile/UserDao;->edtUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "sdf":I
    goto :goto_0

    .line 369
    .end local v2    # "sdf":I
    :cond_0
    iget-object v3, v0, Lnotification/baseService;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v4, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    iget-object v5, v0, Lnotification/baseService;->ip:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/example/cherisheveryminutemobile/UserDao;->addUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 371
    .restart local v2    # "sdf":I
    :goto_0
    return v2
.end method

.method private useAppInfo()V
    .locals 3

    .line 252
    iget-object v0, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    iget-object v1, p0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnotification/baseService;->context:Landroid/content/Context;

    const-class v2, LUI/Activity_Update;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnotification/baseService;->startActivity(Landroid/content/Intent;)V

    .line 261
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    invoke-direct {p0}, Lnotification/baseService;->intView()V

    .line 58
    invoke-direct {p0}, Lnotification/baseService;->start()V

    .line 59
    const-string v0, "SimpleService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 703
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 704
    const-string v0, "SimpleService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 64
    const-string v0, "SimpleService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
