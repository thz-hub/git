.class public LUI/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field appVertion:Ljava/lang/String;

.field bitmap:Landroid/graphics/Bitmap;

.field private btn_Cooopy:Landroid/widget/Button;

.field private btn_Sign:Landroid/widget/Button;

.field private btn_getinfo:Landroid/widget/Button;

.field private btn_gongju:Landroid/widget/Button;

.field private btn_set:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field cookie:Ljava/lang/String;

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

.field expeditionImageId1:I

.field expeditionImageId2:I

.field expeditionImageId3:I

.field expeditionImageId4:I

.field expeditionImageId5:I

.field expeditionnum:Z

.field private handler:Landroid/os/Handler;

.field private imagetest:Landroid/widget/ImageView;

.field private iv_expedition1:Landroid/widget/ImageView;

.field private iv_expedition2:Landroid/widget/ImageView;

.field private iv_expedition3:Landroid/widget/ImageView;

.field private iv_expedition4:Landroid/widget/ImageView;

.field private iv_expedition5:Landroid/widget/ImageView;

.field lastAppVertion:Ljava/lang/String;

.field notice:Ljava/lang/String;

.field notice2:Ljava/lang/String;

.field noticeversion:Ljava/lang/String;

.field noticeversionlocal:Ljava/lang/String;

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

.field si:Lcore/systemInformation;

.field strTask:Ljava/lang/String;

.field private task5m:Ljava/util/TimerTask;

.field private task8m:Ljava/util/TimerTask;

.field private timer5m:Ljava/util/Timer;

.field private timer8m:Ljava/util/Timer;

.field private tv_expedition1:Landroid/widget/TextView;

.field private tv_expedition2:Landroid/widget/TextView;

.field private tv_expedition3:Landroid/widget/TextView;

.field private tv_expedition4:Landroid/widget/TextView;

.field private tv_expedition5:Landroid/widget/TextView;

.field private tv_expeditionCount:Landroid/widget/TextView;

.field private tv_notice:Landroid/widget/TextView;

.field private tv_notice2:Landroid/widget/TextView;

.field private tv_qian:Landroid/widget/TextView;

.field private tv_resin:Landroid/widget/TextView;

.field private tv_task:Landroid/widget/TextView;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 59
    new-instance v0, Lcore/systemInformation;

    invoke-direct {v0}, Lcore/systemInformation;-><init>()V

    iput-object v0, p0, LUI/MainActivity;->si:Lcore/systemInformation;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, LUI/MainActivity;->cookie:Ljava/lang/String;

    .line 63
    iput-object v0, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    .line 69
    iput-object v0, p0, LUI/MainActivity;->resinCount:Ljava/lang/String;

    .line 70
    iput-object v0, p0, LUI/MainActivity;->resinInfo1:Ljava/lang/String;

    .line 71
    iput-object v0, p0, LUI/MainActivity;->resinInfo2:Ljava/lang/String;

    .line 72
    iput-object v0, p0, LUI/MainActivity;->qianCount:Ljava/lang/String;

    .line 73
    iput-object v0, p0, LUI/MainActivity;->qianInfo1:Ljava/lang/String;

    .line 74
    iput-object v0, p0, LUI/MainActivity;->qianInfo2:Ljava/lang/String;

    .line 76
    iput-object v0, p0, LUI/MainActivity;->strTask:Ljava/lang/String;

    .line 77
    iput-object v0, p0, LUI/MainActivity;->expInfo1:Ljava/lang/String;

    .line 78
    iput-object v0, p0, LUI/MainActivity;->expInfo2:Ljava/lang/String;

    .line 79
    iput-object v0, p0, LUI/MainActivity;->expInfo3:Ljava/lang/String;

    .line 80
    iput-object v0, p0, LUI/MainActivity;->expInfo4:Ljava/lang/String;

    .line 81
    iput-object v0, p0, LUI/MainActivity;->expInfo5:Ljava/lang/String;

    .line 82
    iput-object v0, p0, LUI/MainActivity;->expInfo6:Ljava/lang/String;

    .line 83
    iput-object v0, p0, LUI/MainActivity;->expInfo7:Ljava/lang/String;

    .line 84
    iput-object v0, p0, LUI/MainActivity;->expInfo8:Ljava/lang/String;

    .line 85
    iput-object v0, p0, LUI/MainActivity;->expInfo9:Ljava/lang/String;

    .line 86
    iput-object v0, p0, LUI/MainActivity;->expInfo10:Ljava/lang/String;

    .line 87
    iput-object v0, p0, LUI/MainActivity;->expCount:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, LUI/MainActivity;->notice:Ljava/lang/String;

    .line 89
    iput-object v0, p0, LUI/MainActivity;->notice2:Ljava/lang/String;

    .line 90
    iput-object v0, p0, LUI/MainActivity;->noticeversion:Ljava/lang/String;

    .line 91
    iput-object v0, p0, LUI/MainActivity;->lastAppVertion:Ljava/lang/String;

    .line 94
    new-instance v1, LUI/MainActivity$1;

    invoke-direct {v1, p0}, LUI/MainActivity$1;-><init>(LUI/MainActivity;)V

    iput-object v1, p0, LUI/MainActivity;->handler:Landroid/os/Handler;

    .line 188
    iput-object v0, p0, LUI/MainActivity;->noticeversionlocal:Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, LUI/MainActivity;->timer8m:Ljava/util/Timer;

    .line 304
    new-instance v0, LUI/MainActivity$3;

    invoke-direct {v0, p0}, LUI/MainActivity$3;-><init>(LUI/MainActivity;)V

    iput-object v0, p0, LUI/MainActivity;->task8m:Ljava/util/TimerTask;

    .line 324
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, LUI/MainActivity;->timer5m:Ljava/util/Timer;

    .line 328
    new-instance v0, LUI/MainActivity$4;

    invoke-direct {v0, p0}, LUI/MainActivity$4;-><init>(LUI/MainActivity;)V

    iput-object v0, p0, LUI/MainActivity;->task5m:Ljava/util/TimerTask;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, LUI/MainActivity;->resinnotice1:Z

    .line 444
    iput-boolean v0, p0, LUI/MainActivity;->resinnotice2:Z

    .line 445
    iput-boolean v0, p0, LUI/MainActivity;->resinnotice3:Z

    .line 446
    iput-boolean v0, p0, LUI/MainActivity;->resinnotice4:Z

    .line 447
    iput-boolean v0, p0, LUI/MainActivity;->qiannotice1:Z

    .line 448
    iput-boolean v0, p0, LUI/MainActivity;->qiannotice2:Z

    .line 449
    iput-boolean v0, p0, LUI/MainActivity;->qiannotice3:Z

    .line 450
    iput-boolean v0, p0, LUI/MainActivity;->qiannotice4:Z

    .line 451
    iput-boolean v0, p0, LUI/MainActivity;->expeditionnum:Z

    .line 452
    iput-boolean v0, p0, LUI/MainActivity;->expedition1:Z

    .line 453
    iput-boolean v0, p0, LUI/MainActivity;->expedition2:Z

    .line 454
    iput-boolean v0, p0, LUI/MainActivity;->expedition3:Z

    .line 455
    iput-boolean v0, p0, LUI/MainActivity;->expedition4:Z

    .line 456
    iput-boolean v0, p0, LUI/MainActivity;->expedition5:Z

    .line 457
    iput v0, p0, LUI/MainActivity;->recoveryTime:I

    .line 458
    iput v0, p0, LUI/MainActivity;->qrecoveryTime:I

    .line 531
    const-string v0, "1.0"

    iput-object v0, p0, LUI/MainActivity;->appVertion:Ljava/lang/String;

    return-void
.end method

.method private Cooopy()V
    .locals 4

    .line 421
    const-string v0, ""

    .line 422
    .local v0, "mssg":Ljava/lang/String;
    invoke-direct {p0}, LUI/MainActivity;->loadcopyInfo()V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "recovertime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LUI/MainActivity;->recoveryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "qrecoveryTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LUI/MainActivity;->qrecoveryTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resinnotice1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->resinnotice1:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resinnotice2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->resinnotice2:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resinnotice3 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->resinnotice3:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resinnotice4 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->resinnotice4:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "qiannotice1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->qiannotice1:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "qiannotice2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->qiannotice2:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "qiannotice3 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->qiannotice3:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "qiannotice4 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->qiannotice4:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expedition1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->expedition1:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expedition2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->expedition2:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expedition3 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->expedition3:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expedition4 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->expedition4:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expedition5 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LUI/MainActivity;->expedition5:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, LUI/MainActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcore/ClipBoard;->sendstrToClipBoard(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    const-string v1, "\u5df2\u590d\u5236\uff0c\u8bf7\u5c06\u590d\u5236\u5230\u7684\u4fe1\u606f\u53d1\u7ed9\u7fa4\u4e3b\u3002"

    invoke-static {p0, v1}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method static synthetic access$000(LUI/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # LUI/MainActivity;

    .line 53
    iget-object v0, p0, LUI/MainActivity;->imagetest:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(LUI/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # LUI/MainActivity;

    .line 53
    iget-object v0, p0, LUI/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(LUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # LUI/MainActivity;

    .line 53
    invoke-direct {p0}, LUI/MainActivity;->loadResinInfo()V

    return-void
.end method

.method static synthetic access$300(LUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # LUI/MainActivity;

    .line 53
    invoke-direct {p0}, LUI/MainActivity;->setText()V

    return-void
.end method

.method static synthetic access$400(LUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # LUI/MainActivity;

    .line 53
    invoke-direct {p0}, LUI/MainActivity;->loadUser()V

    return-void
.end method

.method private imageGet()V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LUI/MainActivity$2;

    invoke-direct {v1, p0}, LUI/MainActivity$2;-><init>(LUI/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 275
    return-void
.end method

.method private intView()V
    .locals 3

    .line 205
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/MainActivity;->btn_set:Landroid/widget/Button;

    .line 206
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/MainActivity;->btn_getinfo:Landroid/widget/Button;

    .line 207
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/MainActivity;->btn_gongju:Landroid/widget/Button;

    .line 208
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/MainActivity;->btn_Sign:Landroid/widget/Button;

    .line 209
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/MainActivity;->btn_Cooopy:Landroid/widget/Button;

    .line 210
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_task:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_resin:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_qian:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_notice:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0801f6

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_notice2:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LUI/MainActivity;->iv_expedition1:Landroid/widget/ImageView;

    .line 216
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LUI/MainActivity;->iv_expedition2:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LUI/MainActivity;->iv_expedition3:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LUI/MainActivity;->iv_expedition4:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LUI/MainActivity;->iv_expedition5:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expedition1:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expedition2:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expedition3:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expedition4:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expedition5:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, LUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/MainActivity;->tv_expeditionCount:Landroid/widget/TextView;

    .line 229
    invoke-virtual {p0}, LUI/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    .line 231
    invoke-direct {p0}, LUI/MainActivity;->loadUser()V

    .line 232
    iget-object v0, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u6d4b\u8bd5UID"

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, LUI/MainActivity;->startBaseService()V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid: \u4e0d\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, LUI/MainActivity;->startCalendarService()V

    .line 236
    invoke-direct {p0}, LUI/MainActivity;->startResinService()V

    .line 237
    invoke-direct {p0}, LUI/MainActivity;->startAllService()V

    .line 238
    invoke-direct {p0}, LUI/MainActivity;->startFangResinService()V

    .line 239
    invoke-direct {p0}, LUI/MainActivity;->startDanResinService()V

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid: \u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    invoke-direct {p0}, LUI/MainActivity;->resignBroadcastReceiver()V

    .line 246
    iget-object v0, p0, LUI/MainActivity;->btn_getinfo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, LUI/MainActivity;->btn_set:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, LUI/MainActivity;->btn_gongju:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, LUI/MainActivity;->btn_Sign:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, LUI/MainActivity;->btn_Cooopy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-direct {p0}, LUI/MainActivity;->start()V

    .line 254
    return-void
.end method

.method private loadNoticeVersionInfo()V
    .locals 4

    .line 194
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "noticeversionlocal"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LUI/MainActivity;->noticeversionlocal:Ljava/lang/String;

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method private loadResinInfo()V
    .locals 3

    .line 546
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "expeditionImageId1"

    const v2, 0x7f07005e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LUI/MainActivity;->expeditionImageId1:I

    .line 548
    const-string v1, "expeditionImageId2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LUI/MainActivity;->expeditionImageId2:I

    .line 549
    const-string v1, "expeditionImageId3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LUI/MainActivity;->expeditionImageId3:I

    .line 550
    const-string v1, "expeditionImageId4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LUI/MainActivity;->expeditionImageId4:I

    .line 551
    const-string v1, "expeditionImageId5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LUI/MainActivity;->expeditionImageId5:I

    .line 552
    const-string v1, "notice"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->notice:Ljava/lang/String;

    .line 553
    const-string v1, "notice2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->notice2:Ljava/lang/String;

    .line 554
    const-string v1, "noticeversion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->noticeversion:Ljava/lang/String;

    .line 555
    const-string v1, "lastAppVertion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->lastAppVertion:Ljava/lang/String;

    .line 556
    const-string v1, "appVertion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->appVertion:Ljava/lang/String;

    .line 557
    const-string v1, "expInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo1:Ljava/lang/String;

    .line 558
    const-string v1, "expInfo2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo2:Ljava/lang/String;

    .line 559
    const-string v1, "expInfo3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo3:Ljava/lang/String;

    .line 560
    const-string v1, "expInfo4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo4:Ljava/lang/String;

    .line 561
    const-string v1, "expInfo5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo5:Ljava/lang/String;

    .line 562
    const-string v1, "expInfo6"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo6:Ljava/lang/String;

    .line 563
    const-string v1, "expInfo7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo7:Ljava/lang/String;

    .line 564
    const-string v1, "expInfo8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo8:Ljava/lang/String;

    .line 565
    const-string v1, "expInfo9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo9:Ljava/lang/String;

    .line 566
    const-string v1, "expInfo10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expInfo10:Ljava/lang/String;

    .line 567
    const-string v1, "expCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->expCount:Ljava/lang/String;

    .line 568
    const-string v1, "resinCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->resinCount:Ljava/lang/String;

    .line 569
    const-string v1, "resinInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->resinInfo1:Ljava/lang/String;

    .line 570
    const-string v1, "resinInfo2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->resinInfo2:Ljava/lang/String;

    .line 571
    const-string v1, "strTask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->strTask:Ljava/lang/String;

    .line 572
    const-string v1, "qianCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->qianCount:Ljava/lang/String;

    .line 573
    const-string v1, "qianInfo1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->qianInfo1:Ljava/lang/String;

    .line 574
    const-string v1, "qianInfo2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->qianInfo2:Ljava/lang/String;

    .line 575
    return-void
.end method

.method private loadUser()V
    .locals 3

    .line 537
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    .line 539
    const-string v1, "COOKIE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LUI/MainActivity;->cookie:Ljava/lang/String;

    .line 540
    return-void
.end method

.method private loadcopyInfo()V
    .locals 4

    .line 464
    const-string v0, "resin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "recoveryTime"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, LUI/MainActivity;->recoveryTime:I

    .line 466
    const-string v2, "qrecoveryTime"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, LUI/MainActivity;->qrecoveryTime:I

    .line 467
    const-string v2, "resinnotice1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->resinnotice1:Z

    .line 468
    const-string v2, "resinnotice2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->resinnotice2:Z

    .line 469
    const-string v2, "resinnotice3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->resinnotice3:Z

    .line 470
    const-string v2, "resinnotice4"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->resinnotice4:Z

    .line 471
    const-string v2, "qiannotice1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->qiannotice1:Z

    .line 472
    const-string v2, "qiannotice2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->qiannotice2:Z

    .line 473
    const-string v2, "qiannotice3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->qiannotice3:Z

    .line 474
    const-string v2, "qiannotice4"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->qiannotice4:Z

    .line 475
    const-string v2, "expedition1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->expedition1:Z

    .line 476
    const-string v2, "expedition2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->expedition2:Z

    .line 477
    const-string v2, "expedition3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->expedition3:Z

    .line 478
    const-string v2, "expedition4"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/MainActivity;->expedition4:Z

    .line 479
    const-string v2, "expedition5"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, LUI/MainActivity;->expedition5:Z

    .line 481
    return-void
.end method

.method private resignBroadcastReceiver()V
    .locals 3

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcore/BootBroadcastReceiver;

    invoke-direct {v1}, Lcore/BootBroadcastReceiver;-><init>()V

    .line 135
    .local v1, "listener":Lcore/BootBroadcastReceiver;
    iget-object v2, p0, LUI/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method private saveNoticeVersionInfo()V
    .locals 4

    .line 184
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 185
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, LUI/MainActivity;->noticeversion:Ljava/lang/String;

    const-string v3, "noticeversionlocal"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-void
.end method

.method private setBtnName()V
    .locals 2

    .line 293
    iget-object v0, p0, LUI/MainActivity;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, LUI/MainActivity;->btn_set:Landroid/widget/Button;

    const-string v1, "\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, LUI/MainActivity;->btn_set:Landroid/widget/Button;

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    return-void
.end method

.method private setText()V
    .locals 4

    .line 147
    iget-object v0, p0, LUI/MainActivity;->iv_expedition1:Landroid/widget/ImageView;

    invoke-virtual {p0}, LUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LUI/MainActivity;->expeditionImageId1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, LUI/MainActivity;->iv_expedition2:Landroid/widget/ImageView;

    invoke-virtual {p0}, LUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LUI/MainActivity;->expeditionImageId2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, LUI/MainActivity;->iv_expedition3:Landroid/widget/ImageView;

    invoke-virtual {p0}, LUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LUI/MainActivity;->expeditionImageId3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, LUI/MainActivity;->iv_expedition4:Landroid/widget/ImageView;

    invoke-virtual {p0}, LUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LUI/MainActivity;->expeditionImageId4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, LUI/MainActivity;->iv_expedition5:Landroid/widget/ImageView;

    invoke-virtual {p0}, LUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, LUI/MainActivity;->expeditionImageId5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, LUI/MainActivity;->tv_expedition1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LUI/MainActivity;->expInfo1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->expInfo2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, LUI/MainActivity;->tv_expedition2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUI/MainActivity;->expInfo3:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->expInfo4:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, LUI/MainActivity;->tv_expedition3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUI/MainActivity;->expInfo5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->expInfo6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, LUI/MainActivity;->tv_expedition4:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUI/MainActivity;->expInfo7:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->expInfo8:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, LUI/MainActivity;->tv_expedition5:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUI/MainActivity;->expInfo9:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->expInfo10:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, LUI/MainActivity;->tv_expeditionCount:Landroid/widget/TextView;

    iget-object v1, p0, LUI/MainActivity;->expCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LUI/MainActivity;->resinCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LUI/MainActivity;->resinInfo1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LUI/MainActivity;->resinInfo2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "resin":Ljava/lang/String;
    iget-object v1, p0, LUI/MainActivity;->tv_task:Landroid/widget/TextView;

    iget-object v3, p0, LUI/MainActivity;->strTask:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, LUI/MainActivity;->tv_resin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUI/MainActivity;->qianCount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->qianInfo1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LUI/MainActivity;->qianInfo2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "qian":Ljava/lang/String;
    iget-object v2, p0, LUI/MainActivity;->tv_qian:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, LUI/MainActivity;->tv_notice:Landroid/widget/TextView;

    iget-object v3, p0, LUI/MainActivity;->notice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, LUI/MainActivity;->tv_notice2:Landroid/widget/TextView;

    iget-object v3, p0, LUI/MainActivity;->notice2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, LUI/MainActivity;->loadNoticeVersionInfo()V

    .line 172
    iget-object v2, p0, LUI/MainActivity;->noticeversionlocal:Ljava/lang/String;

    iget-object v3, p0, LUI/MainActivity;->noticeversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, LUI/MainActivity;->notice2:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, LUI/MainActivity;->saveNoticeVersionInfo()V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v2, p0, LUI/MainActivity;->lastAppVertion:Ljava/lang/String;

    iget-object v3, p0, LUI/MainActivity;->appVertion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, LUI/MainActivity;->notice2:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method private sign()V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LUI/MainActivity$5;

    invoke-direct {v1, p0}, LUI/MainActivity$5;-><init>(LUI/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 509
    return-void
.end method

.method private start()V
    .locals 6

    .line 283
    invoke-direct {p0}, LUI/MainActivity;->setBtnName()V

    .line 285
    iget-object v0, p0, LUI/MainActivity;->timer5m:Ljava/util/Timer;

    iget-object v1, p0, LUI/MainActivity;->task5m:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 287
    return-void
.end method

.method private startAllService()V
    .locals 2

    .line 370
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "widget.allService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startAllService(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private startBaseService()V
    .locals 2

    .line 352
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "notification.baseService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private startCalendarService()V
    .locals 2

    .line 358
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "core.CalendarService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startCalendarService(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private startDanResinService()V
    .locals 2

    .line 384
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "widget.DanResinService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startDanResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private startFangResinService()V
    .locals 2

    .line 377
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "widget.FangResinService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startFangResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private startResinService()V
    .locals 2

    .line 364
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-string v1, "widget.ResinService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private turnToUidActivity()V
    .locals 2

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-class v1, LUI/setUid;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, LUI/MainActivity;->finish()V

    .line 528
    invoke-virtual {p0, v0}, LUI/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 405
    :pswitch_1
    invoke-direct {p0}, LUI/MainActivity;->turnToUidActivity()V

    .line 406
    goto :goto_0

    .line 408
    :pswitch_2
    invoke-virtual {p0}, LUI/MainActivity;->openTool()V

    .line 409
    goto :goto_0

    .line 394
    :pswitch_3
    iget-object v0, p0, LUI/MainActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LUI/MainActivity;->context:Landroid/content/Context;

    const-class v3, Lnotification/baseService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 395
    invoke-direct {p0}, LUI/MainActivity;->startBaseService()V

    .line 396
    invoke-direct {p0}, LUI/MainActivity;->loadResinInfo()V

    .line 397
    invoke-direct {p0}, LUI/MainActivity;->setText()V

    .line 403
    goto :goto_0

    .line 411
    :pswitch_4
    const-string v0, "\u6b63\u5728\u7b7e\u5230\u3002\u3002\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, LUI/MainActivity;->sign()V

    .line 413
    goto :goto_0

    .line 415
    :pswitch_5
    invoke-direct {p0}, LUI/MainActivity;->Cooopy()V

    .line 418
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080058
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, LUI/MainActivity;->setContentView(I)V

    .line 124
    invoke-direct {p0}, LUI/MainActivity;->intView()V

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 117
    invoke-direct {p0}, LUI/MainActivity;->startBaseService()V

    .line 118
    return-void
.end method

.method public openTool()V
    .locals 2

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltool/gongJu;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, LUI/MainActivity;->finish()V

    .line 518
    invoke-virtual {p0, v0}, LUI/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method
