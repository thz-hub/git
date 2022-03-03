.class Lcore/getCookie/webActivity$2;
.super Ljava/lang/Object;
.source "webActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/getCookie/webActivity;->getUserCookies()V
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

    .line 111
    iput-object p1, p0, Lcore/getCookie/webActivity$2;->this$0:Lcore/getCookie/webActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcore/getCookie/webActivity$2;->this$0:Lcore/getCookie/webActivity;

    invoke-static {v0}, Lcore/getCookie/webActivity;->access$100(Lcore/getCookie/webActivity;)V

    .line 117
    iget-object v0, p0, Lcore/getCookie/webActivity$2;->this$0:Lcore/getCookie/webActivity;

    invoke-static {v0}, Lcore/getCookie/webActivity;->access$200(Lcore/getCookie/webActivity;)V

    .line 118
    iget-object v0, p0, Lcore/getCookie/webActivity$2;->this$0:Lcore/getCookie/webActivity;

    invoke-static {v0}, Lcore/getCookie/webActivity;->access$300(Lcore/getCookie/webActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v1, p0, Lcore/getCookie/webActivity$2;->this$0:Lcore/getCookie/webActivity;

    invoke-static {v1}, Lcore/getCookie/webActivity;->access$400(Lcore/getCookie/webActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
