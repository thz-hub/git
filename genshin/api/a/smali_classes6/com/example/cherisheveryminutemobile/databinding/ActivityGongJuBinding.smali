.class public final Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;
.super Ljava/lang/Object;
.source "ActivityGongJuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnGetcookie:Landroid/widget/Button;

.field public final btnReturn:Landroid/widget/Button;

.field public final btnSign:Landroid/widget/Button;

.field public final btnYuanShenLaunch:Landroid/widget/Button;

.field public final btnYunyuanShenLaunch:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnGetcookie"    # Landroid/widget/Button;
    .param p3, "btnReturn"    # Landroid/widget/Button;
    .param p4, "btnSign"    # Landroid/widget/Button;
    .param p5, "btnYuanShenLaunch"    # Landroid/widget/Button;
    .param p6, "btnYunyuanShenLaunch"    # Landroid/widget/Button;
    .param p7, "textView"    # Landroid/widget/TextView;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->btnGetcookie:Landroid/widget/Button;

    .line 46
    iput-object p3, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->btnReturn:Landroid/widget/Button;

    .line 47
    iput-object p4, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->btnSign:Landroid/widget/Button;

    .line 48
    iput-object p5, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->btnYuanShenLaunch:Landroid/widget/Button;

    .line 49
    iput-object p6, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->btnYunyuanShenLaunch:Landroid/widget/Button;

    .line 50
    iput-object p7, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->textView:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 80
    move-object/from16 v0, p0

    const v1, 0x7f08005b

    .line 81
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 82
    .local v2, "btnGetcookie":Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 86
    const v1, 0x7f08005e

    .line 87
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/Button;

    .line 88
    .local v11, "btnReturn":Landroid/widget/Button;
    if-eqz v11, :cond_4

    .line 92
    const v1, 0x7f080059

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 94
    .local v12, "btnSign":Landroid/widget/Button;
    if-eqz v12, :cond_3

    .line 98
    const v1, 0x7f080062

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Button;

    .line 100
    .local v13, "btnYuanShenLaunch":Landroid/widget/Button;
    if-eqz v13, :cond_2

    .line 104
    const v1, 0x7f080063

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 106
    .local v14, "btnYunyuanShenLaunch":Landroid/widget/Button;
    if-eqz v14, :cond_1

    .line 110
    const v1, 0x7f0801d0

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "textView":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 116
    new-instance v16, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-object v16

    .line 113
    :cond_0
    goto :goto_0

    .line 107
    .end local v15    # "textView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 101
    .end local v14    # "btnYunyuanShenLaunch":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 95
    .end local v13    # "btnYuanShenLaunch":Landroid/widget/Button;
    :cond_3
    goto :goto_0

    .line 89
    .end local v12    # "btnSign":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 83
    .end local v11    # "btnReturn":Landroid/widget/Button;
    :cond_5
    nop

    .line 119
    .end local v2    # "btnGetcookie":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 67
    const v0, 0x7f0b001d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/databinding/ActivityGongJuBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
