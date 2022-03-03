.class public final Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;
.super Ljava/lang/Object;
.source "ActivitySetuidBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCopy:Landroid/widget/Button;

.field public final btnReturn:Landroid/widget/Button;

.field public final btnSetLaunch:Landroid/widget/Button;

.field public final btnWeb:Landroid/widget/Button;

.field public final cbYuanShen:Landroid/widget/CheckBox;

.field public final cbYunyuanShen:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvUid:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnCopy"    # Landroid/widget/Button;
    .param p3, "btnReturn"    # Landroid/widget/Button;
    .param p4, "btnSetLaunch"    # Landroid/widget/Button;
    .param p5, "btnWeb"    # Landroid/widget/Button;
    .param p6, "cbYuanShen"    # Landroid/widget/CheckBox;
    .param p7, "cbYunyuanShen"    # Landroid/widget/CheckBox;
    .param p8, "tvUid"    # Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->btnCopy:Landroid/widget/Button;

    .line 50
    iput-object p3, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->btnReturn:Landroid/widget/Button;

    .line 51
    iput-object p4, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->btnSetLaunch:Landroid/widget/Button;

    .line 52
    iput-object p5, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->btnWeb:Landroid/widget/Button;

    .line 53
    iput-object p6, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->cbYuanShen:Landroid/widget/CheckBox;

    .line 54
    iput-object p7, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->cbYunyuanShen:Landroid/widget/CheckBox;

    .line 55
    iput-object p8, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->tvUid:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 85
    move-object/from16 v0, p0

    const v1, 0x7f08005a

    .line 86
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    .local v2, "btnCopy":Landroid/widget/Button;
    if-eqz v2, :cond_6

    .line 91
    const v1, 0x7f08005e

    .line 92
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 93
    .local v12, "btnReturn":Landroid/widget/Button;
    if-eqz v12, :cond_5

    .line 97
    const v1, 0x7f080060

    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Button;

    .line 99
    .local v13, "btnSetLaunch":Landroid/widget/Button;
    if-eqz v13, :cond_4

    .line 103
    const v1, 0x7f080061

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 105
    .local v14, "btnWeb":Landroid/widget/Button;
    if-eqz v14, :cond_3

    .line 109
    const v1, 0x7f080068

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 111
    .local v15, "cbYuanShen":Landroid/widget/CheckBox;
    if-eqz v15, :cond_2

    .line 115
    const v1, 0x7f080069

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/CheckBox;

    .line 117
    .local v16, "cbYunyuanShen":Landroid/widget/CheckBox;
    if-eqz v16, :cond_1

    .line 121
    const v1, 0x7f0801ff

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 123
    .local v17, "tvUid":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 127
    new-instance v18, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    return-object v18

    .line 124
    :cond_0
    goto :goto_0

    .line 118
    .end local v17    # "tvUid":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 112
    .end local v16    # "cbYunyuanShen":Landroid/widget/CheckBox;
    :cond_2
    goto :goto_0

    .line 106
    .end local v15    # "cbYuanShen":Landroid/widget/CheckBox;
    :cond_3
    goto :goto_0

    .line 100
    .end local v14    # "btnWeb":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 94
    .end local v13    # "btnSetLaunch":Landroid/widget/Button;
    :cond_5
    goto :goto_0

    .line 88
    .end local v12    # "btnReturn":Landroid/widget/Button;
    :cond_6
    nop

    .line 130
    .end local v2    # "btnCopy":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 72
    const v0, 0x7f0b0021

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivitySetuidBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
