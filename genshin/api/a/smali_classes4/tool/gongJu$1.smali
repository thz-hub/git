.class Ltool/gongJu$1;
.super Landroid/os/Handler;
.source "gongJu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltool/gongJu;
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

    .line 39
    iput-object p1, p0, Ltool/gongJu$1;->this$0:Ltool/gongJu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .local v0, "message":Ljava/lang/Object;
    iget-object v1, p0, Ltool/gongJu$1;->this$0:Ltool/gongJu;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v3, "\u7b7e\u5230\u60c5\u51b5\uff1a"

    invoke-static {v1, v2, v3}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showTitleDldMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "message":Ljava/lang/Object;
    :cond_0
    return-void
.end method
