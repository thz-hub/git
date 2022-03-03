.class LUI/MainActivity$3;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LUI/MainActivity;


# direct methods
.method constructor <init>(LUI/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # LUI/MainActivity;

    .line 304
    iput-object p1, p0, LUI/MainActivity$3;->this$0:LUI/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    :try_start_0
    iget-object v0, p0, LUI/MainActivity$3;->this$0:LUI/MainActivity;

    invoke-static {v0}, LUI/MainActivity;->access$200(LUI/MainActivity;)V

    .line 312
    iget-object v0, p0, LUI/MainActivity$3;->this$0:LUI/MainActivity;

    invoke-static {v0}, LUI/MainActivity;->access$300(LUI/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 319
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 320
    iget-object v1, p0, LUI/MainActivity$3;->this$0:LUI/MainActivity;

    invoke-static {v1}, LUI/MainActivity;->access$100(LUI/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method
