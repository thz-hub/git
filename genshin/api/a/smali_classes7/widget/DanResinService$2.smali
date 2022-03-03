.class Lwidget/DanResinService$2;
.super Ljava/util/TimerTask;
.source "DanResinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwidget/DanResinService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwidget/DanResinService;


# direct methods
.method constructor <init>(Lwidget/DanResinService;)V
    .locals 0
    .param p1, "this$0"    # Lwidget/DanResinService;

    .line 62
    iput-object p1, p0, Lwidget/DanResinService$2;->this$0:Lwidget/DanResinService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lwidget/DanResinService$2;->this$0:Lwidget/DanResinService;

    invoke-static {v0}, Lwidget/DanResinService;->access$100(Lwidget/DanResinService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification.baseService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lwidget/DanResinService$2;->this$0:Lwidget/DanResinService;

    invoke-static {v0}, Lwidget/DanResinService;->access$200(Lwidget/DanResinService;)V

    .line 67
    return-void
.end method
