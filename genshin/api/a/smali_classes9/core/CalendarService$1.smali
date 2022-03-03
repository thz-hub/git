.class Lcore/CalendarService$1;
.super Landroid/os/Handler;
.source "CalendarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcore/CalendarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/CalendarService;


# direct methods
.method constructor <init>(Lcore/CalendarService;)V
    .locals 0
    .param p1, "this$0"    # Lcore/CalendarService;

    .line 48
    iput-object p1, p0, Lcore/CalendarService$1;->this$0:Lcore/CalendarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 60
    :goto_0
    return-void
.end method
