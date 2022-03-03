.class public Lcore/GuardService;
.super Landroid/app/Service;
.source "GuardService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GuardService"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private task8m:Ljava/util/TimerTask;

.field private timer5m:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcore/GuardService$1;

    invoke-direct {v0, p0}, Lcore/GuardService$1;-><init>(Lcore/GuardService;)V

    iput-object v0, p0, Lcore/GuardService;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcore/GuardService;->timer5m:Ljava/util/Timer;

    .line 59
    new-instance v0, Lcore/GuardService$2;

    invoke-direct {v0, p0}, Lcore/GuardService$2;-><init>(Lcore/GuardService;)V

    iput-object v0, p0, Lcore/GuardService;->task8m:Ljava/util/TimerTask;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcore/GuardService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcore/GuardService;

    .line 20
    iget-object v0, p0, Lcore/GuardService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcore/GuardService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcore/GuardService;

    .line 20
    iget-object v0, p0, Lcore/GuardService;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 7

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-virtual {p0}, Lcore/GuardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcore/GuardService;->context:Landroid/content/Context;

    .line 45
    iget-object v1, p0, Lcore/GuardService;->timer5m:Ljava/util/Timer;

    iget-object v2, p0, Lcore/GuardService;->task8m:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x493e0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 46
    const-string v0, "GuardService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 51
    const-string v0, "GuardService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
