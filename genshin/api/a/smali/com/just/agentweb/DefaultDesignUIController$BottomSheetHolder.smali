.class Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DefaultDesignUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultDesignUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomSheetHolder"
.end annotation


# instance fields
.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 167
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 168
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/just/agentweb/DefaultDesignUIController$BottomSheetHolder;->mTextView:Landroid/widget/TextView;

    .line 169
    return-void
.end method
