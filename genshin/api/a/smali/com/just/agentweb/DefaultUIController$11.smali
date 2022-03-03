.class Lcom/just/agentweb/DefaultUIController$11;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultUIController;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultUIController;

    .line 258
    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController$11;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 261
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultUIController;->access$300(Lcom/just/agentweb/DefaultUIController;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultUIController;->toDismissDialog(Landroid/app/Dialog;)V

    .line 263
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultUIController;->access$200(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultUIController;->access$200(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController$11;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void
.end method
