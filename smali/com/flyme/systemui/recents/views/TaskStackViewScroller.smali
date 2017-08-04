.class public Lcom/flyme/systemui/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# instance fields
.field interpolator:Landroid/view/animation/Interpolator;

.field mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mFinalAnimatedScroll:F

.field mLastStackScrollP:F

.field mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;
    .param p3, "layoutAlgorithm"    # Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->interpolator:Landroid/view/animation/Interpolator;

    .line 51
    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 52
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    .line 53
    iput-object p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    .line 54
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 50
    return-void
.end method


# virtual methods
.method animateBoundScroll()Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 149
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 150
    .local v1, "newScroll":F
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    .line 151
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method animateFling(ZFFLjava/lang/Runnable;)V
    .locals 8
    .param p1, "isOver"    # Z
    .param p2, "curScroll"    # F
    .param p3, "newScroll"    # F
    .param p4, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 192
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 195
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 197
    iput p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 198
    const-string/jumbo v0, "stackScroll"

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v1

    const/4 v1, 0x1

    aput p3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v0, v1

    const v1, 0x43a68000    # 333.0f

    add-float/2addr v0, v1

    float-to-long v6, v0

    .line 200
    .local v6, "duration":J
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$3;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$4;

    invoke-direct {v1, p0, p4}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$4;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 188
    return-void
.end method

.method animateScroll(FFLjava/lang/Runnable;)V
    .locals 6
    .param p1, "curScroll"    # F
    .param p2, "newScroll"    # F
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 159
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 162
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 164
    iput p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 165
    const-string/jumbo v0, "stackScroll"

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p2, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$1;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0, p3}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$2;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 155
    return-void
.end method

.method public boundScroll()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 102
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 103
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 105
    const/4 v2, 0x1

    return v2

    .line 107
    :cond_0
    return v3
.end method

.method computeScroll()Z
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->scrollRangeToProgress(I)F

    move-result v0

    .line 244
    .local v0, "scroll":F
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScrollRaw(F)V

    .line 245
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    .line 248
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 250
    .end local v0    # "scroll":F
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getBoundedStackScroll(F)F
    .locals 1
    .param p1, "scroll"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    return v0

    .line 127
    :cond_1
    return p1
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1
    .param p1, "scroll"    # F

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getStackScroll()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v2, v2, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v2, v2, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method progressToScrollRange(F)I
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 233
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 58
    return-void
.end method

.method scrollRangeToProgress(I)F
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 237
    int-to-float v0, p1

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, v1, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method setCallbacks(Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .line 63
    return-void
.end method

.method public setStackScroll(F)V
    .locals 2
    .param p1, "s"    # F

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScrollRaw(F)V

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    .line 73
    :cond_0
    return-void
.end method

.method setStackScrollRaw(F)V
    .locals 2
    .param p1, "s"    # F

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    sub-float p1, v0, v1

    .line 85
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLastStackScrollP:F

    .line 86
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 81
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 95
    .local v0, "prevStackScrollP":F
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v2, v2, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 96
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 226
    return-void
.end method

.method stopScroller()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 259
    :cond_0
    return-void
.end method
