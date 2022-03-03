.class Lcore/getCookie/webActivity$3;
.super Ljava/lang/Object;
.source "webActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/getCookie/webActivity;->saveCookie()V
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

    .line 176
    iput-object p1, p0, Lcore/getCookie/webActivity$3;->this$0:Lcore/getCookie/webActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcore/getCookie/webActivity$3;->this$0:Lcore/getCookie/webActivity;

    const-class v2, LUI/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcore/getCookie/webActivity$3;->this$0:Lcore/getCookie/webActivity;

    invoke-virtual {v1}, Lcore/getCookie/webActivity;->finish()V

    .line 183
    iget-object v1, p0, Lcore/getCookie/webActivity$3;->this$0:Lcore/getCookie/webActivity;

    invoke-virtual {v1, v0}, Lcore/getCookie/webActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method
