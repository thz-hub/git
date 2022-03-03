.class LUI/setUid$2;
.super Ljava/util/TimerTask;
.source "setUid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUI/setUid;->exitBy2Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LUI/setUid;


# direct methods
.method constructor <init>(LUI/setUid;)V
    .locals 0
    .param p1, "this$0"    # LUI/setUid;

    .line 203
    iput-object p1, p0, LUI/setUid$2;->this$0:LUI/setUid;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LUI/setUid;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 207
    return-void
.end method
