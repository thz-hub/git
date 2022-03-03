.class Lnotification/baseService$1;
.super Landroid/os/Handler;
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

    .line 69
    iput-object p1, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 80
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$000(Lnotification/baseService;)V

    .line 82
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$100(Lnotification/baseService;)V

    .line 83
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$200(Lnotification/baseService;)V

    goto/16 :goto_0

    .line 85
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 88
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v1, v0, Lnotification/baseService;->si:Lcore/systemInformation;

    iget-object v2, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v2}, Lnotification/baseService;->access$300(Lnotification/baseService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcore/systemInformation;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->appVertion:Ljava/lang/String;

    iget-object v2, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v2, v2, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iget-object v0, v0, Lnotification/baseService;->lastAppVertion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v1, "hutao"

    invoke-static {v0, v1}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lnotification/baseService;->expeditionImageId1:I

    .line 96
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0, v1}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lnotification/baseService;->expeditionImageId2:I

    .line 97
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0, v1}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lnotification/baseService;->expeditionImageId3:I

    .line 98
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0, v1}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lnotification/baseService;->expeditionImageId4:I

    .line 99
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0, v1}, Lnotification/baseService;->access$400(Lnotification/baseService;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnotification/baseService;->expeditionImageId5:I

    .line 100
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v1, "APP\u5df2\u6709\u6700\u65b0\u7248\u672c"

    iput-object v1, v0, Lnotification/baseService;->resinCount:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v2, "\u516c\u4f17\u53f7\uff1a\u4e00\u5206\u949f\u90fd\u4e0d\u80fd\u6d6a\u8d39"

    iput-object v2, v0, Lnotification/baseService;->resinInfo1:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v3, "\u516c\u4f17\u53f7\u540d\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    iput-object v3, v0, Lnotification/baseService;->resinInfo2:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v1, v0, Lnotification/baseService;->qianCount:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v2, v0, Lnotification/baseService;->qianInfo1:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v3, v0, Lnotification/baseService;->qianInfo2:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v1, "\u8bf7\u524d\u5f80\u516c\u4f17\u53f7(\u4e00\u5206\u949f\u90fd\u4e0d\u80fd\u6d6a\u8d39)\u66f4\u65b0APP"

    iput-object v1, v0, Lnotification/baseService;->expCount:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v2, "\u516c\u4f17\u53f7\u9875\u9762\u53d1\u9001\u201c\u6811\u8102\u201d"

    iput-object v2, v0, Lnotification/baseService;->expInfo1:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v3, "\u5373\u53ef\u83b7\u53d6\u66f4\u65b0\u94fe\u63a5"

    iput-object v3, v0, Lnotification/baseService;->expInfo2:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v1, v0, Lnotification/baseService;->expInfo3:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v1, v0, Lnotification/baseService;->expInfo4:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v2, v0, Lnotification/baseService;->expInfo5:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v3, v0, Lnotification/baseService;->expInfo6:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v2, v0, Lnotification/baseService;->expInfo7:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    iput-object v3, v0, Lnotification/baseService;->expInfo8:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v1, "\u6216\u8005\u52a0QQ\u7fa4\uff1a543298695"

    iput-object v1, v0, Lnotification/baseService;->expInfo9:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    const-string v1, "\u4e5f\u53ef\u83b7\u53d6\u66f4\u65b0\u94fe\u63a5"

    iput-object v1, v0, Lnotification/baseService;->expInfo10:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$100(Lnotification/baseService;)V

    .line 118
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$300(Lnotification/baseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcore/ClipBoard;->sendToClipBoard(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$200(Lnotification/baseService;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lnotification/baseService$1;->this$0:Lnotification/baseService;

    invoke-static {v0}, Lnotification/baseService;->access$500(Lnotification/baseService;)V

    .line 124
    :cond_3
    :goto_0
    return-void
.end method
