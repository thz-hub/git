.class public final Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;
.super Ljava/lang/Object;
.source "NotificationResinViewBackupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivClose:Landroid/widget/ImageButton;

.field public final ivExImage1:Landroid/widget/ImageView;

.field public final ivExImage2:Landroid/widget/ImageView;

.field public final ivExImage3:Landroid/widget/ImageView;

.field public final ivExImage4:Landroid/widget/ImageView;

.field public final ivExImage5:Landroid/widget/ImageView;

.field public final ivResin:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvExText1:Landroid/widget/TextView;

.field public final tvExText2:Landroid/widget/TextView;

.field public final tvExText3:Landroid/widget/TextView;

.field public final tvExText4:Landroid/widget/TextView;

.field public final tvExText5:Landroid/widget/TextView;

.field public final tvResin1:Landroid/widget/TextView;

.field public final tvResin2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "ivClose"    # Landroid/widget/ImageButton;
    .param p3, "ivExImage1"    # Landroid/widget/ImageView;
    .param p4, "ivExImage2"    # Landroid/widget/ImageView;
    .param p5, "ivExImage3"    # Landroid/widget/ImageView;
    .param p6, "ivExImage4"    # Landroid/widget/ImageView;
    .param p7, "ivExImage5"    # Landroid/widget/ImageView;
    .param p8, "ivResin"    # Landroid/widget/ImageView;
    .param p9, "tvExText1"    # Landroid/widget/TextView;
    .param p10, "tvExText2"    # Landroid/widget/TextView;
    .param p11, "tvExText3"    # Landroid/widget/TextView;
    .param p12, "tvExText4"    # Landroid/widget/TextView;
    .param p13, "tvExText5"    # Landroid/widget/TextView;
    .param p14, "tvResin1"    # Landroid/widget/TextView;
    .param p15, "tvResin2"    # Landroid/widget/TextView;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->rootView:Landroid/widget/LinearLayout;

    .line 73
    iput-object p2, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivClose:Landroid/widget/ImageButton;

    .line 74
    iput-object p3, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivExImage1:Landroid/widget/ImageView;

    .line 75
    iput-object p4, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivExImage2:Landroid/widget/ImageView;

    .line 76
    iput-object p5, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivExImage3:Landroid/widget/ImageView;

    .line 77
    iput-object p6, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivExImage4:Landroid/widget/ImageView;

    .line 78
    iput-object p7, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivExImage5:Landroid/widget/ImageView;

    .line 79
    iput-object p8, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->ivResin:Landroid/widget/ImageView;

    .line 80
    iput-object p9, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvExText1:Landroid/widget/TextView;

    .line 81
    iput-object p10, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvExText2:Landroid/widget/TextView;

    .line 82
    iput-object p11, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvExText3:Landroid/widget/TextView;

    .line 83
    iput-object p12, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvExText4:Landroid/widget/TextView;

    .line 84
    iput-object p13, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvExText5:Landroid/widget/TextView;

    .line 85
    iput-object p14, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvResin1:Landroid/widget/TextView;

    .line 86
    iput-object p15, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->tvResin2:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 116
    move-object/from16 v0, p0

    const v1, 0x7f0800d2

    .line 117
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 118
    .local v2, "ivClose":Landroid/widget/ImageButton;
    if-eqz v2, :cond_d

    .line 122
    const v1, 0x7f0800d3

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    .line 124
    .local v19, "ivExImage1":Landroid/widget/ImageView;
    if-eqz v19, :cond_c

    .line 128
    const v1, 0x7f0800d4

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/ImageView;

    .line 130
    .local v20, "ivExImage2":Landroid/widget/ImageView;
    if-eqz v20, :cond_b

    .line 134
    const v1, 0x7f0800d5

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    .line 136
    .local v21, "ivExImage3":Landroid/widget/ImageView;
    if-eqz v21, :cond_a

    .line 140
    const v1, 0x7f0800d6

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/ImageView;

    .line 142
    .local v22, "ivExImage4":Landroid/widget/ImageView;
    if-eqz v22, :cond_9

    .line 146
    const v1, 0x7f0800d7

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/ImageView;

    .line 148
    .local v23, "ivExImage5":Landroid/widget/ImageView;
    if-eqz v23, :cond_8

    .line 152
    const v1, 0x7f0800f4

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/ImageView;

    .line 154
    .local v24, "ivResin":Landroid/widget/ImageView;
    if-eqz v24, :cond_7

    .line 158
    const v1, 0x7f0801ea

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 160
    .local v25, "tvExText1":Landroid/widget/TextView;
    if-eqz v25, :cond_6

    .line 164
    const v1, 0x7f0801eb

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 166
    .local v26, "tvExText2":Landroid/widget/TextView;
    if-eqz v26, :cond_5

    .line 170
    const v1, 0x7f0801ec

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 172
    .local v27, "tvExText3":Landroid/widget/TextView;
    if-eqz v27, :cond_4

    .line 176
    const v1, 0x7f0801ed

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/TextView;

    .line 178
    .local v28, "tvExText4":Landroid/widget/TextView;
    if-eqz v28, :cond_3

    .line 182
    const v1, 0x7f0801ee

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 184
    .local v29, "tvExText5":Landroid/widget/TextView;
    if-eqz v29, :cond_2

    .line 188
    const v1, 0x7f0801f9

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 190
    .local v30, "tvResin1":Landroid/widget/TextView;
    if-eqz v30, :cond_1

    .line 194
    const v1, 0x7f0801fa

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 196
    .local v31, "tvResin2":Landroid/widget/TextView;
    if-eqz v31, :cond_0

    .line 200
    new-instance v32, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v32

    .line 197
    :cond_0
    goto :goto_0

    .line 191
    .end local v31    # "tvResin2":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 185
    .end local v30    # "tvResin1":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 179
    .end local v29    # "tvExText5":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 173
    .end local v28    # "tvExText4":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 167
    .end local v27    # "tvExText3":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 161
    .end local v26    # "tvExText2":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 155
    .end local v25    # "tvExText1":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 149
    .end local v24    # "ivResin":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 143
    .end local v23    # "ivExImage5":Landroid/widget/ImageView;
    :cond_9
    goto :goto_0

    .line 137
    .end local v22    # "ivExImage4":Landroid/widget/ImageView;
    :cond_a
    goto :goto_0

    .line 131
    .end local v21    # "ivExImage3":Landroid/widget/ImageView;
    :cond_b
    goto :goto_0

    .line 125
    .end local v20    # "ivExImage2":Landroid/widget/ImageView;
    :cond_c
    goto :goto_0

    .line 119
    .end local v19    # "ivExImage1":Landroid/widget/ImageView;
    :cond_d
    nop

    .line 204
    .end local v2    # "ivClose":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 103
    const v0, 0x7f0b0063

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->bind(Landroid/view/View;)Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/databinding/NotificationResinViewBackupBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
