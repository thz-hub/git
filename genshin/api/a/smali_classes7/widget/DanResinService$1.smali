.class Lwidget/DanResinService$1;
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

    .line 52
    iput-object p1, p0, Lwidget/DanResinService$1;->this$0:Lwidget/DanResinService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lwidget/DanResinService$1;->this$0:Lwidget/DanResinService;

    invoke-static {v0}, Lwidget/DanResinService;->access$000(Lwidget/DanResinService;)V

    .line 56
    return-void
.end method
