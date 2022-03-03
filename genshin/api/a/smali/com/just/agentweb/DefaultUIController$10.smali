.class Lcom/just/agentweb/DefaultUIController$10;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultUIController;

    .line 269
    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$10;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$10;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultUIController;->access$200(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/DefaultUIController;->access$100(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V

    .line 274
    return-void
.end method
