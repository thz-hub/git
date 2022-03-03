.class Lwidget/ResinService$1;
.super Ljava/util/TimerTask;
.source "ResinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwidget/ResinService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwidget/ResinService;


# direct methods
.method constructor <init>(Lwidget/ResinService;)V
    .locals 0
    .param p1, "this$0"    # Lwidget/ResinService;

    .line 52
    iput-object p1, p0, Lwidget/ResinService$1;->this$0:Lwidget/ResinService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lwidget/ResinService$1;->this$0:Lwidget/ResinService;

    invoke-static {v0}, Lwidget/ResinService;->access$000(Lwidget/ResinService;)V

    .line 56
    return-void
.end method
