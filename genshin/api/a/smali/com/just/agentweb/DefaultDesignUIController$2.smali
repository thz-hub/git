.class Lcom/just/agentweb/DefaultDesignUIController$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DefaultDesignUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultDesignUIController;->getAdapter([Ljava/lang/String;Landroid/os/Handler$Callback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultDesignUIController;

.field final synthetic val$callback:Landroid/os/Handler$Callback;

.field final synthetic val$ways:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultDesignUIController;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultDesignUIController;

    .line 131
    iput-object p1, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->val$ways:[Ljava/lang/String;

    iput-object p3, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->val$ways:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 131
    check-cast p1, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;

    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/DefaultDesignUIController$2;->onBindViewHolder(Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;I)V
    .locals 4
    .param p1, "bottomSheetHolder"    # Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;
    .param p2, "i"    # I

    .line 139
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 140
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    invoke-static {v1}, Lcom/just/agentweb/DefaultDesignUIController;->access$100(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 141
    iget-object v1, p1, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;->mTextView:Landroid/widget/TextView;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p1, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->val$ways:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p1, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;->mTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/just/agentweb/DefaultDesignUIController$2$1;

    invoke-direct {v2, p0, p2}, Lcom/just/agentweb/DefaultDesignUIController$2$1;-><init>(Lcom/just/agentweb/DefaultDesignUIController$2;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/DefaultDesignUIController$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 134
    new-instance v0, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;

    iget-object v1, p0, Lcom/just/agentweb/DefaultDesignUIController$2;->this$0:Lcom/just/agentweb/DefaultDesignUIController;

    invoke-static {v1}, Lcom/just/agentweb/DefaultDesignUIController;->access$000(Lcom/just/agentweb/DefaultDesignUIController;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
