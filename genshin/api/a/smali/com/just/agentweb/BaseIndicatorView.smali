.class public abstract Lcom/just/agentweb/BaseIndicatorView;
.super Landroid/widget/FrameLayout;
.source "BaseIndicatorView.java"

# interfaces
.implements Lcom/just/agentweb/BaseIndicatorSpec;
.implements Lcom/just/agentweb/LayoutParamsOffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 57
    return-void
.end method

.method public reset()V
    .locals 0

    .line 45
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "newProgress"    # I

    .line 49
    return-void
.end method

.method public show()V
    .locals 0

    .line 53
    return-void
.end method
