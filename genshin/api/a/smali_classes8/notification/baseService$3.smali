.class Lnotification/baseService$3;
.super Ljava/lang/Object;
.source "baseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotification/baseService;->getAppVersion()V
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

    .line 230
    iput-object p1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    iget-object v0, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$1000(Lnotification/baseService;)Lcom/example/cherisheveryminutemobile/UserDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/cherisheveryminutemobile/UserDao;->getAppInfo()[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "a":[Ljava/lang/String;
    iget-object v1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lnotification/baseService;->notice:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lnotification/baseService;->notice2:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, v1, Lnotification/baseService;->noticeversion:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    const/4 v2, 0x3

    aget-object v3, v0, v2

    iput-object v3, v1, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    iput-object v3, v1, Lnotification/baseService;->update:Ljava/lang/String;

    .line 241
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 242
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 243
    iget-object v2, p0, Lnotification/baseService$3;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lnotification/baseService;->access$900(Lnotification/baseService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method
