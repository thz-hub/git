.class Lwidget/FangResinService$1;
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

    .line 52
    iput-object p1, p0, Lwidget/FangResinService$1;->this$0:Lwidget/FangResinService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lwidget/FangResinService$1;->this$0:Lwidget/FangResinService;

    invoke-static {v0}, Lwidget/FangResinService;->access$000(Lwidget/FangResinService;)V

    .line 56
    return-void
.end method
