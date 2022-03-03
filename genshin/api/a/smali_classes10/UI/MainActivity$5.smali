.class LUI/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUI/MainActivity;->sign()V
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

    .line 492
    iput-object p1, p0, LUI/MainActivity$5;->this$0:LUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 495
    iget-object v0, p0, LUI/MainActivity$5;->this$0:LUI/MainActivity;

    invoke-static {v0}, LUI/MainActivity;->access$400(LUI/MainActivity;)V

    .line 497
    const-string v0, "\u7b7e\u5230\u5931\u8d25"

    .line 498
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, LUI/MainActivity$5;->this$0:LUI/MainActivity;

    iget-object v1, v1, LUI/MainActivity;->uid:Ljava/lang/String;

    iget-object v2, p0, LUI/MainActivity$5;->this$0:LUI/MainActivity;

    iget-object v2, v2, LUI/MainActivity;->cookie:Ljava/lang/String;

    invoke-static {v1, v2}, Ltool/Sign;->sign_all(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string v1, "sign"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 504
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 505
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 506
    iget-object v2, p0, LUI/MainActivity$5;->this$0:LUI/MainActivity;

    invoke-static {v2}, LUI/MainActivity;->access$100(LUI/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    return-void
.end method
