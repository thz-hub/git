.class Lnotification/NotificationServicedrop$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationServicedrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnotification/NotificationServicedrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnotification/NotificationServicedrop;


# direct methods
.method constructor <init>(Lnotification/NotificationServicedrop;)V
    .locals 0
    .param p1, "this$0"    # Lnotification/NotificationServicedrop;

    .line 378
    iput-object p1, p0, Lnotification/NotificationServicedrop$ActionReceiver;->this$0:Lnotification/NotificationServicedrop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .line 381
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 384
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "notification.click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "notification.dropclose"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 396
    :pswitch_0
    iget-object v0, p0, Lnotification/NotificationServicedrop$ActionReceiver;->this$0:Lnotification/NotificationServicedrop;

    invoke-virtual {v0}, Lnotification/NotificationServicedrop;->stopSelf()V

    .line 399
    goto :goto_1

    .line 387
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcore/OpenApp;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 389
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lnotification/NotificationServicedrop$ActionReceiver;->this$0:Lnotification/NotificationServicedrop;

    invoke-virtual {v1, v0}, Lnotification/NotificationServicedrop;->startActivity(Landroid/content/Intent;)V

    .line 392
    nop

    .line 404
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 382
    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x795360da -> :sswitch_1
        0x52f19ec5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
