.class Lnotification/baseService$2;
.super Ljava/lang/Object;
.source "baseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotification/baseService;->getUserInfor()V
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

    .line 208
    iput-object p1, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 211
    iget-object v0, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 213
    .local v1, "a":[Ljava/lang/String;
    iget-object v2, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lnotification/baseService;->access$600(Lnotification/baseService;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lnotification/baseService;->access$700(Lnotification/baseService;)V

    .line 215
    iget-object v3, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    aget-object v4, v1, v0

    const/4 v0, 0x1

    aget-object v5, v1, v0

    const/4 v2, 0x2

    aget-object v6, v1, v2

    const/4 v2, 0x3

    aget-object v7, v1, v2

    const/4 v2, 0x4

    aget-object v8, v1, v2

    const/4 v2, 0x5

    aget-object v9, v1, v2

    const/4 v2, 0x6

    aget-object v10, v1, v2

    const/4 v2, 0x7

    aget-object v11, v1, v2

    const/16 v2, 0x8

    aget-object v12, v1, v2

    invoke-static/range {v3 .. v12}, Lnotification/baseService;->access$800(Lnotification/baseService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "sdf":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 219
    .local v3, "msg":Landroid/os/Message;
    iput v0, v3, Landroid/os/Message;->what:I

    .line 220
    iget-object v0, p0, Lnotification/baseService$2;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$900(Lnotification/baseService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    .end local v1    # "a":[Ljava/lang/String;
    .end local v2    # "sdf":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
