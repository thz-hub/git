.class public final Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;
.super Ljava/lang/Object;
.source "ActivityOpenAppBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;
    .locals 2
    .param p0, "rootView"    # Landroid/view/View;

    .line 46
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;

    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 37
    const v0, 0x7f0b0020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :cond_0
    invoke-static {v0}, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;->bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityOpenAppBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
