.class Lnotification/NotificationServicedrop$1;
.super Ljava/lang/Object;
.source "NotificationServicedrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotification/NotificationServicedrop;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnotification/NotificationServicedrop;


# direct methods
.method constructor <init>(Lnotification/NotificationServicedrop;)V
    .locals 0
    .param p1, "this$0"    # Lnotification/NotificationServicedrop;

    .line 190
    iput-object p1, p0, Lnotification/NotificationServicedrop$1;->this$0:Lnotification/NotificationServicedrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 193
    iget-object v0, p0, Lnotification/NotificationServicedrop$1;->this$0:Lnotification/NotificationServicedrop;

    invoke-static {v0}, Lnotification/NotificationServicedrop;->access$000(Lnotification/NotificationServicedrop;)V

    .line 194
    return-void
.end method
