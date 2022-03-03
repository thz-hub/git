.class Lcore/GuardService$2;
.super Ljava/util/TimerTask;
.source "GuardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcore/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/GuardService;


# direct methods
.method constructor <init>(Lcore/GuardService;)V
    .locals 0
    .param p1, "this$0"    # Lcore/GuardService;

    .line 59
    iput-object p1, p0, Lcore/GuardService$2;->this$0:Lcore/GuardService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcore/GuardService$2;->this$0:Lcore/GuardService;

    invoke-static {v0}, Lcore/GuardService;->access$000(Lcore/GuardService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification.baseService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 68
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 69
    iget-object v1, p0, Lcore/GuardService$2;->this$0:Lcore/GuardService;

    invoke-static {v1}, Lcore/GuardService;->access$100(Lcore/GuardService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method
