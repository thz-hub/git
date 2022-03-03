.class LUI/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LUI/MainActivity;


# direct methods
.method constructor <init>(LUI/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # LUI/MainActivity;

    .line 94
    iput-object p1, p0, LUI/MainActivity$1;->this$0:LUI/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .local v0, "message":Ljava/lang/Object;
    iget-object v1, p0, LUI/MainActivity$1;->this$0:LUI/MainActivity;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v3, "\u7b7e\u5230\u60c5\u51b5\uff1a"

    invoke-static {v1, v2, v3}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showTitleDldMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "message":Ljava/lang/Object;
    goto :goto_0

    .line 105
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, LUI/MainActivity$1;->this$0:LUI/MainActivity;

    invoke-static {v0}, LUI/MainActivity;->access$000(LUI/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, LUI/MainActivity$1;->this$0:LUI/MainActivity;

    iget-object v1, v1, LUI/MainActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_2
    :goto_0
    return-void
.end method
