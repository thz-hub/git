.class Lcore/getCookie/copyCookiesActivity$2;
.super Ljava/lang/Object;
.source "copyCookiesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/getCookie/copyCookiesActivity;->getUserCookies()V
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

    .line 115
    iput-object p1, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-static {v0}, Lcore/getCookie/copyCookiesActivity;->access$100(Lcore/getCookie/copyCookiesActivity;)V

    .line 121
    iget-object v0, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-static {v0}, Lcore/getCookie/copyCookiesActivity;->access$200(Lcore/getCookie/copyCookiesActivity;)V

    .line 122
    iget-object v0, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-static {v0}, Lcore/getCookie/copyCookiesActivity;->access$300(Lcore/getCookie/copyCookiesActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    iget-object v1, v1, Lcore/getCookie/copyCookiesActivity;->cookies:Ljava/lang/String;

    invoke-static {v0, v1}, Lcore/ClipBoard;->sendCookiesToClipBoard(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iget-object v1, p0, Lcore/getCookie/copyCookiesActivity$2;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-static {v1}, Lcore/getCookie/copyCookiesActivity;->access$400(Lcore/getCookie/copyCookiesActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method
