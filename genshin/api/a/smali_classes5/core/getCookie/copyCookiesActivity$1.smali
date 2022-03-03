.class Lcore/getCookie/copyCookiesActivity$1;
.super Landroid/os/Handler;
.source "copyCookiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcore/getCookie/copyCookiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/getCookie/copyCookiesActivity;


# direct methods
.method constructor <init>(Lcore/getCookie/copyCookiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcore/getCookie/copyCookiesActivity;

    .line 46
    iput-object p1, p0, Lcore/getCookie/copyCookiesActivity$1;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcore/getCookie/copyCookiesActivity$1;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-static {v0}, Lcore/getCookie/copyCookiesActivity;->access$000(Lcore/getCookie/copyCookiesActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Cookies\u5df2\u6210\u529f\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method
