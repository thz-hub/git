.class public final Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;
.super Ljava/lang/Object;
.source "WighetFangResinBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivResin:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvResin1:Landroid/widget/TextView;

.field public final tvResin2:Landroid/widget/TextView;

.field public final tvResin3:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "ivResin"    # Landroid/widget/ImageView;
    .param p3, "tvResin1"    # Landroid/widget/TextView;
    .param p4, "tvResin2"    # Landroid/widget/TextView;
    .param p5, "tvResin3"    # Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->rootView:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->ivResin:Landroid/widget/ImageView;

    .line 39
    iput-object p3, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->tvResin1:Landroid/widget/TextView;

    .line 40
    iput-object p4, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->tvResin2:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->tvResin3:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 71
    const v0, 0x7f0800f4

    .line 72
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .local v1, "ivResin":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 77
    const v0, 0x7f0801f9

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 79
    .local v8, "tvResin1":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 83
    const v0, 0x7f0801fa

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, "tvResin2":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 89
    const v0, 0x7f0801fb

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 91
    .local v10, "tvResin3":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 95
    new-instance v11, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    .line 92
    :cond_0
    goto :goto_0

    .line 86
    .end local v10    # "tvResin3":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 80
    .end local v9    # "tvResin2":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 74
    .end local v8    # "tvResin1":Landroid/widget/TextView;
    :cond_3
    nop

    .line 98
    .end local v1    # "ivResin":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 58
    const v0, 0x7f0b007c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/databinding/WighetFangResinBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
