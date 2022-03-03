.class Lcore/getCookie/webActivity$4;
.super Ljava/util/TimerTask;
.source "webActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/getCookie/webActivity;->exitBy2Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/getCookie/webActivity;


# direct methods
.method constructor <init>(Lcore/getCookie/webActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcore/getCookie/webActivity;

    .line 225
    iput-object p1, p0, Lcore/getCookie/webActivity$4;->this$0:Lcore/getCookie/webActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcore/getCookie/webActivity;->access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 229
    return-void
.end method
