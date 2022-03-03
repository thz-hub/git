.class Ltool/gongJu$2;
.super Ljava/lang/Object;
.source "gongJu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/gongJu;->sign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/gongJu;


# direct methods
.method constructor <init>(Ltool/gongJu;)V
    .locals 0
    .param p1, "this$0"    # Ltool/gongJu;

    .line 111
    iput-object p1, p0, Ltool/gongJu$2;->this$0:Ltool/gongJu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Ltool/gongJu$2;->this$0:Ltool/gongJu;

    invoke-static {v0}, Ltool/gongJu;->access$000(Ltool/gongJu;)V

    .line 116
    const-string v0, "\u7b7e\u5230\u5931\u8d25"

    .line 117
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Ltool/gongJu$2;->this$0:Ltool/gongJu;

    iget-object v1, v1, Ltool/gongJu;->uid:Ljava/lang/String;

    iget-object v2, p0, Ltool/gongJu$2;->this$0:Ltool/gongJu;

    iget-object v2, v2, Ltool/gongJu;->cookie:Ljava/lang/String;

    invoke-static {v1, v2}, Ltool/Sign;->sign_all(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "sign"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 124
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Ltool/gongJu$2;->this$0:Ltool/gongJu;

    invoke-static {v2}, Ltool/gongJu;->access$100(Ltool/gongJu;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
