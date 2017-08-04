.class public abstract Lcom/android/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PagedView$PageSwitchListener;,
        Lcom/android/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/keyguard/PagedView$SavedState;,
        Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/keyguard/PagedView$1;,
        Lcom/android/keyguard/PagedView$2;,
        Lcom/android/keyguard/PagedView$3;
    }
.end annotation


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnPageBeginWarpCalled:Z

.field private mOnPageEndWarpCalled:Z

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/PagedView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/PagedView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/PagedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/PagedView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PagedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 105
    iput v5, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 119
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 135
    iput v4, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 136
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 145
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountX:I

    .line 146
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountY:I

    .line 147
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    .line 149
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 158
    iput v7, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    .line 162
    iput v5, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 169
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 172
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 180
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 185
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    .line 192
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 205
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 206
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 207
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 208
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 209
    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 210
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 211
    iput v7, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 215
    iput v5, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 217
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 222
    iput v6, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 227
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 228
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 229
    iput v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 232
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 233
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    .line 234
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 235
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 238
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 239
    const v2, 0x3d0f5c29    # 0.035f

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 241
    const/high16 v2, 0x42820000    # 65.0f

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 242
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 244
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 245
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 246
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 252
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 255
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 256
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 2045
    new-instance v2, Lcom/android/keyguard/PagedView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$1;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2709
    new-instance v2, Lcom/android/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$2;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2725
    new-instance v2, Lcom/android/keyguard/PagedView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$3;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 282
    sget-object v2, Lcom/android/keyguard/R$styleable;->PagedView:[I

    .line 281
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/keyguard/R$styleable;->PagedView_pageSpacing:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 285
    sget v2, Lcom/android/keyguard/R$styleable;->PagedView_scrollIndicatorPaddingLeft:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 284
    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 287
    sget v2, Lcom/android/keyguard/R$styleable;->PagedView_scrollIndicatorPaddingRight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 286
    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 288
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 290
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 291
    .local v1, "r":Landroid/content/res/Resources;
    sget v2, Lcom/android/keyguard/R$dimen;->kg_edge_swipe_region_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 293
    sget v2, Lcom/android/keyguard/R$bool;->kg_top_align_page_shrink_on_bouncer_visible:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 292
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 295
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->init()V

    .line 279
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1738
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1736
    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    .line 2792
    iget-boolean v3, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-eqz v3, :cond_0

    .line 2793
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 2794
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2796
    .local v2, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2797
    .local v0, "interp":Landroid/view/animation/AccelerateInterpolator;
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getCurrentWarpOffset()I

    move-result v1

    .line 2798
    .local v1, "totalOffset":I
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2800
    if-eqz p2, :cond_1

    const/16 v3, 0x96

    :goto_0
    int-to-long v6, v3

    .line 2798
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2801
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2798
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2790
    .end local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .end local v1    # "totalOffset":I
    .end local v2    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void

    .line 2800
    .restart local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .restart local v1    # "totalOffset":I
    .restart local v2    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2762
    iget-boolean v3, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v3, :cond_0

    .line 2763
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    .line 2764
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 2765
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2767
    .local v2, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2768
    .local v0, "interp":Landroid/view/animation/DecelerateInterpolator;
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getCurrentWarpOffset()I

    move-result v1

    .line 2769
    .local v1, "totalOffset":I
    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 2770
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    .line 2771
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    iget v4, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2773
    const-wide/16 v4, 0x96

    .line 2771
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2774
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2771
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2760
    .end local v0    # "interp":Landroid/view/animation/DecelerateInterpolator;
    .end local v1    # "totalOffset":I
    .end local v2    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "abortAnimation"    # Z

    .prologue
    .line 2743
    if-eqz p2, :cond_0

    .line 2746
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2747
    .local v0, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2749
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    .line 2750
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 2741
    .end local v0    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :goto_0
    return-void

    .line 2752
    :cond_0
    const-string/jumbo v1, "canceled"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2447
    new-instance v0, Lcom/android/keyguard/PagedView$11;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/PagedView$11;-><init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private dispatchOnPageBeginWarp()V
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginWarp()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 500
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 495
    return-void
.end method

.method private dispatchOnPageEndWarp()V
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndWarp()V

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 503
    return-void
.end method

.method private getCurrentWarpOffset()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2779
    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2780
    return v4

    .line 2782
    :cond_0
    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2783
    .local v0, "viewRight":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2784
    .local v1, "warpView":Landroid/view/View;
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2785
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 2787
    :cond_1
    return v4
.end method

.method private getPageSnapDuration()I
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2389
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2391
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2393
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 2394
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 2393
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2395
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2396
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 2397
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    .line 2396
    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2398
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2399
    return-object v3

    .line 2402
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private isHorizontalCameraScroll(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1233
    iget v7, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1234
    .local v0, "pointerIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    return v6

    .line 1238
    :cond_0
    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v7, :cond_2

    .line 1240
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1241
    .local v2, "x":F
    iget v7, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v3, v7

    .line 1243
    .local v3, "xDiff":I
    iget v7, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1244
    .local v1, "touchSlop":I
    iget v7, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v7, :cond_3

    const/4 v5, 0x1

    .line 1245
    .local v5, "xPaged":Z
    :goto_0
    if-le v3, v1, :cond_4

    const/4 v4, 0x1

    .line 1247
    .local v4, "xMoved":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v7, :cond_6

    iget-boolean v6, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v6, :cond_5

    .end local v5    # "xPaged":Z
    :goto_2
    return v5

    .line 1238
    .end local v1    # "touchSlop":I
    .end local v2    # "x":F
    .end local v3    # "xDiff":I
    .end local v4    # "xMoved":Z
    :cond_2
    return v6

    .line 1244
    .restart local v1    # "touchSlop":I
    .restart local v2    # "x":F
    .restart local v3    # "xDiff":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "xPaged":Z
    goto :goto_0

    .line 1245
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "xMoved":Z
    goto :goto_1

    :cond_5
    move v5, v4

    .line 1247
    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_2
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2596
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2597
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2598
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2599
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2600
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2602
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2603
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2604
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 2606
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 1069
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1070
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1072
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1071
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1073
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 1075
    :cond_0
    return v5
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1063
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1062
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1064
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 2612
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2614
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2615
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2618
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2620
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2621
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    .line 2622
    const-string/jumbo v9, "scaleX"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v13

    .line 2623
    const-string/jumbo v9, "scaleY"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    .line 2621
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2624
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2627
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2628
    new-array v8, v12, [Landroid/animation/Animator;

    .line 2629
    const-string/jumbo v9, "alpha"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v13

    .line 2628
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2630
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2633
    sget v9, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_deleted:I

    .line 2632
    new-array v10, v12, [Ljava/lang/Object;

    .line 2634
    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2632
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2635
    invoke-direct {p0, v3}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2637
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2638
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2639
    iget v8, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2640
    new-instance v8, Lcom/android/keyguard/PagedView$14;

    invoke-direct {v8, p0, v5}, Lcom/android/keyguard/PagedView$14;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2645
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2647
    iput-boolean v12, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2611
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2246
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2247
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2248
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2250
    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2244
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1753
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1754
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1758
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1759
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1760
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1761
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1762
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1763
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1764
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1750
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1758
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1321
    sub-float/2addr p1, v1

    .line 1322
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1744
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1746
    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1743
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1698
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1699
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->endReordering()V

    .line 1700
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1701
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1702
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1697
    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    .line 1214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    .line 1215
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    .line 1216
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1217
    .local v1, "p":[F
    aget v3, v1, v6

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1218
    aget v3, v1, v7

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1219
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1220
    iput v5, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1221
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1224
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    .line 1225
    .local v0, "leftEdgeBoundary":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    .line 1226
    .local v2, "rightEdgeBoundary":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1227
    :cond_0
    iput-boolean v7, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1211
    :cond_1
    return-void
.end method

.method private setTouchState(I)V
    .locals 1
    .param p1, "touchState"    # I

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_0

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchStateChanged(I)V

    .line 1197
    iput p1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 1193
    :cond_0
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1279
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1280
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 1282
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1283
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1284
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1285
    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1286
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1287
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1289
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1277
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2129
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2130
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2132
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2133
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2134
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2136
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_3

    .line 2137
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->showScrollingIndicator(Z)V

    .line 2128
    :cond_3
    return-void
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 12

    .prologue
    .line 2142
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    .line 2143
    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v10, :cond_1

    return-void

    .line 2144
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v6

    .line 2145
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2146
    .local v8, "pageWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2147
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2148
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2149
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 2150
    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 2149
    sub-int/2addr v10, v11

    .line 2150
    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 2149
    sub-int v3, v10, v11

    .line 2152
    .local v3, "indicatorWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2153
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2154
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2155
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2156
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2157
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2158
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2164
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 2141
    return-void

    .line 2161
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2162
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1326
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1330
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v4, v3

    .line 1332
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    return-void

    .line 1335
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1336
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1339
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1340
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1341
    iput v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1342
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-super {p0, v4, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1347
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 1325
    return-void

    .line 1344
    :cond_2
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1345
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1005
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1007
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1008
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1009
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 1011
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1012
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1013
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2169
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2170
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2171
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2172
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2173
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string/jumbo v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2174
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2172
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2175
    new-instance v1, Lcom/android/keyguard/PagedView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$6;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2181
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2168
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 866
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2081
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScrollHelper()Z

    .line 614
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 592
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 595
    return v4

    .line 591
    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 596
    :cond_3
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-eq v0, v3, :cond_5

    .line 597
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 598
    iput v3, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 599
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 603
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v0, :cond_4

    .line 604
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageEndMoving()V

    .line 607
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    .line 608
    return v4

    .line 610
    :cond_5
    return v2
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1353
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1355
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    return-void

    .line 1356
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1359
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1360
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1363
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1364
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1365
    iput v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1366
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-super {p0, v4, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1371
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 1350
    return-void

    .line 1368
    :cond_2
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1369
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 1256
    iget v7, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1257
    .local v0, "pointerIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    return v9

    .line 1260
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1261
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1262
    .local v6, "y":F
    float-to-int v7, v2

    float-to-int v8, v6

    invoke-direct {p0, v7, v8}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v7

    if-nez v7, :cond_1

    return v9

    .line 1266
    :cond_1
    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v7, :cond_3

    .line 1268
    :cond_2
    iget v7, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v3, v7

    .line 1270
    .local v3, "xDiff":I
    iget v7, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1271
    .local v1, "touchSlop":I
    iget v7, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v7, :cond_4

    const/4 v5, 0x1

    .line 1272
    .local v5, "xPaged":Z
    :goto_0
    if-le v3, v1, :cond_5

    const/4 v4, 0x1

    .line 1274
    .local v4, "xMoved":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v7, :cond_6

    .end local v5    # "xPaged":Z
    :goto_2
    return v5

    .line 1266
    .end local v1    # "touchSlop":I
    .end local v3    # "xDiff":I
    .end local v4    # "xMoved":Z
    :cond_3
    return v9

    .line 1271
    .restart local v1    # "touchSlop":I
    .restart local v3    # "xDiff":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "xPaged":Z
    goto :goto_0

    .line 1272
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "xMoved":Z
    goto :goto_1

    :cond_6
    move v5, v4

    .line 1274
    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 918
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 920
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 923
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 924
    invoke-virtual {p0, v7}, Lcom/android/keyguard/PagedView;->screenScrolled(I)V

    .line 925
    iput v7, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 930
    .local v5, "pageCount":I
    if-lez v5, :cond_7

    .line 931
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 932
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 933
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 934
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 935
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 937
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 938
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 939
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 938
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 942
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 943
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 944
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 942
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 945
    :cond_3
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    .line 946
    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    .line 945
    if-eqz v9, :cond_2

    .line 947
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 951
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 952
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 955
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 914
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    .line 988
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 990
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 991
    return v2

    .line 993
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 996
    return v2

    .line 999
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1858
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1859
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1860
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2307
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_0

    return-void

    .line 2308
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2312
    new-instance v0, Lcom/android/keyguard/PagedView$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$8;-><init>(Lcom/android/keyguard/PagedView;)V

    .line 2318
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_1

    .line 2319
    new-instance v1, Lcom/android/keyguard/PagedView$9;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$9;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2326
    iget v1, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 2325
    iput v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2328
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 2330
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    .line 2304
    :cond_1
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1027
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1028
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1030
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_0

    .line 1031
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1032
    return-void

    .line 1034
    :cond_0
    if-ne v2, p0, :cond_1

    .line 1035
    return-void

    .line 1037
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1038
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1039
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 1041
    :cond_2
    return-void
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1299
    .local v0, "halfScreenSize":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1300
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1302
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 819
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    :cond_0
    return v5

    .line 821
    :cond_1
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 822
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 824
    .local v0, "childOffsets":[I
    :goto_0
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 825
    aget v3, v0, p1

    return v3

    .line 822
    .end local v0    # "childOffsets":[I
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .restart local v0    # "childOffsets":[I
    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 828
    return v5

    .line 830
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 831
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_5

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 834
    :cond_5
    if-eqz v0, :cond_6

    .line 835
    aput v2, v0, p1

    .line 837
    :cond_6
    return v2
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1795
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1796
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 1797
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1293
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1813
    const v7, 0x7fffffff

    .line 1814
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1815
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1816
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 1817
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1818
    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1819
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1820
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1821
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1822
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1823
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1824
    move v7, v3

    .line 1825
    move v8, v5

    .line 1817
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1828
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getPageWarpIndex()I
    .locals 1

    .prologue
    .line 2829
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 842
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    :cond_0
    return v3

    .line 844
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 845
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    return v2

    .line 847
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 848
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    .line 849
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 848
    add-int v0, v2, v3

    .line 850
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    .line 851
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    .line 853
    :cond_3
    return v0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 861
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 862
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 863
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 862
    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .restart local v0    # "maxWidth":I
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1308
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1309
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    .line 1310
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    .line 1309
    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1312
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1313
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1314
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1315
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 2038
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 872
    aput v0, p1, v0

    .line 873
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 871
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2125
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2088
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    return-void

    .line 2089
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2091
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2092
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2094
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2095
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2096
    if-eqz p1, :cond_3

    .line 2097
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2087
    :cond_2
    :goto_0
    return-void

    .line 2100
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2101
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2102
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/PagedView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$5;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2115
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 429
    return p1
.end method

.method protected init()V
    .locals 5

    .prologue
    const v4, 0x44bb8000    # 1500.0f

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 305
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 306
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 308
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 309
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    .line 310
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    .line 312
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    .line 313
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000    # -75.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    .line 316
    iget v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 318
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 319
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    .line 320
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    .line 321
    invoke-virtual {p0, p0}, Lcom/android/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 302
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 800
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 801
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 802
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 803
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 804
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 805
    return-void

    .line 808
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 809
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 810
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 812
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 813
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 814
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_1
    return-void
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2298
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2299
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2300
    iget v1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2302
    :cond_0
    return v0

    .line 2300
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 478
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 472
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 788
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 789
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 784
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 795
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 796
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 793
    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2255
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2257
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2258
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2264
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2267
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2268
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2270
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 2271
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2260
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    .line 2261
    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_reorder_end:I

    .line 2260
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2254
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 14
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v13, 0x1

    .line 2539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2546
    .local v4, "startTime":J
    new-instance v9, Lcom/android/keyguard/PagedView$12;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/keyguard/PagedView$12;-><init>(Lcom/android/keyguard/PagedView;J)V

    .line 2567
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2568
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2569
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2570
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2571
    new-instance v0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    .line 2572
    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    .line 2571
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2574
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2575
    sget v6, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_deleted:I

    .line 2574
    new-array v10, v13, [Ljava/lang/Object;

    .line 2576
    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 2574
    invoke-virtual {v2, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2577
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2580
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2581
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2582
    iget v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2583
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2584
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2585
    new-instance v2, Lcom/android/keyguard/PagedView$13;

    invoke-direct {v2, p0, v8}, Lcom/android/keyguard/PagedView$13;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2590
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2591
    iput-boolean v13, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2538
    return-void

    .line 2583
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1733
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1715
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1716
    const/4 v1, 0x0

    .line 1717
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1722
    .local v0, "hscroll":F
    :goto_0
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1723
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1724
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    .line 1728
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 1719
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1720
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_0

    .line 1726
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_1

    .line 1710
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2698
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2665
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2666
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2667
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2668
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2669
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2670
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2664
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2653
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2654
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2655
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2656
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2658
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2659
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2652
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2654
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1099
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1100
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 1101
    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v5, v3, :cond_1

    .line 1102
    return v3

    .line 1105
    :cond_1
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1190
    :cond_2
    :goto_0
    :pswitch_0
    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eqz v5, :cond_a

    :goto_1
    return v3

    .line 1111
    :pswitch_1
    iget v5, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1112
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1113
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1127
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v5, :cond_4

    .line 1128
    const-string/jumbo v5, "interceptTouch(): DOWN"

    invoke-direct {p0, v5}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    .line 1131
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1138
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1139
    .local v2, "xDist":I
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    if-ge v2, v5, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 1140
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 1141
    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1142
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 1139
    .end local v1    # "finishedScrolling":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "finishedScrolling":Z
    goto :goto_2

    .line 1144
    :cond_7
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_8

    .line 1145
    iget v5, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    float-to-int v6, v6

    .line 1144
    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1146
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_0

    .line 1148
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_0

    .line 1173
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "xDist":I
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    .line 1175
    iget v5, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1176
    return v3

    .line 1181
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1182
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    goto :goto_0

    :cond_a
    move v3, v4

    .line 1190
    goto :goto_1

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 744
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 745
    :cond_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 751
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 752
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 755
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 757
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 758
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 759
    invoke-virtual {p0, v6}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 761
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 763
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 767
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    .line 766
    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 768
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 758
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_3
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 773
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 775
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 776
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 743
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_1

    .line 625
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 626
    return-void

    .line 631
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 632
    .local v18, "parent":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 633
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 634
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 635
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 638
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 639
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 640
    .local v16, "maxSize":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3fc00000    # 1.5f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 641
    .local v20, "parentWidthSize":I
    move/from16 v19, v16

    .line 642
    .local v19, "parentHeightSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 643
    .local v22, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 644
    .local v21, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 646
    if-eqz v25, :cond_2

    if-nez v11, :cond_3

    .line 647
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 648
    return-void

    .line 652
    :cond_3
    if-lez v26, :cond_4

    if-gtz v12, :cond_5

    .line 653
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 654
    return-void

    .line 662
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 663
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 672
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 673
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v5, :cond_8

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 676
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 679
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 680
    const/high16 v9, -0x80000000

    .line 686
    .local v9, "childWidthMode":I
    :goto_1
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 687
    const/high16 v7, -0x80000000

    .line 693
    .local v7, "childHeightMode":I
    :goto_2
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 695
    .local v8, "childWidthMeasureSpec":I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 697
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 673
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 682
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "childWidthMode":I
    goto :goto_1

    .line 689
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childHeightMode":I
    goto :goto_2

    .line 699
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->setMeasuredDimension(II)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 709
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 711
    if-lez v5, :cond_a

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 721
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 722
    .local v17, "offset":I
    sub-int v27, v26, v17

    .line 723
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 722
    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 724
    .local v23, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 728
    .end local v17    # "offset":I
    .end local v23    # "spacing":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 730
    if-lez v5, :cond_c

    .line 731
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    .line 623
    :goto_4
    return-void

    .line 707
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    goto :goto_3

    .line 733
    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto :goto_4
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    .prologue
    .line 2837
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    .prologue
    .line 2841
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 974
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 975
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 979
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 980
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 981
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 977
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 983
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected onStartReordering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2221
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2222
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    .line 2223
    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_reorder_start:I

    .line 2222
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2227
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 2228
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2231
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2232
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2234
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_2

    .line 2235
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2233
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2241
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 2220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v30

    if-gtz v30, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v30

    return v30

    .line 1395
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1397
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1399
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 1689
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v30, 0x1

    return v30

    .line 1405
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->isFinished()Z

    move-result v30

    if-nez v30, :cond_2

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1410
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1418
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 1419
    const-string/jumbo v30, "onTouch(): DOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_3
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1424
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1428
    .local v22, "pointerIndex":I
    const/16 v30, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v30, 0x1

    return v30

    .line 1430
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 1431
    .local v29, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v31, v0

    add-float v30, v30, v31

    sub-float v7, v30, v29

    .line 1433
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v30, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v31

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1438
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_7

    .line 1439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchX:F

    move/from16 v30, v0

    add-float v30, v30, v7

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1440
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x4e6e6b28    # 1.0E9f

    div-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 1443
    .local v26, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v30

    sub-float v30, v30, v7

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 1450
    .end local v26    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :goto_2
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1451
    float-to-int v0, v7

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v7, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_0

    .line 1444
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 1445
    float-to-int v0, v7

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    goto :goto_2

    .line 1448
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    goto :goto_2

    .line 1453
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 1455
    .end local v7    # "deltaX":F
    .end local v22    # "pointerIndex":I
    .end local v29    # "x":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v23

    .line 1463
    .local v23, "pt":[F
    const/16 v30, 0x0

    aget v30, v23, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1464
    const/16 v30, 0x1

    aget v30, v23, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1469
    .local v9, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v30, v0

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 1469
    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v6, v0

    .line 1471
    .local v6, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    .line 1472
    int-to-float v0, v6

    move/from16 v31, v0

    .line 1471
    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1473
    .local v16, "leftBufferEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    .line 1474
    int-to-float v0, v6

    move/from16 v31, v0

    .line 1473
    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1478
    .local v25, "rightBufferEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1477
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v14

    .line 1479
    .local v14, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/android/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v21, v0

    .line 1489
    .local v21, "parentX":F
    const/16 v18, -0x1

    .line 1490
    .local v18, "pageIndexToSnapTo":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_b

    if-lez v9, :cond_b

    .line 1491
    add-int/lit8 v18, v9, -0x1

    .line 1496
    :cond_9
    :goto_3
    move/from16 v19, v18

    .line 1497
    .local v19, "pageUnderPointIndex":I
    const/16 v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-le v0, v1, :cond_a

    if-eqz v14, :cond_c

    .line 1558
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1559
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_0

    .line 1492
    .end local v19    # "pageUnderPointIndex":I
    :cond_b
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v21, v30

    if-lez v30, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    if-ge v9, v0, :cond_9

    .line 1493
    add-int/lit8 v18, v9, 0x1

    goto :goto_3

    .line 1498
    .restart local v19    # "pageUnderPointIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v30, v32

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x1

    aput v31, v30, v32

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    move/from16 v0, v30

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_1

    .line 1503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    move/from16 v30, v0

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->isFinished()Z

    move-result v30

    .line 1501
    if-eqz v30, :cond_1

    .line 1504
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1505
    new-instance v30, Lcom/android/keyguard/PagedView$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/android/keyguard/PagedView$4;-><init>(Lcom/android/keyguard/PagedView;II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1561
    .end local v6    # "bufferSize":I
    .end local v9    # "dragViewIndex":I
    .end local v14    # "isHoveringOverDelete":Z
    .end local v16    # "leftBufferEdge":I
    .end local v18    # "pageIndexToSnapTo":I
    .end local v19    # "pageUnderPointIndex":I
    .end local v21    # "parentX":F
    .end local v23    # "pt":[F
    .end local v25    # "rightBufferEdge":I
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 1562
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1563
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->isHorizontalCameraScroll(Landroid/view/MotionEvent;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1564
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 1567
    .restart local v26    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/16 :goto_0

    .line 1572
    .end local v26    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 1573
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1574
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1576
    .restart local v22    # "pointerIndex":I
    const/16 v30, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    const/16 v30, 0x1

    return v30

    .line 1578
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 1579
    .restart local v29    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    .line 1580
    .local v27, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x3e8

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1581
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1582
    .local v28, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    move/from16 v30, v0

    sub-float v30, v29, v30

    move/from16 v0, v30

    float-to-int v8, v0

    .line 1583
    .local v8, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v20

    .line 1584
    .local v20, "pageWidth":I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v31, v0

    .line 1585
    const/high16 v32, 0x3f000000    # 0.5f

    .line 1584
    mul-float v31, v31, v32

    cmpl-float v30, v30, v31

    if-lez v30, :cond_15

    const/4 v15, 0x1

    .line 1587
    .local v15, "isSignificantMove":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v32, v0

    add-float v31, v31, v32

    sub-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v30, v0

    const/high16 v31, 0x41c80000    # 25.0f

    cmpl-float v30, v30, v31

    if-lez v30, :cond_17

    .line 1590
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_16

    const/4 v13, 0x1

    .line 1595
    .local v13, "isFling":Z
    :goto_5
    const/16 v24, 0x0

    .line 1596
    .local v24, "returnToOriginalPage":Z
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3ea8f5c3    # 0.33f

    mul-float v31, v31, v32

    cmpl-float v30, v30, v31

    if-lez v30, :cond_10

    .line 1597
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->signum(F)F

    move-result v30

    int-to-float v0, v8

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->signum(F)F

    move-result v31

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_10

    .line 1596
    if-eqz v13, :cond_10

    .line 1598
    const/16 v24, 0x1

    .line 1605
    :cond_10
    if-eqz v15, :cond_11

    if-lez v8, :cond_11

    if-eqz v13, :cond_12

    .line 1606
    :cond_11
    if-eqz v13, :cond_19

    if-lez v28, :cond_19

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    if-lez v30, :cond_19

    .line 1607
    if-nez v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 1608
    :cond_13
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1609
    .local v10, "finalPage":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1672
    .end local v5    # "activePointerId":I
    .end local v8    # "deltaX":I
    .end local v10    # "finalPage":I
    .end local v13    # "isFling":Z
    .end local v15    # "isSignificantMove":Z
    .end local v20    # "pageWidth":I
    .end local v22    # "pointerIndex":I
    .end local v24    # "returnToOriginalPage":Z
    .end local v27    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v28    # "velocityX":I
    .end local v29    # "x":F
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1674
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1584
    .restart local v5    # "activePointerId":I
    .restart local v8    # "deltaX":I
    .restart local v20    # "pageWidth":I
    .restart local v22    # "pointerIndex":I
    .restart local v27    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v28    # "velocityX":I
    .restart local v29    # "x":F
    :cond_15
    const/4 v15, 0x0

    .restart local v15    # "isSignificantMove":Z
    goto/16 :goto_4

    .line 1590
    :cond_16
    const/4 v13, 0x0

    .restart local v13    # "isFling":Z
    goto :goto_5

    .line 1589
    .end local v13    # "isFling":Z
    :cond_17
    const/4 v13, 0x0

    .restart local v13    # "isFling":Z
    goto :goto_5

    .line 1608
    .restart local v24    # "returnToOriginalPage":Z
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    add-int/lit8 v10, v30, -0x1

    .restart local v10    # "finalPage":I
    goto :goto_6

    .line 1610
    .end local v10    # "finalPage":I
    :cond_19
    if-eqz v15, :cond_1a

    if-gez v8, :cond_1a

    if-eqz v13, :cond_1b

    .line 1611
    :cond_1a
    if-eqz v13, :cond_1e

    if-gez v28, :cond_1e

    .line 1612
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1613
    if-eqz v24, :cond_1c

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1615
    .restart local v10    # "finalPage":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_7

    .line 1614
    .end local v10    # "finalPage":I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v30

    if-eqz v30, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v10

    .restart local v10    # "finalPage":I
    goto :goto_8

    .end local v10    # "finalPage":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    add-int/lit8 v10, v30, 0x1

    .restart local v10    # "finalPage":I
    goto :goto_8

    .line 1617
    .end local v10    # "finalPage":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_7

    .line 1619
    .end local v5    # "activePointerId":I
    .end local v8    # "deltaX":I
    .end local v13    # "isFling":Z
    .end local v15    # "isSignificantMove":Z
    .end local v20    # "pageWidth":I
    .end local v22    # "pointerIndex":I
    .end local v24    # "returnToOriginalPage":Z
    .end local v27    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v28    # "velocityX":I
    .end local v29    # "x":F
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1624
    .local v17, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_20

    .line 1625
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_7

    .line 1627
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_7

    .line 1629
    .end local v17    # "nextPage":I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_23

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1634
    .restart local v17    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_22

    .line 1635
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_7

    .line 1637
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_7

    .line 1639
    .end local v17    # "nextPage":I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 1641
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1642
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v23

    .line 1647
    .restart local v23    # "pt":[F
    const/16 v30, 0x0

    aget v30, v23, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1648
    const/16 v30, 0x1

    aget v30, v23, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1650
    const/4 v12, 0x0

    .line 1653
    .local v12, "handledFling":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v11

    .line 1654
    .local v11, "flingToDeleteVector":Landroid/graphics/PointF;
    if-eqz v11, :cond_24

    .line 1655
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1656
    const/4 v12, 0x1

    .line 1659
    :cond_24
    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 1660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1659
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 1661
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_7

    .line 1665
    .end local v11    # "flingToDeleteVector":Landroid/graphics/PointF;
    .end local v12    # "handledFling":Z
    .end local v23    # "pt":[F
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    move/from16 v30, v0

    if-eqz v30, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isAnimatingWarpPage()Z

    move-result v30

    if-eqz v30, :cond_27

    .line 1668
    :cond_26
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1666
    :cond_27
    const-string/jumbo v30, "unhandled tap"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    goto :goto_9

    .line 1678
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    .line 1681
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1685
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 0
    .param p1, "newTouchState"    # I

    .prologue
    .line 1201
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1705
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1374
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginMoving()V

    .line 484
    :cond_1
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_1

    .line 514
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 515
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 517
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndMoving()V

    .line 511
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2676
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    return v2

    .line 2679
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2693
    :cond_1
    return v3

    .line 2681
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2682
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    .line 2683
    return v2

    .line 2687
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2688
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    .line 2689
    return v2

    .line 2679
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1771
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1772
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1773
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 963
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 964
    .local v0, "page":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    const/4 v1, 0x0

    return v1

    .line 965
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 966
    const/4 v1, 0x1

    return v1
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 780
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 551
    iget v0, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 550
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    iput p1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 558
    if-gez p1, :cond_2

    .line 559
    invoke-super {p0, v4, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 560
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 561
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    .line 573
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 574
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 577
    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 579
    .local v0, "p":[F
    aget v1, v0, v4

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 580
    aget v1, v0, v5

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 581
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 555
    .end local v0    # "p":[F
    :cond_1
    return-void

    .line 563
    :cond_2
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 564
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 565
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 566
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    .line 569
    :cond_3
    iput p1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 570
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 457
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 461
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 462
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 463
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicator()V

    .line 464
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 465
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 449
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 324
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 355
    iput p1, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 356
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->requestLayout()V

    .line 354
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 543
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 544
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 468
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2609
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 738
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    .line 739
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 737
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/keyguard/PagedView$PageSwitchListener;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 388
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 362
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 364
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 365
    aget v1, v0, v3

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 366
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 360
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2059
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2060
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2061
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    return-void

    .line 2062
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2064
    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2065
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2066
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2068
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2069
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2070
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2071
    if-eqz p1, :cond_3

    .line 2072
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2058
    :cond_2
    :goto_0
    return-void

    .line 2074
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2075
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2076
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 3

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 1833
    .local v0, "newPage":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1834
    const-string/jumbo v2, "snapToDestination"

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1836
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1831
    return-void

    .line 1834
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1905
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1904
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1911
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1926
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1931
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_5

    .line 1932
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 1938
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-eqz v0, :cond_0

    .line 1939
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 1940
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    .line 1942
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1946
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    .line 1947
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1

    .line 1948
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1951
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1952
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->awakenScrollBars(I)Z

    .line 1953
    if-eqz p4, :cond_6

    .line 1954
    const/4 p3, 0x0

    .line 1959
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1960
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1962
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 1965
    if-eqz p4, :cond_4

    .line 1966
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScroll()V

    .line 1969
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1970
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 1930
    return-void

    .line 1935
    .end local v6    # "focusedChild":Landroid/view/View;
    :cond_5
    iput p1, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_0

    .line 1955
    .restart local v6    # "focusedChild":Landroid/view/View;
    :cond_6
    if-nez p3, :cond_2

    .line 1956
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_1
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1915
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1920
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1921
    .local v1, "newX":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1922
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1923
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1914
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 1908
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1907
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1864
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1865
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 1867
    .local v4, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1868
    const-string/jumbo v7, "snapToPageWithVelocity"

    iget v8, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v8, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v7, v6}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1874
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1875
    .local v5, "newX":I
    iget v6, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1876
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1878
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    .line 1881
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1882
    return-void

    .line 1889
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1890
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 1891
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    .line 1890
    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1893
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1894
    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1899
    int-to-float v6, p2

    div-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1901
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/keyguard/PagedView;->snapToPage(III)V

    .line 1863
    return-void
.end method

.method public startReordering()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2277
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2278
    .local v0, "dragViewIndex":I
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v4, v1, v4

    .line 2279
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v3

    .line 2280
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2283
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v1, v0, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-gt v0, v1, :cond_1

    .line 2285
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2286
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->zoomOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2288
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2290
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    .line 2292
    :cond_0
    return v3

    .line 2294
    :cond_1
    return v4
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 438
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 439
    .local v1, "offset":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 440
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 441
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 442
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 443
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 437
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 346
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 347
    .local v0, "x":F
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 348
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2338
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2341
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 2342
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2343
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2344
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2345
    const-string/jumbo v2, "scaleX"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2346
    const-string/jumbo v2, "scaleY"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2344
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2347
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/PagedView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/PagedView$10;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2374
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2375
    return v6

    .line 2377
    :cond_2
    if-eqz p1, :cond_3

    .line 2378
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2381
    :cond_3
    return v5
.end method

.method protected zoomOut()Z
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2187
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 2192
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2193
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2194
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    .line 2195
    const-string/jumbo v4, "scaleX"

    new-array v5, v1, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2196
    const-string/jumbo v4, "scaleY"

    new-array v5, v1, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    .line 2194
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2197
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$7;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2214
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2215
    return v1

    :cond_2
    move v0, v2

    .line 2191
    goto :goto_0

    .line 2217
    :cond_3
    return v2
.end method
