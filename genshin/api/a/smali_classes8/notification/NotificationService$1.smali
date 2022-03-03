.class Lnotification/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotification/NotificationService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnotification/NotificationService;


# direct methods
.method constructor <init>(Lnotification/NotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lnotification/NotificationService;

    .line 86
    iput-object p1, p0, Lnotification/NotificationService$1;->this$0:Lnotification/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lnotification/NotificationService$1;->this$0:Lnotification/NotificationService;

    invoke-static {v0}, Lnotification/NotificationService;->access$000(Lnotification/NotificationService;)V

    .line 90
    return-void
.end method
