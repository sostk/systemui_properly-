.class Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;
    }
.end annotation


# static fields
.field static INACTIVE_POINTER_ID:I


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/flyme/systemui/recents/views/TaskView;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field mInterceptedBySwipeHelper:Z

.field mInterpolatorForTranslation:Landroid/view/animation/Interpolator;

.field mIsScrolling:Z

.field mLastP:F

.field mLastX:I

.field mLastY:I

.field mLongClickFlag:Z

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mPagingTouchSlop:F

.field mScrollTouchSlop:I

.field mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

.field mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackViewScroller;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p3, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;
    .param p4, "scroller"    # Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v2, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 464
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterpolatorForTranslation:Landroid/view/animation/Interpolator;

    .line 68
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 69
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    .line 73
    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 74
    iput-object p4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    .line 75
    iput-object p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .local v1, "densityScale":F
    new-instance v2, Lcom/flyme/systemui/recents/views/SwipeHelper;

    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    const/4 v4, 0x1

    invoke-direct {v2, v4, p0, v1, v3}, Lcom/flyme/systemui/recents/views/SwipeHelper;-><init>(ILcom/flyme/systemui/recents/views/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

    .line 79
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

    invoke-virtual {v2, v5}, Lcom/flyme/systemui/recents/views/SwipeHelper;->setMinAlpha(F)V

    .line 67
    return-void
.end method

.method private getInterpolatorForScale(F)F
    .locals 2
    .param p1, "p"    # F

    .prologue
    const/4 v1, 0x0

    .line 494
    const v0, 0x3ea8f5c3    # 0.33f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 496
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 497
    return v1

    .line 499
    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canChildBeDragDown(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 426
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    .line 427
    .local v0, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v2, v0, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method findViewAtPoint(II)Lcom/flyme/systemui/recents/views/TaskView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 104
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 105
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 106
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 107
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    return-object v2

    .line 105
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 113
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public forceSnapChild()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/SwipeHelper;->forceSnapChild()V

    .line 513
    return-void
.end method

.method public getAnimateToScroll(I)Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;
    .locals 6
    .param p1, "velocity"    # I

    .prologue
    const v5, 0x3e99999a    # 0.3f

    .line 362
    const/4 v3, 0x0

    .line 364
    .local v3, "shouldOver":Z
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    mul-int/2addr v4, p1

    div-int/lit16 p1, v4, 0x3e8

    .line 365
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 366
    .local v2, "nowScroll":F
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->scrollRangeToProgress(I)F

    move-result v4

    add-float/2addr v4, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 367
    .local v1, "n":I
    int-to-float v4, v1

    mul-float v0, v4, v5

    .line 368
    .local v0, "goalScroll":F
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    .line 369
    const/4 v3, 0x1

    .line 373
    :cond_0
    :goto_0
    if-lez p1, :cond_4

    cmpl-float v4, v2, v0

    if-lez v4, :cond_4

    .line 374
    add-float/2addr v0, v5

    .line 375
    const/4 v3, 0x0

    .line 380
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 381
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    .line 385
    :cond_2
    :goto_2
    new-instance v4, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;

    invoke-direct {v4, p0, v0, v3}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;FZ)V

    return-object v4

    .line 370
    :cond_3
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 371
    const/4 v3, 0x1

    goto :goto_0

    .line 376
    :cond_4
    if-gez p1, :cond_1

    cmpg-float v4, v2, v0

    if-gez v4, :cond_1

    .line 377
    sub-float/2addr v0, v5

    .line 378
    const/4 v3, 0x0

    goto :goto_1

    .line 382
    :cond_5
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 383
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    goto :goto_2
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 434
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 435
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 431
    :cond_0
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    move-object v0, p1

    .line 446
    check-cast v0, Lcom/flyme/systemui/recents/views/TaskView;

    .line 448
    .local v0, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->onTaskViewDismissed(Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 445
    return-void
.end method

.method public onDragDownChanged(Lcom/flyme/systemui/recents/views/TaskView;F)V
    .locals 10
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "p"    # F

    .prologue
    .line 468
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 472
    .local v0, "childCount":I
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterpolatorForTranslation:Landroid/view/animation/Interpolator;

    .line 473
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, p2

    .line 472
    invoke-interface {v8, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 473
    const/high16 v9, 0x42700000    # 60.0f

    .line 472
    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 475
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterpolatorForTranslation:Landroid/view/animation/Interpolator;

    invoke-interface {v7, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 476
    .local v3, "pForTranslation":F
    invoke-direct {p0, p2}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->getInterpolatorForScale(F)F

    move-result v2

    .line 478
    .local v2, "pForScale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 479
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v7, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/recents/views/TaskView;

    .line 480
    .local v4, "t":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    .line 481
    .local v6, "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformTemp()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    .line 482
    .local v5, "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    iget v7, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    iget v9, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 483
    iget v7, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v9, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 484
    iget v7, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v9, v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 486
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v7

    iget v7, v7, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    iget v8, v8, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 487
    invoke-virtual {v4, p2}, Lcom/flyme/systemui/recents/views/TaskView;->updateHeadFromDragDown(F)V

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v4    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v5    # "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v6    # "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 467
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    .line 391
    const/4 v3, 0x2

    .line 390
    if-ne v2, v3, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 393
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 409
    .end local v0    # "action":I
    :cond_0
    return v4

    .line 396
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 397
    .local v1, "vScroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v5, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    .line 406
    :cond_1
    :goto_0
    return v5

    .line 402
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 119
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v2, 0x1

    .line 120
    .local v2, "hasChildren":Z
    :goto_0
    if-nez v2, :cond_1

    .line 121
    return v10

    .line 119
    .end local v2    # "hasChildren":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "hasChildren":Z
    goto :goto_0

    .line 125
    :cond_1
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

    invoke-virtual {v8, p1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 126
    iget-boolean v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v8, :cond_2

    .line 127
    return v11

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 133
    .local v0, "action":I
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 210
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v8

    .line 136
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 138
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v8, v8, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    invoke-virtual {v8, v9}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v8

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 139
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 140
    iget v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    invoke-virtual {p0, v8, v9}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 142
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 143
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 145
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 146
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 147
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLongClickFlag:Z

    goto :goto_1

    .line 151
    :pswitch_2
    iget v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v9, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v8, v9, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 155
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 157
    iget v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 159
    .local v1, "activePointerIndex":I
    if-gez v1, :cond_4

    .line 161
    sget v8, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 167
    .local v7, "y":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 168
    .local v6, "x":I
    iget v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v8, v9, :cond_5

    .line 170
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 172
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 173
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_5

    .line 174
    invoke-interface {v3, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 178
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    iput v6, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    .line 179
    iput v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 180
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v8, v8, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v9, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    invoke-virtual {v8, v9}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v8

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_1

    .line 186
    .end local v1    # "activePointerIndex":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 187
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 193
    .end local v5    # "pointerIndex":I
    :pswitch_4
    iget-boolean v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLongClickFlag:Z

    if-eqz v8, :cond_6

    .line 194
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 195
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 201
    :cond_6
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 202
    sget v8, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v8, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 203
    iput-object v9, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 204
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSnapBackCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    move-object v0, p1

    .line 457
    check-cast v0, Lcom/flyme/systemui/recents/views/TaskView;

    .line 459
    .local v0, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 461
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 456
    return-void
.end method

.method public onSwipeChanged(Landroid/view/View;F)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # F

    .prologue
    .line 440
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v23

    if-lez v23, :cond_0

    const/4 v9, 0x1

    .line 217
    .local v9, "hasChildren":Z
    :goto_0
    if-nez v9, :cond_1

    .line 218
    const/16 v23, 0x0

    return v23

    .line 216
    .end local v9    # "hasChildren":Z
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "hasChildren":Z
    goto :goto_0

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/flyme/systemui/recents/views/SwipeHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 223
    const/16 v23, 0x1

    return v23

    .line 227
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    .line 230
    .local v11, "layoutAlgorithm":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 231
    .local v3, "action":I
    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 347
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move/from16 v23, v0

    return v23

    .line 234
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 241
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 250
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 251
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 261
    .end local v10    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v23, v0

    sget v24, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 264
    .local v4, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    .line 265
    .local v19, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 267
    .local v21, "y":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v23, v0

    sub-int v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 269
    .local v22, "yDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 270
    .local v20, "xDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 271
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/flyme/systemui/recents/views/TaskStackView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 274
    .local v15, "parent":Landroid/view/ViewParent;
    if-eqz v15, :cond_4

    .line 275
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 279
    .end local v15    # "parent":Landroid/view/ViewParent;
    .end local v20    # "xDiff":I
    .end local v22    # "yDiff":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 280
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v6

    .line 281
    .local v6, "curP":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move/from16 v23, v0

    sub-float v8, v23, v6

    .line 283
    .local v8, "deltaP":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    .line 284
    .local v7, "curStackScroll":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    add-float v24, v7, v8

    invoke-virtual/range {v23 .. v24}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v14

    .line 285
    .local v14, "overScrollAmount":F
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v23

    if-eqz v23, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v12, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 289
    .local v12, "maxOverScroll":F
    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v23

    div-float v23, v23, v12

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v24, v23

    mul-float v8, v8, v23

    .line 292
    .end local v12    # "maxOverScroll":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    add-float v24, v7, v8

    invoke-virtual/range {v23 .. v24}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 294
    .end local v6    # "curP":F
    .end local v7    # "curStackScroll":F
    .end local v8    # "deltaP":F
    .end local v14    # "overScrollAmount":F
    :cond_6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    .line 295
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 301
    .end local v4    # "activePointerIndex":I
    .end local v19    # "x":I
    .end local v21    # "y":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 303
    .local v18, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 316
    :cond_7
    :goto_2
    sget v23, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 317
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 307
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 309
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 310
    const/16 v18, 0x0

    .line 312
    :cond_9
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->getAnimateToScroll(I)Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;

    move-result-object v5

    .line 313
    .local v5, "animateToScroll":Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    iget-boolean v0, v5, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;->isOver:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v25

    iget v0, v5, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;->toScroll:F

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateFling(ZFFLjava/lang/Runnable;)V

    goto :goto_2

    .line 322
    .end local v5    # "animateToScroll":Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;
    .end local v18    # "velocity":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 323
    .local v17, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    .line 324
    .local v16, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 326
    if-nez v17, :cond_b

    const/4 v13, 0x1

    .line 327
    .local v13, "newPointerIndex":I
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastX:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenXToCurveProgressFake(I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 333
    .end local v13    # "newPointerIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 326
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "newPointerIndex":I
    goto :goto_3

    .line 337
    .end local v13    # "newPointerIndex":I
    .end local v16    # "pointerId":I
    .end local v17    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 341
    :cond_c
    sget v23, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 342
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 98
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 95
    :cond_0
    return-void
.end method
