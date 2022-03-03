.class public Lcom/just/agentweb/WebIndicator;
.super Lcom/just/agentweb/BaseIndicatorView;
.source "WebIndicator.java"

# interfaces
.implements Lcom/just/agentweb/BaseIndicatorSpec;


# static fields
.field public static final DO_END_ANIMATION_DURATION:I = 0x258

.field public static final FINISH:I = 0x2

.field public static final MAX_DECELERATE_SPEED_DURATION:I = 0x1c2

.field public static final MAX_UNIFORM_SPEED_DURATION:I = 0x1f40

.field public static final STARTED:I = 0x1

.field public static final UN_START:I


# instance fields
.field private indicatorStatus:I

.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mColor:I

.field private mCurrentDoEndAnimationDuration:I

.field private mCurrentMaxDecelerateSpeedDuration:I

.field private mCurrentMaxUniformSpeedDuration:I

.field private mCurrentProgress:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetWidth:I

.field public mWebIndicatorDefaultHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    .line 70
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    .line 74
    const/16 v1, 0x1c2

    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    .line 78
    const/16 v1, 0x258

    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    .line 82
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    .line 252
    new-instance v0, Lcom/just/agentweb/WebIndicator$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$1;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 261
    new-instance v0, Lcom/just/agentweb/WebIndicator$2;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$2;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/WebIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/just/agentweb/WebIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/just/agentweb/WebIndicator;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/just/agentweb/WebIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/just/agentweb/WebIndicator;

    .line 38
    invoke-direct {p0}, Lcom/just/agentweb/WebIndicator;->doEnd()V

    return-void
.end method

.method private doEnd()V
    .locals 2

    .line 281
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 282
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 284
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setAlpha(F)V

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    .line 287
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    .line 107
    const-string v0, "#1aad19"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 108
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 111
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    .line 113
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/just/agentweb/AgentWebUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    .line 114
    return-void
.end method

.method private startAnim(Z)V
    .locals 15
    .param p1, "isFinished"    # Z

    .line 198
    move-object v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42be0000    # 95.0f

    if-eqz p1, :cond_0

    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42be0000    # 95.0f

    .line 199
    .local v3, "v":F
    :goto_0
    iget-object v4, v0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, v0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 202
    :cond_1
    iget v4, v0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    const v4, 0x322bcc77    # 1.0E-8f

    :cond_2
    iput v4, v0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 203
    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-nez p1, :cond_3

    .line 204
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 206
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const v4, 0x3f19999a    # 0.6f

    mul-float v10, v3, v4

    .line 207
    .local v10, "p1":F
    move v11, v3

    .line 208
    .local v11, "p2":F
    new-array v12, v9, [F

    iget v13, v0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    aput v13, v12, v7

    aput v10, v12, v8

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 209
    .local v12, "animator":Landroid/animation/ValueAnimator;
    new-array v9, v9, [F

    aput v10, v9, v7

    aput v11, v9, v8

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 210
    .local v7, "animator0":Landroid/animation/ValueAnimator;
    iget v9, v0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    div-float/2addr v9, v1

    sub-float/2addr v6, v9

    sub-float/2addr v6, v5

    .line 211
    .local v6, "residue":F
    iget v1, v0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    int-to-float v1, v1

    mul-float v1, v1, v6

    float-to-long v13, v1

    .line 212
    .local v13, "duration":J
    long-to-float v1, v13

    mul-float v1, v1, v4

    float-to-long v4, v1

    .line 213
    .local v4, "duration6":J
    long-to-float v1, v13

    const v9, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v9

    float-to-long v8, v1

    .line 214
    .local v8, "duration4":J
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    invoke-virtual {v12, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    iget-object v1, v0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    iget-object v1, v0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 222
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 223
    iput-object v2, v0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    .line 224
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v4    # "duration6":J
    .end local v6    # "residue":F
    .end local v7    # "animator0":Landroid/animation/ValueAnimator;
    .end local v8    # "duration4":J
    .end local v10    # "p1":F
    .end local v11    # "p2":F
    .end local v12    # "animator":Landroid/animation/ValueAnimator;
    .end local v13    # "duration":J
    goto :goto_1

    .line 225
    :cond_3
    const/4 v8, 0x0

    .line 226
    .local v8, "segment95Animator":Landroid/animation/ValueAnimator;
    cmpg-float v10, v4, v2

    if-gez v10, :cond_4

    .line 227
    new-array v10, v9, [F

    aput v4, v10, v7

    const/4 v4, 0x1

    aput v2, v10, v4

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 228
    iget v2, v0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    div-float/2addr v2, v1

    sub-float/2addr v6, v2

    sub-float/2addr v6, v5

    .line 229
    .restart local v6    # "residue":F
    iget v1, v0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    int-to-float v1, v1

    mul-float v1, v1, v6

    float-to-long v1, v1

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 230
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v1, v0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    .end local v6    # "residue":F
    :cond_4
    new-array v1, v9, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 234
    .local v1, "mObjectAnimator":Landroid/animation/ObjectAnimator;
    iget v2, v0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    new-array v2, v9, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 236
    .local v2, "mValueAnimatorEnd":Landroid/animation/ValueAnimator;
    iget v4, v0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    iget-object v4, v0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 239
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 240
    if-eqz v8, :cond_5

    .line 241
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v5, "animatorSet0":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 243
    move-object v4, v5

    .line 245
    .end local v5    # "animatorSet0":Landroid/animation/AnimatorSet;
    :cond_5
    iget-object v5, v0, Lcom/just/agentweb/WebIndicator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 247
    iput-object v4, v0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    .line 249
    .end local v1    # "mObjectAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "mValueAnimatorEnd":Landroid/animation/ValueAnimator;
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v8    # "segment95Animator":Landroid/animation/ValueAnimator;
    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    .line 250
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 148
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method public hide()V
    .locals 1

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    .line 195
    return-void
.end method

.method public offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 305
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/just/agentweb/BaseIndicatorView;->onDetachedFromWindow()V

    .line 274
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    .line 278
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 144
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 128
    .local v0, "wMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 129
    .local v1, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 130
    .local v2, "hMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 132
    .local v3, "h":I
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v1, v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    move v1, v5

    .line 135
    :cond_1
    if-ne v2, v4, :cond_2

    .line 136
    iget v3, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    .line 138
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/just/agentweb/WebIndicator;->setMeasuredDimension(II)V

    .line 139
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/BaseIndicatorView;->onSizeChanged(IIII)V

    .line 163
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    .line 164
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 165
    .local v0, "screenWidth":I
    iget v1, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    if-lt v1, v0, :cond_0

    .line 166
    const/16 v1, 0x1c2

    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    .line 167
    const/16 v2, 0x1f40

    iput v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    .line 168
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    goto :goto_0

    .line 171
    :cond_0
    int-to-float v1, v1

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 172
    .local v1, "rate":F
    const/high16 v2, 0x45fa0000    # 8000.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    .line 173
    const/high16 v2, 0x43e10000    # 450.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    .line 174
    const/high16 v2, 0x44160000    # 600.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    .line 177
    .end local v1    # "rate":F
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CURRENT_MAX_UNIFORM_SPEED_DURATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebProgress"

    invoke-static {v2, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public reset()V
    .locals 1

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 292
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 295
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 117
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 118
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .line 122
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    .line 123
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 181
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    .line 184
    :cond_0
    const/high16 v0, 0x42be0000    # 95.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 185
    return-void

    .line 187
    :cond_1
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/just/agentweb/WebIndicator;->startAnim(Z)V

    .line 190
    :cond_2
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "newProgress"    # I

    .line 299
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setProgress(F)V

    .line 300
    return-void
.end method

.method public show()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 156
    invoke-direct {p0, v0}, Lcom/just/agentweb/WebIndicator;->startAnim(Z)V

    .line 158
    :cond_0
    return-void
.end method
