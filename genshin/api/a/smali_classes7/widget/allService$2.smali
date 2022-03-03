.class Lwidget/allService$2;
.super Ljava/util/TimerTask;
.source "allService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwidget/allService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwidget/allService;


# direct methods
.method constructor <init>(Lwidget/allService;)V
    .locals 0
    .param p1, "this$0"    # Lwidget/allService;

    .line 63
    iput-object p1, p0, Lwidget/allService$2;->this$0:Lwidget/allService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lwidget/allService$2;->this$0:Lwidget/allService;

    invoke-static {v0}, Lwidget/allService;->access$100(Lwidget/allService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification.baseService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lwidget/allService$2;->this$0:Lwidget/allService;

    invoke-static {v0}, Lwidget/allService;->access$200(Lwidget/allService;)V

    .line 68
    return-void
.end method
