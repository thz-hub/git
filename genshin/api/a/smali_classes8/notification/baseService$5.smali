.class Lnotification/baseService$5;
.super Ljava/util/TimerTask;
.source "baseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnotification/baseService;
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

    .line 667
    iput-object p1, p0, Lnotification/baseService$5;->this$0:Lnotification/baseService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 672
    :try_start_0
    iget-object v0, p0, Lnotification/baseService$5;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$1100(Lnotification/baseService;)V

    .line 673
    iget-object v0, p0, Lnotification/baseService$5;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$1200(Lnotification/baseService;)V

    .line 674
    iget-object v0, p0, Lnotification/baseService$5;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$300(Lnotification/baseService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "core.GuardService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 680
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 681
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 682
    iget-object v1, p0, Lnotification/baseService$5;->this$0:Lnotification/baseService;

    invoke-static {v1}, Lnotification/baseService;->access$900(Lnotification/baseService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    return-void
.end method
