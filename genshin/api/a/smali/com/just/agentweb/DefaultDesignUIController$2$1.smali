.class Lcom/just/agentweb/DefaultDesignUIController$2$1;
.super Ljava/lang/Object;
.source "DefaultDesignUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultDesignUIController$2;->onBindViewHolder(Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultDesignUIController$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/just/agentweb/DefaultDesignUIController$2;

    .line 143
    iput-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

    iput p2, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

    iget-object v0, v0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultDesignUIController;->access$200(Lcom/just/agentweb/DefaultDesignUIController;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

    iget-object v0, v0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultDesignUIController;->access$200(Lcom/just/agentweb/DefaultDesignUIController;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

    iget-object v0, v0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    invoke-static {v0}, Lcom/just/agentweb/DefaultDesignUIController;->access$200(Lcom/just/agentweb/DefaultDesignUIController;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "mMessage":Landroid/os/Message;
    iget v1, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->val$i:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iget-object v1, p0, Lcom/just/agentweb/DefaultDesignUIController$2$1;->this$1:Lcom/just/agentweb/DefaultDesignUIController$2;

    iget-object v1, v1, Lcom/just/agentweb/DefaultDesignUIController$2;->val$callback:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 153
    return-void
.end method
