.class Lcom/just/agentweb/WebIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/WebIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/WebIndicator;


# direct methods
.method constructor <init>(Lcom/just/agentweb/WebIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/WebIndicator;

    .line 261
    iput-object p1, p0, Lcom/just/agentweb/WebIndicator$2;->this$0:Lcom/just/agentweb/WebIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 264
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator$2;->this$0:Lcom/just/agentweb/WebIndicator;

    invoke-static {v0}, Lcom/just/agentweb/WebIndicator;->access$100(Lcom/just/agentweb/WebIndicator;)V

    .line 265
    return-void
.end method
