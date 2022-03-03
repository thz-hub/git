.class Lcore/getCookie/copyCookiesActivity$3;
.super Ljava/util/TimerTask;
.source "copyCookiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/getCookie/copyCookiesActivity;->exitBy2Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/getCookie/copyCookiesActivity;


# direct methods
.method constructor <init>(Lcore/getCookie/copyCookiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcore/getCookie/copyCookiesActivity;

    .line 218
    iput-object p1, p0, Lcore/getCookie/copyCookiesActivity$3;->this$0:Lcore/getCookie/copyCookiesActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcore/getCookie/copyCookiesActivity;->access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 222
    return-void
.end method
