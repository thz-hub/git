.class Lcore/getCookie/webActivity$1;
.super Landroid/os/Handler;
.source "webActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcore/getCookie/webActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/getCookie/webActivity;


# direct methods
.method constructor <init>(Lcore/getCookie/webActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcore/getCookie/webActivity;

    .line 44
    iput-object p1, p0, Lcore/getCookie/webActivity$1;->this$0:Lcore/getCookie/webActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcore/getCookie/webActivity$1;->this$0:Lcore/getCookie/webActivity;

    invoke-static {v0}, Lcore/getCookie/webActivity;->access$000(Lcore/getCookie/webActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8d26\u53f7\u6dfb\u52a0\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    return-void
.end method
