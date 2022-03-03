.class LUI/setUid$1;
.super Landroid/os/Handler;
.source "setUid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUI/setUid;
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

    .line 45
    iput-object p1, p0, LUI/setUid$1;->this$0:LUI/setUid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 57
    :goto_0
    return-void
.end method
