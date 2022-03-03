.class Lcom/just/agentweb/WebParentLayout$2;
.super Ljava/lang/Object;
.source "WebParentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/WebParentLayout;->createErrorLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/WebParentLayout;

.field final synthetic val$mFrameLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/just/agentweb/WebParentLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/WebParentLayout;

    .line 128
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout$2;->this$0:Lcom/just/agentweb/WebParentLayout;

    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout$2;->val$mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout$2;->this$0:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout$2;->val$mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 133
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout$2;->this$0:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 135
    :cond_0
    return-void
.end method
