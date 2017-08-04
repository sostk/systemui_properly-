.class public Lcom/flyme/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/flyme/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;,
        Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;,
        Lcom/flyme/systemui/recents/views/TaskStackView$1;,
        Lcom/flyme/systemui/recents/views/TaskStackView$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/flyme/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/flyme/systemui/recents/views/TaskView;",
        "Lcom/flyme/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field mAllowScrollFlag:Z

.field mAwaitingFirstLayout:Z

.field private final mCardInterpolator:Landroid/view/animation/Interpolator;

.field mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

.field mDismissCardInterpolator:Landroid/view/animation/Interpolator;

.field mFilterAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;

.field mFocusedTaskIndex:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

.field private mLockCardInterpolator:Landroid/view/animation/Interpolator;

.field private mNeedFreshMem:Z

.field mPrevAccessibilityFocusedIndex:I

.field mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mStack:Lcom/flyme/systemui/recents/model/TaskStack;

.field mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

.field mStackViewsAnimationDuration:I

.field mStackViewsClipDirty:Z

.field mStackViewsDirty:Z

.field mStartEnterAnimationCompleted:Z

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackBoundsRect:Landroid/graphics/Rect;

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpCoord:[F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpRectF:Landroid/graphics/RectF;

.field mTmpTaskViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            "Lcom/flyme/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

.field mTmpVisibleRange:[I

.field mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

.field mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

.field mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flyme/systemui/recents/views/ViewPool",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskView;",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->refreshMemInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flyme/systemui/recents/model/TaskStack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x1

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 110
    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 111
    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mNeedFreshMem:Z

    .line 116
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 117
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 118
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 122
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 123
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    .line 127
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBoundsRect:Landroid/graphics/Rect;

    .line 131
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAllowScrollFlag:Z

    .line 135
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackView$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$1;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    .line 134
    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 752
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mDismissCardInterpolator:Landroid/view/animation/Interpolator;

    .line 776
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackView$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$2;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLockCardInterpolator:Landroid/view/animation/Interpolator;

    .line 1394
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCardInterpolator:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {p0, p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->setStack(Lcom/flyme/systemui/recents/model/TaskStack;)V

    .line 146
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 147
    new-instance v0, Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-direct {v0, p1, p0}, Lcom/flyme/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;-><init>(Lcom/flyme/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    .line 150
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-direct {v0, v1, p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;-><init>(Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/ViewPool;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFilterAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;

    .line 151
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {v0, p1, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    .line 152
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setCallbacks(Lcom/flyme/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V

    .line 153
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    .line 154
    new-instance v0, Lcom/flyme/systemui/recents/misc/DozeTrigger;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    new-instance v2, Lcom/flyme/systemui/recents/views/TaskStackView$3;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$3;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    .line 142
    return-void
.end method

.method private refreshMemInfo()V
    .locals 3

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1441
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1442
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1443
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->refreshMemInfo()V

    .line 1441
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1439
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method private updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z
    .locals 9
    .param p3, "stackScroll"    # F
    .param p4, "visibleRangeOut"    # [I
    .param p5, "boundTranslationsToRect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;F[IZ)Z"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 296
    .local v4, "taskTransformCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 297
    .local v3, "taskCount":I
    const/4 v1, -0x1

    .line 298
    .local v1, "frontMostVisibleIndex":I
    const/4 v0, -0x1

    .line 301
    .local v0, "backMostVisibleIndex":I
    if-ge v4, v3, :cond_0

    .line 303
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 304
    new-instance v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-direct {v6}, Lcom/flyme/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "i":I
    :cond_0
    if-le v4, v3, :cond_1

    .line 308
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 312
    :cond_1
    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 313
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemui/recents/model/Task;

    .line 314
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 313
    invoke-virtual {v8, v6, p3, v7}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/flyme/systemui/recents/model/Task;FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    .line 315
    .local v5, "transform":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    iget-boolean v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v6, :cond_5

    .line 316
    if-gez v1, :cond_2

    .line 317
    move v1, v2

    .line 319
    :cond_2
    move v0, v2

    .line 332
    :cond_3
    if-eqz p5, :cond_4

    .line 333
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 334
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    .line 333
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 312
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 321
    :cond_5
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 324
    :goto_2
    if-ltz v2, :cond_6

    .line 325
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->reset()V

    .line 326
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 337
    .end local v5    # "transform":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    :cond_6
    if-eqz p4, :cond_7

    .line 338
    const/4 v6, 0x0

    aput v1, p4, v6

    .line 339
    const/4 v6, 0x1

    aput v0, p4, v6

    .line 341
    :cond_7
    const/4 v6, -0x1

    if-eq v1, v6, :cond_8

    const/4 v6, -0x1

    if-eq v0, v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    return v6

    :cond_8
    const/4 v6, 0x0

    goto :goto_3
.end method


# virtual methods
.method clipTaskViews()V
    .locals 17

    .prologue
    .line 1599
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v11, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/views/TaskView;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1601
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1602
    .local v1, "childAt":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->isShown()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1603
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1606
    .end local v1    # "childAt":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    new-instance v12, Lcom/flyme/systemui/recents/views/TaskStackView$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/flyme/systemui/recents/views/TaskStackView$12;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v12, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    .line 1616
    .local v8, "stackVisibleRect":Landroid/graphics/Rect;
    iget v2, v8, Landroid/graphics/Rect;->right:I

    .line 1617
    .local v2, "clipLeft":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v10, v12, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    .line 1619
    .local v10, "thumbnailRect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    add-int/lit8 v4, v5, -0x1

    :goto_1
    if-ltz v4, :cond_5

    .line 1621
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1622
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1623
    .local v6, "nowV":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    .line 1624
    .local v7, "scale":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v12, v7, v7, v13, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v13

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-int v9, v12

    .line 1629
    .local v9, "templeft":I
    if-le v2, v9, :cond_2

    move v2, v9

    .line 1632
    :cond_2
    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1633
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v13, v7

    sub-float/2addr v12, v13

    float-to-int v12, v12

    add-int/lit8 v3, v12, -0x1

    .line 1634
    .local v3, "clipRight":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-le v3, v12, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1635
    :cond_3
    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getThumbnailViewBounds()Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->setClipRight(I)V

    .line 1619
    .end local v3    # "clipRight":I
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 1637
    :cond_4
    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getThumbnailViewBounds()Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->setClipRight(I)V

    goto :goto_2

    .line 1641
    .end local v6    # "nowV":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v7    # "scale":F
    .end local v9    # "templeft":I
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 1596
    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "launchedWithAltTab"    # Z
    .param p5, "launchedFromHome"    # Z

    .prologue
    .line 620
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, Lcom/flyme/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 618
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAllowScrollFlag:Z

    if-nez v0, :cond_0

    .line 606
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    .line 610
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 611
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 613
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 604
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Lcom/flyme/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public ensureFocusedTask()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 506
    iget v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v6, :cond_1

    .line 509
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 510
    .local v3, "x":I
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 511
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 512
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 514
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lcom/flyme/systemui/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 515
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 516
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 521
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    iget v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v6, :cond_1

    if-lez v0, :cond_1

    .line 522
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 525
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 512
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public focusNextTask(ZZ)V
    .locals 5
    .param p1, "forward"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 537
    .local v2, "numTasks":I
    if-nez v2, :cond_0

    return-void

    .line 539
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 540
    .local v0, "direction":I
    :goto_0
    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    add-int v1, v3, v0

    .line 541
    .local v1, "newIndex":I
    if-ltz v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-gt v1, v3, :cond_1

    .line 542
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 543
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 534
    :cond_1
    return-void

    .line 539
    .end local v0    # "direction":I
    .end local v1    # "newIndex":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "direction":I
    goto :goto_0
.end method

.method focusTask(IZZ)V
    .locals 6
    .param p1, "taskIndex"    # I
    .param p2, "scrollToNewPosition"    # Z
    .param p3, "animateFocusedState"    # Z

    .prologue
    .line 463
    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ne p1, v4, :cond_0

    return-void

    .line 465
    :cond_0
    if-ltz p1, :cond_1

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 466
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 469
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/model/Task;

    .line 470
    .local v2, "t":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v3

    .line 471
    .local v3, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    .line 472
    .local v1, "postScrollRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_2

    .line 473
    invoke-virtual {v3, p3}, Lcom/flyme/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    .line 488
    .end local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    :goto_0
    if-eqz p2, :cond_3

    .line 489
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v4, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/flyme/systemui/recents/model/Task;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v0, v4, v5

    .line 490
    .local v0, "newScroll":F
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    .line 491
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    .line 461
    .end local v0    # "newScroll":F
    .end local v2    # "t":Lcom/flyme/systemui/recents/model/Task;
    .end local v3    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    :goto_1
    return-void

    .line 475
    .restart local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    .restart local v2    # "t":Lcom/flyme/systemui/recents/model/Task;
    .restart local v3    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_2
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackView$4;

    .end local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p0, p3}, Lcom/flyme/systemui/recents/views/TaskStackView$4;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;Z)V

    .local v1, "postScrollRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 493
    .end local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    :cond_3
    if-eqz v1, :cond_1

    .line 494
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;
    .locals 4
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 273
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 275
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 276
    return-object v2

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getStackAlgorithm()Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    return-object v0
.end method

.method public hasPreferredData(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 1170
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "preferredData"    # Ljava/lang/Object;

    .prologue
    .line 1169
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/systemui/recents/model/Task;

    .end local p2    # "preferredData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public makeAllChildClipable()V
    .locals 4

    .prologue
    .line 1645
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1646
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1647
    .local v0, "child":Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1644
    .end local v0    # "child":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public mirror(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 915
    sget-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    if-eqz v0, :cond_0

    .line 916
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;

    iget-object v2, p1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 910
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setImageCache(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1303
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1304
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;I)V

    .line 1302
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1309
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1310
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1308
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;

    .prologue
    .line 1585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAllowScrollFlag:Z

    .line 1584
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;

    .prologue
    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAllowScrollFlag:Z

    .line 1588
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;

    .prologue
    .line 1390
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1391
    iget-object v0, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->monitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    iget-object v1, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->userId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 1389
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;

    .prologue
    .line 1429
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackView$11;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$11;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .line 1428
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;)V
    .locals 7
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1414
    iget-boolean v3, p1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;->mEnter:Z

    if-eqz v3, :cond_0

    .line 1415
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mNeedFreshMem:Z

    .line 1416
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1418
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1419
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1420
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1421
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->triggerEnterCompleteAnimaiton()V

    .line 1422
    invoke-virtual {v2, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1418
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1413
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$UpdateEnterAnimationP;)V
    .locals 9
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$UpdateEnterAnimationP;

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1397
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1398
    iget v2, p1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$UpdateEnterAnimationP;->mP:F

    .line 1399
    .local v2, "p":F
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCardInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1400
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1401
    .local v3, "t":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    .line 1402
    .local v4, "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformTemp()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    .line 1403
    .local v5, "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    iget v7, v4, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 1404
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    iget v7, v4, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 1405
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v7, v4, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 1406
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v7, v4, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 1407
    iget v6, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    iget v7, v4, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    iget v8, v5, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setDim(F)V

    .line 1408
    invoke-virtual {v3, v2}, Lcom/flyme/systemui/recents/views/TaskView;->withEnterAnimation(F)V

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    .end local v2    # "p":F
    .end local v3    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v4    # "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v5    # "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1395
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;

    .prologue
    const/4 v4, 0x0

    .line 1530
    iget-object v2, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 1531
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget v3, v3, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-eqz v3, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, v5, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    .line 1534
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v0, v3, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    .line 1535
    .local v0, "lockView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    if-eqz v3, :cond_3

    .line 1536
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/flyme/systemui/recents/model/LockTaskManager;->lockApp(Ljava/lang/String;)Z

    .line 1537
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1555
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    .line 1557
    const-string/jumbo v5, "1"

    .line 1555
    invoke-static {v3, v1, v5}, Lcom/android/systemui/SystemUIMobEventUtils;->collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :goto_2
    iget-boolean v3, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->mVibrate:Z

    if-eqz v3, :cond_0

    .line 1579
    invoke-virtual {v2, v4, v4}, Lcom/flyme/systemui/recents/views/TaskView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 1533
    .end local v0    # "lockView":Landroid/widget/ImageView;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1559
    .restart local v0    # "lockView":Landroid/widget/ImageView;
    :cond_3
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/flyme/systemui/recents/model/LockTaskManager;->unlockApp(Ljava/lang/String;)Z

    .line 1560
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mActivityLock:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    .line 1576
    const-string/jumbo v5, "0"

    .line 1574
    invoke-static {v3, v1, v5}, Lcom/android/systemui/SystemUIMobEventUtils;->collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;

    .prologue
    .line 1518
    iget-object v1, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 1519
    .local v1, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 1520
    .local v0, "invalidate":Z
    iget-object v2, v1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getSecretive()Z

    move-result v2

    iget-boolean v3, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;->mSecretive:Z

    if-eq v2, v3, :cond_0

    .line 1521
    const/4 v0, 0x1

    .line 1523
    :cond_0
    iget-object v2, v1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-boolean v3, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;->mSecretive:Z

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setSecretive(Z)V

    .line 1524
    if-eqz v0, :cond_1

    .line 1525
    iget-object v2, v1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 1517
    :cond_1
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/RecentsWindowEvents$onWindowShownEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/RecentsWindowEvents$onWindowShownEvent;

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1382
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1383
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1384
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1385
    iget-object v3, v2, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->buildLayer()V

    .line 1382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1380
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;)V
    .locals 19
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;

    .prologue
    .line 1448
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 1449
    .local v14, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 1450
    .local v1, "childCount":I
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v15

    .line 1451
    .local v15, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    .line 1452
    .local v7, "stackRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    .line 1453
    .local v10, "taskRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 1454
    .local v9, "targeCardIsFirst":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1455
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1456
    .local v8, "t":Lcom/flyme/systemui/recents/views/TaskView;
    if-eq v8, v14, :cond_2

    .line 1457
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    .line 1458
    .local v12, "transformReal":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v8, v12}, Lcom/flyme/systemui/recents/views/TaskView;->updateTransformTemp(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v13

    .line 1459
    .local v13, "transformTemp":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v16

    move-object/from16 v0, v16

    iget v11, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1460
    .local v11, "toScale":F
    iput v11, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1462
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v16

    cmpl-float v16, v16, v15

    if-ltz v16, :cond_1

    .line 1463
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->dragdownCardPadding:F

    move/from16 v17, v0

    .line 1463
    add-float v16, v16, v17

    .line 1464
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    mul-float v17, v17, v11

    .line 1463
    add-float v6, v16, v17

    .line 1465
    .local v6, "rightCenter":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v2, v6, v16

    .line 1471
    .end local v6    # "rightCenter":F
    .local v2, "endX":F
    :goto_1
    iput v2, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1472
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 1474
    if-eqz v9, :cond_0

    .line 1475
    iget v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mExtendOffset:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1454
    .end local v2    # "endX":F
    .end local v11    # "toScale":F
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1467
    .restart local v11    # "toScale":F
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    mul-float v17, v17, v11

    sub-float v16, v16, v17

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->dragdownCardPadding:F

    move/from16 v17, v0

    .line 1467
    sub-float v16, v16, v17

    .line 1468
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    mul-float v17, v17, v11

    .line 1467
    sub-float v4, v16, v17

    .line 1469
    .local v4, "leftCenter":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v2, v4, v16

    .restart local v2    # "endX":F
    goto :goto_1

    .line 1478
    .end local v2    # "endX":F
    .end local v4    # "leftCenter":F
    .end local v11    # "toScale":F
    .end local v12    # "transformReal":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v13    # "transformTemp":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    :cond_2
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    .line 1479
    .restart local v12    # "transformReal":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v8, v12}, Lcom/flyme/systemui/recents/views/TaskView;->updateTransformTemp(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v13

    .line 1480
    .restart local v13    # "transformTemp":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1481
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 1482
    if-nez v3, :cond_0

    .line 1483
    const/4 v9, 0x1

    .line 1484
    iget v0, v12, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    move/from16 v16, v0

    iget v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 1485
    .local v5, "offset":F
    move-object/from16 v0, p1

    iput v5, v0, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mExtendOffset:F

    .line 1486
    iget v0, v12, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    goto/16 :goto_2

    .line 1447
    .end local v5    # "offset":F
    .end local v8    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v12    # "transformReal":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v13    # "transformTemp":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    :cond_3
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnBeginDrag;)V
    .locals 7
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnBeginDrag;

    .prologue
    const/4 v6, 0x0

    .line 1493
    iget-object v4, p1, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnBeginDrag;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 1494
    .local v4, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    .line 1495
    .local v1, "focusIndex":I
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1496
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1497
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1498
    .local v3, "t":Lcom/flyme/systemui/recents/views/TaskView;
    if-ne v3, v4, :cond_0

    .line 1499
    move v1, v2

    .line 1500
    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1496
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1503
    .end local v3    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_2

    .line 1504
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1505
    .restart local v3    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v3, v6}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1492
    .end local v3    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnSnapBackCompleted;)V
    .locals 0
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnSnapBackCompleted;

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->makeAllChildClipable()V

    .line 1509
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->forceSnapChild()V

    .line 1513
    return-void
.end method

.method onFirstLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 724
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 723
    invoke-virtual {p0, v0, v2, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 732
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 734
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->refreshViewPosition()V

    .line 718
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 727
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 726
    invoke-virtual {p0, v0, v2, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x0

    .line 574
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 575
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 576
    .local v1, "childCount":I
    if-lez v1, :cond_0

    .line 577
    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskView;

    .line 578
    .local v0, "backMostTask":Lcom/flyme/systemui/recents/views/TaskView;
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 579
    .local v2, "frontMostTask":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 580
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 581
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 583
    .end local v0    # "backMostTask":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v2    # "frontMostTask":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 584
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 585
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 573
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 698
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 700
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 701
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 705
    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 706
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 707
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 708
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 705
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/flyme/systemui/recents/views/TaskView;->layout(IIII)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 711
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v3, :cond_2

    .line 712
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 713
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->onFirstLayout()V

    .line 695
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 651
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 652
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 655
    .local v2, "height":I
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBoundsRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 656
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBoundsRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 657
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBoundsRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 658
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object v0, p0

    .line 657
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/views/TaskStackView;->computeRects(IILandroid/graphics/Rect;ZZ)V

    .line 662
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 664
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 665
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    .line 670
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 671
    invoke-virtual {p0, v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/views/TaskView;

    .line 672
    .local v8, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 679
    :goto_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    .line 678
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 682
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 681
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 677
    invoke-virtual {v8, v0, v3}, Lcom/flyme/systemui/recents/views/TaskView;->measure(II)V

    .line 670
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 686
    .end local v8    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 649
    return-void
.end method

.method public onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "monitor"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1262
    return-void
.end method

.method onRecentsHidden()V
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 927
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->reset()V

    .line 923
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1255
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1256
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->postInvalidateOnAnimation()V

    .line 1253
    return-void
.end method

.method public onStackTaskAdded(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;
    .param p2, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 943
    return-void
.end method

.method public onStackTaskRemoved(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 10
    .param p1, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/flyme/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    const/4 v9, 0x0

    .line 951
    invoke-virtual {p0, p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v5

    .line 952
    .local v5, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v5, :cond_0

    .line 953
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v6, v5}, Lcom/flyme/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 957
    :cond_0
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v6, p2}, Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/flyme/systemui/recents/model/Task;)V

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "anchorTask":Lcom/flyme/systemui/recents/model/Task;
    const/4 v2, 0x0

    .line 963
    .local v2, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v3, 0x1

    .line 964
    .local v3, "pullStackForward":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 965
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    .line 966
    .local v0, "anchorTask":Lcom/flyme/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v6, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/flyme/systemui/recents/model/Task;)F

    move-result v2

    .line 970
    .end local v0    # "anchorTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_1
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v6, v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 984
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 987
    if-eqz p3, :cond_2

    .line 988
    invoke-virtual {p0, p3}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v1

    .line 989
    .local v1, "frontTv":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v1, :cond_2

    .line 990
    invoke-virtual {v1, p3}, Lcom/flyme/systemui/recents/views/TaskView;->onTaskBound(Lcom/flyme/systemui/recents/model/Task;)V

    .line 991
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {v1, v9, v6}, Lcom/flyme/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    .line 997
    .end local v1    # "frontTv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_2
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 998
    const/4 v4, 0x1

    .line 999
    .local v4, "shouldFinishActivity":Z
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1000
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 1001
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-nez v6, :cond_6

    const/4 v4, 0x1

    .line 1003
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 1004
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v6}, Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed()V

    .line 948
    .end local v4    # "shouldFinishActivity":Z
    :cond_4
    return-void

    .line 963
    .end local v3    # "pullStackForward":Z
    .local v0, "anchorTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "pullStackForward":Z
    goto :goto_0

    .line 1001
    .end local v0    # "anchorTask":Lcom/flyme/systemui/recents/model/Task;
    .restart local v4    # "shouldFinishActivity":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onStackUnfiltered(Lcom/flyme/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newStack"    # Lcom/flyme/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p2, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    return-void
.end method

.method public onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-interface {v0, p0, p1, v1}, Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;)V

    .line 1244
    :cond_0
    return-void
.end method

.method public onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V
    .locals 7
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p3, "needAnimation"    # Z

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1198
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V

    .line 1194
    :cond_0
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1230
    :cond_0
    return-void
.end method

.method public onTaskViewDismissed(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 11
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    const/4 v10, 0x0

    .line 1205
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v3

    .line 1206
    .local v3, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v4

    .line 1207
    .local v4, "taskIndex":I
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v5

    .line 1209
    .local v5, "taskWasFocused":Z
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 1210
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v9

    iget-object v9, v9, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v9, v8, v10

    .line 1209
    const v9, 0x7f0901d6

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/flyme/systemui/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/flyme/systemui/recents/model/TaskStack;->removeTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 1214
    if-eqz v5, :cond_0

    .line 1215
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1216
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1217
    .local v1, "nextTaskIndex":I
    if-ltz v1, :cond_0

    .line 1218
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    .line 1219
    .local v0, "nextTask":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1220
    .local v2, "nextTv":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v2, :cond_0

    .line 1223
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v2, v7}, Lcom/flyme/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    .line 1204
    .end local v0    # "nextTask":Lcom/flyme/systemui/recents/model/Task;
    .end local v1    # "nextTaskIndex":I
    .end local v2    # "nextTv":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_0
    return-void
.end method

.method public onTaskViewFocusChanged(Lcom/flyme/systemui/recents/views/TaskView;Z)V
    .locals 2
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "focused"    # Z

    .prologue
    .line 1238
    if-eqz p2, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1237
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prepareViewToEnterPool(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 1082
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    .line 1085
    .local v0, "task":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1090
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/flyme/systemui/recents/model/Task;)V

    .line 1093
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1096
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1081
    return-void
.end method

.method public bridge synthetic prepareViewToEnterPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;

    .prologue
    .line 1081
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->prepareViewToEnterPool(Lcom/flyme/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public prepareViewToLeavePool(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V
    .locals 12
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x1

    .line 1106
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getWidth()I

    move-result v6

    if-gtz v6, :cond_0

    if-eqz p3, :cond_5

    :cond_0
    const/4 v3, 0x0

    .line 1109
    .local v3, "requiresRelayout":Z
    :goto_0
    invoke-virtual {p1, p2}, Lcom/flyme/systemui/recents/views/TaskView;->onTaskBound(Lcom/flyme/systemui/recents/model/Task;)V

    .line 1112
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6, v7, p2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/model/Task;)V

    .line 1115
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->hasTriggered()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1116
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1120
    :cond_1
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    if-eqz v6, :cond_2

    .line 1121
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->enableFocusAnimations()V

    .line 1125
    :cond_2
    const/4 v2, 0x0

    .line 1126
    .local v2, "insertIndex":I
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6, p2}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v4

    .line 1127
    .local v4, "taskIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 1128
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1129
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1130
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v5

    .line 1131
    .local v5, "tvTask":Lcom/flyme/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v6, v5}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 1139
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v5    # "tvTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_3
    if-eqz p3, :cond_7

    .line 1140
    invoke-virtual {p0, p1, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1141
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v6, :cond_4

    .line 1144
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    .line 1143
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1147
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 1146
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1142
    invoke-virtual {p1, v6, v7}, Lcom/flyme/systemui/recents/views/TaskView;->measure(II)V

    .line 1149
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 1150
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 1151
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1152
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, v9, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    .line 1149
    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/flyme/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1162
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->initViewProperties()V

    .line 1163
    invoke-virtual {p1, p0}, Lcom/flyme/systemui/recents/views/TaskView;->setCallbacks(Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1164
    invoke-virtual {p1, v11}, Lcom/flyme/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1165
    invoke-virtual {p1, v11}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1103
    return-void

    .line 1106
    .end local v2    # "insertIndex":I
    .end local v3    # "requiresRelayout":Z
    .end local v4    # "taskIndex":I
    :cond_5
    const/4 v3, 0x1

    .restart local v3    # "requiresRelayout":Z
    goto/16 :goto_0

    .line 1134
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "insertIndex":I
    .restart local v4    # "taskIndex":I
    .restart local v5    # "tvTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1155
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v5    # "tvTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, p1, v2, v6}, Lcom/flyme/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    if-eqz v3, :cond_4

    .line 1157
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->requestLayout()V

    goto :goto_2
.end method

.method public bridge synthetic prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "task"    # Ljava/lang/Object;
    .param p3, "isNewView"    # Z

    .prologue
    .line 1103
    check-cast p1, Lcom/flyme/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/systemui/recents/model/Task;

    .end local p2    # "task":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackView;->prepareViewToLeavePool(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V

    return-void
.end method

.method public refreshViewPosition()V
    .locals 17

    .prologue
    .line 1320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v12, v12, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v13, v13, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v14, v14, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    .line 1320
    sub-int v5, v12, v13

    .line 1322
    .local v5, "offscreenY":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 1324
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 1325
    .local v3, "firtCardScale":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/flyme/systemui/recents/views/TaskView;

    .line 1328
    .local v11, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v11}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v7

    .line 1329
    .local v7, "task":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {v11}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v9

    .line 1330
    .local v9, "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v11}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformTemp()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 1331
    .local v10, "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v11, v9}, Lcom/flyme/systemui/recents/views/TaskView;->updateTransformTemp(Lcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 1333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v6, v12, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    .line 1334
    .local v6, "stackRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v8, v12, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    .line 1335
    .local v8, "thumbnailRect":Landroid/graphics/Rect;
    const/4 v2, 0x1

    .line 1336
    .local v2, "clip":Z
    if-nez v4, :cond_2

    .line 1337
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v3, v12, v13

    iput v3, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v13, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v14, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v15, v15, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 1344
    const/4 v12, 0x0

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 1345
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 1346
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v12

    new-instance v13, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v10, v9}, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;-><init>(ZLcom/flyme/systemui/recents/views/TaskViewTransform;Lcom/flyme/systemui/recents/views/TaskViewTransform;)V

    invoke-virtual {v12, v13}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1348
    :cond_0
    const/4 v2, 0x1

    .line 1371
    :cond_1
    :goto_1
    iget-boolean v12, v7, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    iget-boolean v13, v7, Lcom/flyme/systemui/recents/model/Task;->isOccludesLaunchTarget:Z

    invoke-virtual {v11, v12, v13, v5}, Lcom/flyme/systemui/recents/views/TaskView;->prepareEnterRecentsAnimation(ZZI)V

    .line 1372
    if-eqz v2, :cond_4

    .line 1373
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1325
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1349
    :cond_2
    const/4 v12, 0x1

    if-ne v4, v12, :cond_3

    .line 1350
    iput v3, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v13, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v14, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v15, v15, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 1357
    const/4 v12, 0x0

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 1358
    const/4 v2, 0x1

    .line 1359
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v12

    new-instance v13, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v10, v9}, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;-><init>(ZLcom/flyme/systemui/recents/views/TaskViewTransform;Lcom/flyme/systemui/recents/views/TaskViewTransform;)V

    invoke-virtual {v12, v13}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1360
    :cond_3
    const/4 v12, 0x2

    if-ne v4, v12, :cond_1

    .line 1361
    const v12, 0x3dcccccd    # 0.1f

    add-float/2addr v12, v3

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v13, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iget v14, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v15, v15, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3ff33333    # 1.9f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 1367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v13, v13, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 1368
    const/4 v12, 0x0

    iput v12, v10, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 1369
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1375
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto/16 :goto_2

    .line 1319
    .end local v2    # "clip":Z
    .end local v6    # "stackRect":Landroid/graphics/Rect;
    .end local v7    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v8    # "thumbnailRect":Landroid/graphics/Rect;
    .end local v9    # "transformEnd":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transformStart":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v11    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_5
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1315
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1316
    const-string/jumbo v0, "recents.TaskStackView"

    const-string/jumbo v1, "requestLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void
.end method

.method requestSynchronizeStackViewsWithModel()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 246
    return-void
.end method

.method requestSynchronizeStackViewsWithModel(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->invalidate()V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 249
    :goto_0
    return-void

    .line 258
    :cond_1
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    goto :goto_0
.end method

.method requestUpdateStackViewsClip()V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->invalidate()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 263
    :cond_0
    return-void
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    .line 215
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 216
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 217
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/views/TaskView;

    .line 218
    .local v3, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/flyme/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 222
    .end local v3    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    if-eqz v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 224
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/views/TaskView;>;"
    if-eqz v2, :cond_1

    .line 225
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/views/TaskView;

    .line 227
    .restart local v3    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskView;->reset()V

    goto :goto_1

    .line 233
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/views/TaskView;>;"
    .end local v3    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/TaskStack;->reset()V

    .line 234
    iput-boolean v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 235
    iput-boolean v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 236
    iput-boolean v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 237
    const/4 v4, -0x1

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 238
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 240
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/flyme/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/misc/DozeTrigger;->resetTrigger()V

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 210
    return-void
.end method

.method resetFocusedTask()V
    .locals 4

    .prologue
    .line 562
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 563
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    .line 564
    .local v0, "t":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v1

    .line 565
    .local v1, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 569
    .end local v0    # "t":Lcom/flyme/systemui/recents/model/Task;
    .end local v1    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 561
    return-void
.end method

.method setCallbacks(Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCb:Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .line 168
    return-void
.end method

.method public setDebugOverlay(Lcom/flyme/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/flyme/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

    .line 205
    return-void
.end method

.method setStack(Lcom/flyme/systemui/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/recents/model/TaskStack;->setCallbacks(Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 173
    return-void
.end method

.method public setStackInsetRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 439
    return-void
.end method

.method public startDismissCardAnimaiton(Landroid/view/View;FLcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "offscreenTranslationY"    # F
    .param p3, "cardRemoveTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 755
    invoke-virtual {p3}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 756
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mDismissCardInterpolator:Landroid/view/animation/Interpolator;

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    .line 756
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 760
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/flyme/systemui/recents/views/TaskStackView$5;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;Landroid/view/View;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 767
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackView$6;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$6;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 754
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 740
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 741
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 743
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 744
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 743
    sub-int/2addr v3, v4

    iput v3, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    .line 745
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 746
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 747
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 748
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v2, p1}, Lcom/flyme/systemui/recents/views/TaskView;->startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 24
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "trigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    .line 846
    .local v9, "childCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 849
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v15

    .line 850
    .local v15, "targetProgress":F
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v16

    .line 852
    .local v16, "targetZ":F
    :goto_1
    new-array v0, v9, [Lcom/flyme/systemui/recents/views/TaskView;

    move-object/from16 v17, v0

    .line 853
    .local v17, "taskViews":[Lcom/flyme/systemui/recents/views/TaskView;
    new-array v7, v9, [Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    .line 854
    .local v7, "animationInfos":[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    const/4 v11, 0x0

    .local v11, "n":I
    move v12, v11

    .end local v11    # "n":I
    .local v12, "n":I
    :goto_2
    if-ge v10, v9, :cond_5

    .line 855
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/flyme/systemui/recents/views/TaskView;

    .line 856
    .local v14, "t":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->optiShadow()V

    .line 857
    move-object/from16 v0, p1

    if-eq v14, v0, :cond_4

    .line 858
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v19

    cmpl-float v19, v19, v15

    if-gez v19, :cond_0

    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v19

    cmpl-float v19, v19, v16

    if-ltz v19, :cond_3

    .line 859
    :cond_0
    new-instance v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    invoke-direct {v6}, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;-><init>()V

    .line 860
    .local v6, "animationInfo":Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    aput-object v14, v17, v12

    .line 861
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    aput-object v6, v7, v12

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    .line 864
    .local v13, "stackRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 865
    .local v18, "thumbnailRect":Landroid/graphics/Rect;
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTransformReal()Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    iget v0, v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    move/from16 v20, v0

    iget v0, v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    .line 870
    invoke-virtual {v14}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->fromX:F

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    div-int/lit8 v20, v20, 0x6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toX:F

    .line 854
    .end local v6    # "animationInfo":Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    .end local v13    # "stackRect":Landroid/graphics/Rect;
    .end local v18    # "thumbnailRect":Landroid/graphics/Rect;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11    # "n":I
    .restart local v12    # "n":I
    goto/16 :goto_2

    .line 849
    .end local v7    # "animationInfos":[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    .end local v10    # "i":I
    .end local v12    # "n":I
    .end local v14    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v15    # "targetProgress":F
    .end local v16    # "targetZ":F
    .end local v17    # "taskViews":[Lcom/flyme/systemui/recents/views/TaskView;
    :cond_1
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .restart local v15    # "targetProgress":F
    goto/16 :goto_0

    .line 850
    :cond_2
    const v16, 0x7f7fffff    # Float.MAX_VALUE

    .restart local v16    # "targetZ":F
    goto/16 :goto_1

    .restart local v7    # "animationInfos":[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    .restart local v10    # "i":I
    .restart local v12    # "n":I
    .restart local v14    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .restart local v17    # "taskViews":[Lcom/flyme/systemui/recents/views/TaskView;
    :cond_3
    move v11, v12

    .line 858
    .end local v12    # "n":I
    .restart local v11    # "n":I
    goto :goto_3

    .line 874
    .end local v11    # "n":I
    .restart local v12    # "n":I
    :cond_4
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->startLaunchTaskAnimationForTarget(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;J)V

    .line 875
    invoke-virtual/range {p0 .. p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->mirror(Lcom/flyme/systemui/recents/views/TaskView;)V

    move v11, v12

    .end local v12    # "n":I
    .restart local v11    # "n":I
    goto :goto_3

    .line 880
    .end local v11    # "n":I
    .end local v14    # "t":Lcom/flyme/systemui/recents/views/TaskView;
    .restart local v12    # "n":I
    :cond_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_6

    const/16 v19, 0x0

    aget-object v19, v17, v19

    if-eqz v19, :cond_6

    .line 881
    invoke-virtual/range {p2 .. p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 882
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v19 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 883
    .local v8, "animator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 885
    new-instance v19, Lcom/flyme/systemui/recents/views/TaskStackView$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackView$9;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 891
    new-instance v19, Lcom/flyme/systemui/recents/views/TaskStackView$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/flyme/systemui/recents/views/TaskStackView$10;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;[Lcom/flyme/systemui/recents/views/TaskView;[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 905
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 907
    .end local v8    # "animator":Landroid/animation/ValueAnimator;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 844
    return-void

    .line 882
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startLaunchTaskAnimationForTarget(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;J)V
    .locals 9
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "trigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    .param p3, "delay"    # J

    .prologue
    const/4 v8, 0x0

    .line 805
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    .line 806
    .local v1, "stackRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    .line 807
    .local v2, "thumbnailRect":Landroid/graphics/Rect;
    iget-object v3, p1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-boolean v3, v3, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mSecretive:Z

    if-eqz v3, :cond_0

    .line 808
    iget-object v3, p1, Lcom/flyme/systemui/recents/views/TaskView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setSecretive(Z)V

    .line 810
    :cond_0
    invoke-virtual {p1, v8}, Lcom/flyme/systemui/recents/views/TaskView;->setDim(F)V

    .line 811
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;-><init>()V

    .line 812
    .local v0, "animationInfo":Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    .line 813
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    iget v5, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 814
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 815
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 816
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 817
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toX:F

    .line 818
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toY:F

    .line 819
    iput-wide p3, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->delay:J

    .line 822
    iget-object v3, p1, Lcom/flyme/systemui/recents/views/TaskView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, p2, v4, v5}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;J)V

    .line 823
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 824
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 825
    iget v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toScale:F

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 826
    iget v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toX:F

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 827
    iget v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toY:F

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 828
    iget-wide v4, v0, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->delay:J

    .line 824
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 829
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v4

    .line 824
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 830
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 831
    new-instance v4, Lcom/flyme/systemui/recents/views/TaskStackView$8;

    invoke-direct {v4, p0}, Lcom/flyme/systemui/recents/views/TaskStackView$8;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 837
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v4

    .line 824
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 803
    return-void
.end method

.method public startLockedCardAnimaiton(Landroid/view/View;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cardRemoveTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 790
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->lockedTaskBoundDis:F

    .line 791
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLockCardInterpolator:Landroid/view/animation/Interpolator;

    .line 791
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    .line 791
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 795
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskStackView$7;

    invoke-direct {v1, p0, p2}, Lcom/flyme/systemui/recents/views/TaskStackView$7;-><init>(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 791
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 789
    return-void
.end method

.method synchronizeStackViewsWithModel()Z
    .locals 20

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-eqz v1, :cond_a

    .line 347
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v12

    .line 348
    .local v12, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v12}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 351
    .local v14, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 352
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    .line 353
    .local v4, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 354
    .local v5, "visibleRange":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 355
    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 354
    invoke-direct/range {v1 .. v6}, Lcom/flyme/systemui/recents/views/TaskStackView;->updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z

    move-result v11

    .line 356
    .local v11, "isValidVisibleRange":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vis["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x1

    aget v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/DebugOverlayView;->setText(Ljava/lang/String;)V

    .line 361
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    .line 363
    .local v8, "childCount":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_2

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/flyme/systemui/recents/views/TaskView;

    .line 365
    .local v19, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    invoke-virtual/range {v19 .. v19}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v15

    .line 366
    .local v15, "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v1, v15}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v16

    .line 367
    .local v16, "taskIndex":I
    const/4 v1, 0x1

    aget v1, v5, v1

    move/from16 v0, v16

    if-gt v1, v0, :cond_1

    const/4 v1, 0x0

    aget v1, v5, v1

    move/from16 v0, v16

    if-gt v0, v1, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    .end local v15    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v19    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_2
    const/4 v1, 0x0

    aget v9, v5, v1

    :goto_2
    if-eqz v11, :cond_9

    const/4 v1, 0x1

    aget v1, v5, v1

    if-lt v9, v1, :cond_9

    .line 376
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/recents/model/Task;

    .line 377
    .restart local v15    # "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 378
    .local v18, "transform":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/flyme/systemui/recents/views/TaskView;

    .line 379
    .restart local v19    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v1, v15}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v16

    .line 381
    .restart local v16    # "taskIndex":I
    if-nez v19, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v1, v15, v15}, Lcom/flyme/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    check-cast v19, Lcom/flyme/systemui/recents/views/TaskView;

    .line 384
    .restart local v19    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    if-lez v1, :cond_3

    .line 387
    move-object/from16 v0, v18

    iget v1, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_7

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 392
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;I)V

    .line 396
    :cond_3
    const/4 v13, 0x0

    .line 397
    .local v13, "needPreload":Z
    const/16 v17, 0x0

    .line 398
    .local v17, "tempI":I
    const/4 v1, 0x0

    aget v1, v5, v1

    if-ne v9, v1, :cond_8

    .line 399
    add-int/lit8 v17, v9, 0x1

    .line 400
    const/4 v13, 0x1

    .line 405
    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    .line 406
    if-ltz v17, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_5

    .line 407
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v2, v6, v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/model/Task;)V

    .line 413
    .end local v13    # "needPreload":Z
    .end local v17    # "tempI":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 413
    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    .line 419
    if-lez v8, :cond_6

    invoke-virtual {v14}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 420
    add-int/lit8 v1, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/views/TaskView;

    .line 421
    .local v7, "atv":Lcom/flyme/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/TaskStack;->indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v10

    .line 422
    .local v10, "indexOfTask":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-eq v1, v10, :cond_6

    .line 423
    invoke-virtual/range {v19 .. v19}, Lcom/flyme/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 424
    move-object/from16 v0, p0

    iput v10, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 375
    .end local v7    # "atv":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v10    # "indexOfTask":I
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 390
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    goto/16 :goto_3

    .line 401
    .restart local v13    # "needPreload":Z
    .restart local v17    # "tempI":I
    :cond_8
    const/4 v1, 0x1

    aget v1, v5, v1

    if-ne v9, v1, :cond_4

    .line 402
    add-int/lit8 v17, v9, -0x1

    .line 403
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 430
    .end local v13    # "needPreload":Z
    .end local v15    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v17    # "tempI":I
    .end local v18    # "transform":Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .end local v19    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 431
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 432
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 433
    const/4 v1, 0x1

    return v1

    .line 435
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    .end local v4    # "stackScroll":F
    .end local v5    # "visibleRange":[I
    .end local v8    # "childCount":I
    .end local v9    # "i":I
    .end local v11    # "isValidVisibleRange":Z
    .end local v12    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .end local v14    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method updateMinMaxScroll(ZZZ)V
    .locals 2
    .param p1, "boundScrollToNewMinMax"    # Z
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V

    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 445
    :cond_0
    return-void
.end method

.method public updateMinMaxScrollForStack(Lcom/flyme/systemui/recents/model/TaskStack;ZZ)V
    .locals 1
    .param p1, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 632
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 631
    return-void
.end method
