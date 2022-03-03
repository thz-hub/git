.class Ltool/gongJu$3;
.super Ljava/util/TimerTask;
.source "gongJu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/gongJu;->exitBy2Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/gongJu;


# direct methods
.method constructor <init>(Ltool/gongJu;)V
    .locals 0
    .param p1, "this$0"    # Ltool/gongJu;

    .line 213
    iput-object p1, p0, Ltool/gongJu$3;->this$0:Ltool/gongJu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltool/gongJu;->access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 217
    return-void
.end method
