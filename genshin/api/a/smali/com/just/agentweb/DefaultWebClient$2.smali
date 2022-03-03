.class Lcom/just/agentweb/DefaultWebClient$2;
.super Ljava/lang/Object;
.source "DefaultWebClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultWebClient;->getCallback(Ljava/lang/String;)Landroid/os/Handler$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultWebClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultWebClient;

    .line 574
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$2;->this$0:Lcom/just/agentweb/DefaultWebClient;

    iput-object p2, p0, Lcom/just/agentweb/DefaultWebClient$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 582
    return v1

    .line 579
    :pswitch_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient$2;->this$0:Lcom/just/agentweb/DefaultWebClient;

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebClient$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/just/agentweb/DefaultWebClient;->access$600(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;)Z

    .line 580
    nop

    .line 584
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
