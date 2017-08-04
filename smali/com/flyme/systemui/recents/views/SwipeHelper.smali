.class public Lcom/flyme/systemui/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field private mAmount:F

.field mAnim:Landroid/animation/ValueAnimator;

.field mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

.field private mDensityScale:F

.field mDragDownState:Z

.field mDragDownToBottom:Z

.field mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

.field private mDragFocus:Z

.field private mDragging:Z

.field private mInitedDown:Z

.field private mInitialTouchPos:F

.field mMaxDragDownDistance:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field final mSnapInterpolator:Landroid/view/animation/Interpolator;

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private shouldInterceptTouchEvent:Z


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/recents/views/SwipeHelper;F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->setAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 68
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    .line 48
    return-void
.end method

.method public constructor <init>(ILcom/flyme/systemui/recents/views/SwipeHelper$Callback;FF)V
    .locals 5
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    const/4 v1, 0x1

    const v4, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 63
    const/16 v0, 0x4b

    iput v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 64
    const/16 v0, 0x96

    iput v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 72
    iput v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 87
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    .line 88
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 91
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->shouldInterceptTouchEvent:Z

    .line 93
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    .line 297
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSnapInterpolator:Landroid/view/animation/Interpolator;

    .line 396
    iput v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    .line 397
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    .line 398
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownToBottom:Z

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 97
    iput-object p2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    .line 98
    iput p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    iput p3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDensityScale:F

    .line 101
    iput p4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 96
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 123
    iget v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 122
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 123
    aput p2, v2, v3

    .line 122
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 123
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 254
    .local v1, "canAnimViewBeDismissed":Z
    cmpg-float v4, p2, v5

    if-ltz v4, :cond_0

    .line 255
    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 258
    :cond_0
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    .line 262
    .local v3, "newPos":F
    :goto_0
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 263
    .local v2, "duration":I
    cmpl-float v4, p2, v5

    if-eqz v4, :cond_3

    .line 265
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 266
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 265
    mul-float/2addr v4, v5

    .line 266
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 265
    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 264
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 271
    :goto_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v5, v6}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0, p1, v3}, Lcom/flyme/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 273
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/flyme/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 275
    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper$1;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper$2;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    return-void

    .line 257
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":I
    .end local v3    # "newPos":F
    :cond_1
    cmpl-float v4, p2, v5

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-eq v4, v6, :cond_0

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 268
    .restart local v2    # "duration":I
    :cond_3
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private dragDownChild(F)V
    .locals 6
    .param p1, "velocity"    # F

    .prologue
    .line 330
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    .line 331
    .local v2, "start":F
    iget v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    .line 332
    .local v1, "end":F
    sub-float v3, v1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, p1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v0, v3

    .line 333
    .local v0, "duration":I
    const/16 v3, 0x96

    if-ge v0, v3, :cond_1

    .line 334
    const/16 v0, 0x96

    .line 339
    :cond_0
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$5;

    invoke-direct {v4, p0, v2, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper$5;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;FF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$6;

    invoke-direct {v4, p0}, Lcom/flyme/systemui/recents/views/SwipeHelper$6;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 329
    return-void

    .line 335
    :cond_1
    const/16 v3, 0x190

    if-le v0, v3, :cond_0

    .line 336
    const/16 v0, 0x190

    goto :goto_0

    .line 339
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 478
    const/16 v7, 0x3e8

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 479
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 480
    .local v6, "velocity":F
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    .line 481
    .local v4, "perpendicularVelocity":F
    iget v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v8, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v3, v7, v8

    .line 482
    .local v3, "escapeVelocity":F
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0, v7}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    .line 485
    .local v5, "translation":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0, v7}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    float-to-double v10, v7

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    cmpl-double v7, v8, v10

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 486
    .local v0, "childSwipedFarEnough":Z
    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_5

    .line 487
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 488
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-ne v8, v7, :cond_4

    const/4 v1, 0x1

    .line 490
    .local v1, "childSwipedFastEnough":Z
    :goto_3
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v7, v8}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 491
    invoke-direct {p0, v5}, Lcom/flyme/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v7

    .line 490
    if-eqz v7, :cond_7

    .line 492
    if-nez v1, :cond_6

    move v2, v0

    .line 494
    :goto_4
    if-eqz v2, :cond_0

    iget-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    if-eqz v7, :cond_8

    .line 500
    :cond_0
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    if-eqz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_a

    .line 501
    invoke-direct {p0, v6}, Lcom/flyme/systemui/recents/views/SwipeHelper;->dragDownChild(F)V

    .line 477
    .end local v6    # "velocity":F
    :goto_5
    return-void

    .line 485
    .end local v0    # "childSwipedFarEnough":Z
    .end local v1    # "childSwipedFastEnough":Z
    .restart local v6    # "velocity":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childSwipedFarEnough":Z
    goto :goto_0

    .line 488
    :cond_2
    const/4 v7, 0x0

    move v8, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "childSwipedFastEnough":Z
    goto :goto_3

    .line 486
    .end local v1    # "childSwipedFastEnough":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "childSwipedFastEnough":Z
    goto :goto_3

    .line 492
    :cond_6
    const/4 v2, 0x1

    .local v2, "dismissChild":Z
    goto :goto_4

    .line 490
    .end local v2    # "dismissChild":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "dismissChild":Z
    goto :goto_4

    .line 494
    .end local v2    # "dismissChild":Z
    :cond_8
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownToBottom:Z

    if-nez v7, :cond_0

    .line 496
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v1, :cond_9

    .end local v6    # "velocity":F
    :goto_6
    invoke-direct {p0, v7, v6}, Lcom/flyme/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto :goto_5

    .restart local v6    # "velocity":F
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 503
    :cond_a
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0, v7, v6}, Lcom/flyme/systemui/recents/views/SwipeHelper;->snapChild(Lcom/flyme/systemui/recents/views/TaskView;F)V

    goto :goto_5
.end method

.method private getOriginTranslation(Lcom/flyme/systemui/recents/views/TaskView;)F
    .locals 1
    .param p1, "v"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 113
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 128
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v1, v1

    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 117
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 172
    :cond_1
    return v1
.end method

.method private isValidSwipeDirection(F)Z
    .locals 3
    .param p1, "amount"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    .line 458
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    .line 459
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    .line 461
    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    :goto_1
    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_1

    .line 465
    :cond_3
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-ne v0, v2, :cond_7

    .line 466
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_5

    .line 467
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_4

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    :goto_2
    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_2

    .line 469
    :cond_5
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_6

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    :goto_3
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_3

    .line 474
    :cond_7
    return v2
.end method

.method private setAmount(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 429
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 430
    .local v1, "locView":Lcom/flyme/systemui/recents/views/TaskView;
    :goto_0
    if-nez v1, :cond_1

    .line 431
    return-void

    .line 429
    .end local v1    # "locView":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    .restart local v1    # "locView":Lcom/flyme/systemui/recents/views/TaskView;
    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getOriginTranslation(Lcom/flyme/systemui/recents/views/TaskView;)F

    move-result v3

    add-float v2, v3, p1

    .line 434
    .local v2, "translation":F
    invoke-direct {p0, v1, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 435
    iput p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    .line 436
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    if-eqz v3, :cond_4

    .line 437
    cmpg-float v3, p1, v4

    if-gtz v3, :cond_3

    .line 438
    iput-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 439
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    .line 440
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, v1, v4}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onDragDownChanged(Lcom/flyme/systemui/recents/views/TaskView;F)V

    .line 441
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;

    invoke-direct {v4, v1}, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 428
    :cond_2
    :goto_1
    return-void

    .line 442
    :cond_3
    cmpl-float v3, p1, v4

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    if-eqz v3, :cond_2

    .line 443
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    div-float v4, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 444
    .local v0, "dragDownP":F
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, v1, v0}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onDragDownChanged(Lcom/flyme/systemui/recents/views/TaskView;F)V

    goto :goto_1

    .line 447
    .end local v0    # "dragDownP":F
    :cond_4
    cmpl-float v3, p1, v4

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    if-eqz v3, :cond_2

    .line 448
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 449
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    .line 450
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;

    invoke-direct {v4, v1}, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setSwipeAmount(F)V
    .locals 8
    .param p1, "amount"    # F

    .prologue
    const v5, 0x3e19999a    # 0.15f

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v4, 0x0

    .line 402
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 403
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxDragDownDistance:F

    iput v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    .line 406
    :cond_0
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    .line 408
    .local v1, "size":F
    mul-float v0, v5, v1

    .line 409
    .local v0, "maxScrollDistance":F
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 410
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    sub-float/2addr p1, v2

    .line 411
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMaxDragDownDistance:F

    div-float v3, p1, v1

    float-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    add-float p1, v2, v3

    .line 425
    .end local v0    # "maxScrollDistance":F
    .end local v1    # "size":F
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->setAmount(F)V

    .line 401
    return-void

    .line 415
    :cond_2
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v2, v3}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownToBottom:Z

    .line 414
    if-eqz v2, :cond_1

    .line 416
    :cond_3
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    .line 417
    .restart local v1    # "size":F
    mul-float v0, v5, v1

    .line 418
    .restart local v0    # "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_5

    .line 419
    cmpl-float v2, p1, v4

    if-lez v2, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    neg-float p1, v0

    goto :goto_0

    .line 421
    :cond_5
    div-float v2, p1, v1

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p1, v0, v2

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 133
    iget v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Lcom/flyme/systemui/recents/views/TaskView;F)V
    .locals 6
    .param p1, "view"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "velocity"    # F

    .prologue
    .line 299
    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    .line 300
    .local v2, "start":F
    const/4 v1, 0x0

    .line 301
    .local v1, "end":F
    const/4 v3, 0x0

    sub-float/2addr v3, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, p2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v0, v3

    .line 302
    .local v0, "duration":I
    const/16 v3, 0x96

    if-ge v0, v3, :cond_1

    .line 303
    const/16 v0, 0x96

    .line 308
    :cond_0
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    .line 309
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mSnapInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$3;

    invoke-direct {v4, p0, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper$3;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/flyme/systemui/recents/views/SwipeHelper$4;

    invoke-direct {v4, p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper$4;-><init>(Lcom/flyme/systemui/recents/views/SwipeHelper;Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    return-void

    .line 304
    :cond_1
    const/16 v3, 0x190

    if-le v0, v3, :cond_0

    .line 305
    const/16 v0, 0x190

    goto :goto_0

    .line 308
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public forceSnapChild()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->snapChild(Lcom/flyme/systemui/recents/views/TaskView;F)V

    .line 508
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    goto :goto_0
.end method

.method getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 150
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 151
    .local v3, "viewSize":F
    const v4, 0x3f266666    # 0.65f

    mul-float v0, v4, v3

    .line 152
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 153
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 154
    .local v1, "pos":F
    sget v4, Lcom/flyme/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 155
    sget v4, Lcom/flyme/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 159
    :cond_0
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 160
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 161
    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 156
    :cond_1
    sget v4, Lcom/flyme/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 157
    sget v4, Lcom/flyme/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 179
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    return v3

    .line 181
    :pswitch_0
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 182
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 183
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 184
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitedDown:Z

    .line 185
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eq v3, v4, :cond_1

    .line 186
    iput-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 188
    :cond_1
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v3, :cond_5

    .line 189
    const/4 v3, 0x0

    iput v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    .line 190
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v3, v4}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->canChildBeDragDown(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    iget v3, v3, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 193
    const v4, 0x3f19999a    # 0.6f

    .line 192
    sub-float/2addr v3, v4

    .line 191
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 194
    const v4, 0x3e19999a    # 0.15f

    .line 191
    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 195
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    .line 199
    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/flyme/systemui/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mRtl:Z

    .line 200
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v3, v4}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 201
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 212
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 197
    :cond_3
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragFocus:Z

    goto :goto_1

    .line 203
    :cond_4
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_2

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 207
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 209
    iput-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 215
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 218
    .local v2, "pos":F
    iget v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 219
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    .line 221
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 222
    iput-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    .line 224
    :cond_6
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnBeginDrag;

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {v4, v5}, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnBeginDrag;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v3, v4}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 226
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 227
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitedDown:Z

    .line 228
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto/16 :goto_0

    .line 234
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownState:Z

    if-nez v3, :cond_7

    .line 235
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 236
    iput-object v5, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    goto/16 :goto_0

    .line 238
    :cond_7
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 240
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v3}, Lcom/flyme/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    return v2

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 368
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 393
    :cond_1
    :goto_0
    return v4

    .line 371
    :pswitch_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {v2}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 374
    iput-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAnim:Landroid/animation/ValueAnimator;

    .line 376
    :cond_2
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitedDown:Z

    if-nez v2, :cond_3

    .line 377
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitedDown:Z

    .line 378
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mAmount:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 380
    :cond_3
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 381
    .local v1, "delta":F
    invoke-direct {p0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->setSwipeAmount(F)V

    .line 382
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v2, v3, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_0

    .line 388
    .end local v1    # "delta":F
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCurrView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 145
    return-void
.end method
