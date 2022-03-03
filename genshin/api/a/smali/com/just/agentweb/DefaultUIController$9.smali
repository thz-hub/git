.class Lcom/just/agentweb/DefaultUIController$9;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V
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

    .line 200
    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 203
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    iget-object v1, v0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultUIController;->toDismissDialog(Landroid/app/Dialog;)V

    .line 204
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultUIController;->access$000(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/DefaultUIController;->access$100(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V

    .line 205
    return-void
.end method
