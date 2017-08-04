.class public Lcom/flyme/systemui/recents/views/TaskView;
.super Landroid/widget/LinearLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;,
        Lcom/flyme/systemui/recents/views/TaskView$1;
    }
.end annotation


# instance fields
.field mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mDimAlpha:F

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mFocusAnimationsEnabled:Z

.field mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

.field mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

.field mIconAlpha:F

.field mIsFocused:Z

.field mMaxDimScale:F

.field mTask:Lcom/flyme/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mTextAlpha:F

.field mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

.field mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

.field mTransformTemp:Lcom/flyme/systemui/recents/views/TaskViewTransform;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/flyme/systemui/recents/views/TaskViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 88
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformTemp:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 119
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/TaskView$1;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 118
    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 141
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 144
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/flyme/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/flyme/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_0
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskViewBounds;

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/recents/views/TaskViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mViewBounds:Lcom/flyme/systemui/recents/views/TaskViewBounds;

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mViewBounds:Lcom/flyme/systemui/recents/views/TaskViewBounds;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 139
    return-void
.end method


# virtual methods
.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 619
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 620
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 621
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2, v2}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    goto :goto_0
.end method

.method public fadeInActionButton(II)V
    .locals 0
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    .line 372
    return-void
.end method

.method public getDim()F
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method getDimFromTaskProgress()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgress:F

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToDim(F)F

    move-result v0

    return v0
.end method

.method getIconAlphaFromTaskProgress()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgress:F

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToIconAlpha(F)F

    move-result v0

    return v0
.end method

.method getTask()Lcom/flyme/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mViewBounds:Lcom/flyme/systemui/recents/views/TaskViewBounds;

    return-object v0
.end method

.method getTextAlphaFromTaskProgress()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgress:F

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToTextAlpha(F)F

    move-result v0

    return v0
.end method

.method getThumbnailViewBounds()Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mViewBounds:Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    return-object v0
.end method

.method public getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getTransformTemp()Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformTemp:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method initViewProperties()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 700
    move-object v1, p0

    .line 701
    .local v1, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_1

    const/4 v0, 0x1

    .line 702
    .local v0, "delayViewClick":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 704
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 705
    new-instance v2, Lcom/flyme/systemui/recents/views/TaskView$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/flyme/systemui/recents/views/TaskView$6;-><init>(Lcom/flyme/systemui/recents/views/TaskView;Landroid/view/View;Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 714
    const-wide/16 v4, 0x7d

    .line 705
    invoke-virtual {p0, v2, v4, v5}, Lcom/flyme/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    :cond_0
    :goto_1
    return-void

    .line 701
    .end local v0    # "delayViewClick":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "delayViewClick":Z
    goto :goto_0

    .line 720
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    invoke-interface {v2, v1, v3, v4}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 182
    const v0, 0x7f0f0208

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    .line 183
    const v0, 0x7f0f01f3

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 184
    const v0, 0x7f0f0206

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewFoot;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    .line 186
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setLongClickable(Z)V

    .line 187
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setHapticFeedbackEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskView$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskView$2;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 604
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 605
    if-nez p1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 603
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 207
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 209
    .local v0, "height":I
    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/flyme/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 210
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/flyme/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 218
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 219
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 218
    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 224
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 225
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 226
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 224
    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 228
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    .line 229
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 230
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskFootHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 228
    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->measure(II)V

    .line 231
    invoke-virtual {p0, v2, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method public onTaskBound(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    .line 632
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/recents/model/Task;->setCallbacks(Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;)V

    .line 630
    return-void
.end method

.method public onTaskDataLoaded()V
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 648
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 649
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-wide v2, v1, Lcom/flyme/systemui/recents/model/Task;->mem:J

    invoke-virtual {v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setText(J)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setVisibility(I)V

    .line 668
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 643
    return-void

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTaskDataUnloaded()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/Task;->setCallbacks(Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;)V

    .line 676
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 677
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 678
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setText(J)V

    .line 688
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 672
    return-void
.end method

.method public optiShadow()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlpha(F)V

    .line 235
    return-void
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 4
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 312
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setSecretive(Z)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v1

    iput-boolean v3, v1, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    .line 318
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlpha(F)V

    .line 320
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getDim()F

    move-result v0

    .line 321
    .local v0, "initialDim":F
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v1, :cond_1

    .line 310
    :cond_1
    return-void
.end method

.method refreshMemInfo()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-wide v2, v1, Lcom/flyme/systemui/recents/model/Task;->mem:J

    invoke-virtual {v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setText(J)V

    .line 326
    :cond_0
    return-void
.end method

.method public requestTaskViewClickWithoutAnimaiton()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V

    .line 726
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setCallbacks(Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 157
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 437
    return-void
.end method

.method resetViewProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 270
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIconAlpha:F

    .line 271
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTextAlpha:F

    .line 272
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setDim(F)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setTextAlpha(F)V

    .line 274
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setIconAlpha(F)V

    .line 275
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 276
    invoke-virtual {p0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    .line 278
    invoke-static {p0}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method setCallbacks(Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 152
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 466
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 467
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setDim(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .prologue
    .line 488
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 489
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 487
    :cond_0
    return-void
.end method

.method public setFocusedTask(Z)V
    .locals 2
    .param p1, "animateFocusedState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 564
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 565
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/flyme/systemui/recents/views/TaskView;Z)V

    .line 576
    :cond_1
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->requestFocus()Z

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->invalidate()V

    .line 563
    return-void
.end method

.method public setIconAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 502
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIconAlpha:F

    .line 503
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIconAlpha:F

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setIconAlpha(F)V

    .line 501
    :cond_0
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 432
    return-void
.end method

.method public setTaskProgress(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 475
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 476
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlphaDependP(F)V

    .line 477
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 478
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->updateHeadFromTaskProgress()V

    .line 474
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1
    .param p1, "textAlpha"    # F

    .prologue
    .line 496
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTextAlpha:F

    .line 497
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setTextAlpha(F)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFootView:Lcom/flyme/systemui/recents/views/TaskViewFoot;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewFoot;->setAlpha(F)V

    .line 495
    :cond_1
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 693
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method startEnterRecentsAnimationForShadows()V
    .locals 4

    .prologue
    .line 356
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 357
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskView$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskView$3;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 367
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    .line 369
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 355
    return-void

    .line 356
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 388
    iget v1, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 389
    const-wide/16 v2, 0x0

    .line 387
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 390
    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    .line 387
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 393
    iget-object v1, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 395
    iget-object v0, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 386
    return-void
.end method

.method public startMulti()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 732
    :cond_0
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 427
    return-void
.end method

.method triggerEnterCompleteAnimaiton()V
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->startEnterRecentsAnimationForShadows()V

    .line 346
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getSecretive()Z

    move-result v0

    .line 348
    .local v0, "secret":Z
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    if-eq v1, v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setSecretive(Z)V

    .line 350
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const-string/jumbo v2, "blurAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 342
    .end local v0    # "secret":Z
    :cond_0
    return-void

    .line 350
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method unsetFocusedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 587
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mCb:Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v2}, Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/flyme/systemui/recents/views/TaskView;Z)V

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->invalidate()V

    .line 585
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getDimFromTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setDim(F)V

    .line 542
    return-void
.end method

.method public updateHeadFromDragDown(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 552
    mul-float v0, v2, p1

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setIconAlpha(F)V

    .line 553
    mul-float v0, v2, p1

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setTextAlpha(F)V

    .line 551
    return-void
.end method

.method updateHeadFromTaskProgress()V
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTextAlphaFromTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setTextAlpha(F)V

    .line 548
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getIconAlphaFromTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setIconAlpha(F)V

    .line 546
    return-void
.end method

.method public updateTransformReal(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 1
    .param p1, "transform"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->update(Lcom/flyme/systemui/recents/views/TaskViewTransform;)V

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public updateTransformTemp(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 1
    .param p1, "transform"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformTemp:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->update(Lcom/flyme/systemui/recents/views/TaskViewTransform;)V

    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformTemp:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskView;->updateTransformReal(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 248
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    .line 248
    invoke-virtual/range {v0 .. v6}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/flyme/systemui/recents/views/TaskView;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 253
    if-gtz p2, :cond_1

    .line 254
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 245
    :goto_1
    return-void

    :cond_0
    move v5, v7

    .line 249
    goto :goto_0

    .line 256
    :cond_1
    const-string/jumbo v0, "taskProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v2

    aput v2, v1, v4

    iget v2, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 257
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method withEnterAnimation(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    const v2, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    .line 333
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    sub-float v1, p1, v2

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    goto :goto_0
.end method
