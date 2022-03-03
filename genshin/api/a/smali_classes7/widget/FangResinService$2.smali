.class Lwidget/FangResinService$2;
.super Ljava/util/TimerTask;
.source "FangResinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwidget/FangResinService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwidget/FangResinService;


# direct methods
.method constructor <init>(Lwidget/FangResinService;)V
    .locals 0
    .param p1, "this$0"    # Lwidget/FangResinService;

    .line 62
    iput-object p1, p0, Lwidget/FangResinService$2;->this$0:Lwidget/FangResinService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lwidget/FangResinService$2;->this$0:Lwidget/FangResinService;

    invoke-static {v0}, Lwidget/FangResinService;->access$100(Lwidget/FangResinService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification.baseService"

    invoke-static {v0, v1}, Lcore/ServiceRunning;->startBaseService(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lwidget/FangResinService$2;->this$0:Lwidget/FangResinService;

    invoke-static {v0}, Lwidget/FangResinService;->access$200(Lwidget/FangResinService;)V

    .line 67
    return-void
.end method
