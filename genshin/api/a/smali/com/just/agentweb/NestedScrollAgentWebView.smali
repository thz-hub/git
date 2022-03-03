.class public Lcom/just/agentweb/NestedScrollAgentWebView;
.super Lcom/just/agentweb/AgentWebView;
.source "NestedScrollAgentWebView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mLastMotionY:I

.field private mNestedYOffset:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    .line 42
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    .line 47
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 1

    .line 51
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/just/agentweb/NestedScrollAgentWebView;->setNestedScrollingEnabled(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 143
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 148
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 138
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 133
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 57
    move-object/from16 v6, p0

    const/4 v7, 0x0

    .line 58
    .local v7, "result":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 59
    .local v8, "trackedEvent":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    .line 60
    .local v9, "action":I
    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 61
    iput v0, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    .line 63
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v10, v1

    .line 64
    .local v10, "y":I
    iget v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v11, 0x0

    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 65
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 72
    :pswitch_1
    iget v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    sub-int/2addr v1, v10

    .line 74
    .local v1, "deltaY":I
    iget-object v2, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    iget-object v3, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    .line 76
    iget-object v2, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v2, v2, v13

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    iget v2, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v3, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v3, v3, v13

    add-int/2addr v2, v3

    iput v2, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    move v14, v1

    goto :goto_0

    .line 74
    :cond_1
    move v14, v1

    .line 80
    .end local v1    # "deltaY":I
    .local v14, "deltaY":I
    :goto_0
    iget-object v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int v1, v10, v1

    iput v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->getScrollY()I

    move-result v15

    .line 83
    .local v15, "oldY":I
    add-int v1, v15, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 84
    .local v16, "newScrollY":I
    sub-int v17, v16, v15

    .line 85
    .local v17, "dyConsumed":I
    sub-int v18, v14, v17

    .line 87
    .local v18, "dyUnconsumed":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget v0, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    iget-object v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    .line 89
    aget v0, v1, v13

    int-to-float v0, v0

    invoke-virtual {v8, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 90
    iget v0, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v1, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    .line 93
    :cond_2
    invoke-super {v6, v8}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 94
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 95
    goto :goto_1

    .line 99
    .end local v14    # "deltaY":I
    .end local v15    # "oldY":I
    .end local v16    # "newScrollY":I
    .end local v17    # "dyConsumed":I
    .end local v18    # "dyUnconsumed":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->stopNestedScroll()V

    .line 100
    invoke-super/range {p0 .. p1}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 67
    :pswitch_3
    iput v10, v6, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    .line 68
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/just/agentweb/NestedScrollAgentWebView;->startNestedScroll(I)Z

    .line 69
    invoke-super/range {p0 .. p1}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 70
    nop

    .line 103
    :goto_1
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 108
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 109
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .line 118
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 124
    return-void
.end method
