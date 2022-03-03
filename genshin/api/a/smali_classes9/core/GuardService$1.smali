.class Lcore/GuardService$1;
.super Landroid/os/Handler;
.source "GuardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcore/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/GuardService;


# direct methods
.method constructor <init>(Lcore/GuardService;)V
    .locals 0
    .param p1, "this$0"    # Lcore/GuardService;

    .line 33
    iput-object p1, p0, Lcore/GuardService$1;->this$0:Lcore/GuardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    .line 39
    return-void
.end method
