.class LUI/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUI/MainActivity;->imageGet()V
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

    .line 261
    iput-object p1, p0, LUI/MainActivity$2;->this$0:LUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 264
    const-string v0, "\u83b7\u53d6\u56fe\u7247"

    const-string v1, "\u83b7\u53d6\u56fe\u72471"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png"

    .line 267
    .local v0, "url22":Ljava/lang/String;
    iget-object v1, p0, LUI/MainActivity$2;->this$0:LUI/MainActivity;

    invoke-static {v0}, Lhttp/getImage;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, LUI/MainActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 270
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 271
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 272
    iget-object v2, p0, LUI/MainActivity$2;->this$0:LUI/MainActivity;

    invoke-static {v2}, LUI/MainActivity;->access$100(LUI/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method
