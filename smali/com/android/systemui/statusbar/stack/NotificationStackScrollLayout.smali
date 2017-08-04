.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;
    }
.end annotation


# instance fields
.field private final ENABLE_NOTIFICATIONS_FADING_EDGE:Z

.field private NOTIFICATIONS_EDGE_FADING_DISTANCE:F

.field private NOTIFICATIONS_VERTICAL_FADING_EDGE_LENGTH:I

.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsEnabled:Z

.field private mBottomFadingOffsetAdjust:I

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownHeight:I

.field private mChangePositionInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDelegateToScrollView:Z

.field private mDimmedNeedsAnimation:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissBtn:Landroid/view/View;

.field private mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDividingLine:Landroid/view/View;

.field private mDividingLineVisible:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mHideSensitiveNeedsAnimation:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterceptDelegateEnabled:Z

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mKeyguardMaxBottomMargin:I

.field private mKeyguardMaxNotificationCount:I

.field private mKeyguardMinBottomMargin:I

.field private mKeyguardShowing:Z

.field private mLastMotionY:I

.field private mLastSetStackHeight:F

.field private mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNotificationTopPadding:I

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRequestViewResizeAnimationOnLayout:Z

.field private mScreenOnNeedsAnimation:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollingEnabled:Z

.field private mShadeMaxBottomMargin:I

.field private mShadeMinBottomMargin:I

.field private mSidePaddings:I

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/DismissView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/EmptyShadeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 129
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 130
    new-instance v2, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 136
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 166
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 216
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 215
    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 226
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 228
    const/16 v2, 0x4d

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_VERTICAL_FADING_EDGE_LENGTH:I

    .line 230
    const/high16 v2, 0x42480000    # 50.0f

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_EDGE_FADING_DISTANCE:F

    .line 231
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->ENABLE_NOTIFICATIONS_FADING_EDGE:Z

    .line 232
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomFadingOffsetAdjust:I

    .line 2984
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLineVisible:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 250
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 252
    .local v0, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMinBottomMargin:I

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMaxBottomMargin:I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMaxBottomMargin:I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMinBottomMargin:I

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMaxNotificationCount:I

    .line 258
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 263
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v4, p0, v3}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 276
    const v3, 0x7f0b02aa

    .line 274
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_VERTICAL_FADING_EDGE_LENGTH:I

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 279
    const v3, 0x7f0b02ab

    .line 277
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_EDGE_FADING_DISTANCE:F

    .line 280
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setWillNotDraw(Z)V

    .line 281
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_VERTICAL_FADING_EDGE_LENGTH:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingEdgeLength(I)V

    .line 282
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 247
    return-void
.end method

.method private applyCurrentState()V
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 2244
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2242
    :cond_0
    return-void
.end method

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .prologue
    .line 1513
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 476
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 477
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 474
    :cond_0
    return-void
.end method

.method private customScrollTo(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1240
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1239
    return-void
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 812
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 813
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 814
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 815
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 811
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1541
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 1545
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1546
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1548
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1549
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1540
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 5
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v4, -0x1

    .line 2319
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 2320
    :cond_0
    return v4

    .line 2322
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 2323
    const/4 v1, -0x2

    return v1

    .line 2325
    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2326
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2327
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    return v1

    .line 2329
    :cond_3
    return v4
.end method

.method private fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 1422
    .local v12, "scrollRange":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 1423
    .local v13, "topAmount":F
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 1424
    .local v11, "bottomAmount":F
    if-gez p1, :cond_1

    cmpl-float v0, v13, v2

    if-lez v0, :cond_1

    .line 1425
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1426
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1427
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1428
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1429
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 1428
    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1440
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1441
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v10, 0x3fffffff    # 1.9999999f

    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    .line 1440
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1418
    .end local v11    # "bottomAmount":F
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    :cond_0
    return-void

    .line 1430
    .restart local v11    # "bottomAmount":F
    .restart local v12    # "scrollRange":I
    .restart local v13    # "topAmount":F
    :cond_1
    if-lez p1, :cond_2

    cmpl-float v0, v11, v2

    if-lez v0, :cond_2

    .line 1431
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1432
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1433
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 1434
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    .line 1433
    mul-float/2addr v0, v1

    .line 1434
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 1433
    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 1438
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    .prologue
    .line 1904
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1906
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1905
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 1903
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .prologue
    .line 1912
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1914
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1913
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 1911
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1881
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1882
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1883
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 1885
    const-wide/16 v4, 0x168

    .line 1883
    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1887
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1891
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1892
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1880
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 1817
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 1818
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 1819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 1820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 1821
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 1822
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 1823
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 1824
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 1825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 1826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 1827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 1828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateScreenOnEvent()V

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1814
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 6

    .prologue
    .line 1857
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1858
    .local v1, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1859
    .local v3, "childWasSwipedOut":Z
    if-eqz v3, :cond_0

    .line 1860
    const/4 v0, 0x2

    .line 1862
    .local v0, "animationType":I
    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1865
    .local v4, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 1866
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1861
    .end local v0    # "animationType":I
    .end local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "animationType":I
    goto :goto_1

    .line 1868
    .end local v0    # "animationType":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childWasSwipedOut":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1869
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1856
    return-void
.end method

.method private generateDarkEvent()V
    .locals 3

    .prologue
    .line 1936
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    .line 1937
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1938
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 1939
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 1935
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .prologue
    .line 1920
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1922
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1921
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 1919
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .prologue
    .line 1849
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1850
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 1851
    const/4 v4, 0x4

    .line 1850
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1853
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1848
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .prologue
    .line 1945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1947
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 1944
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .prologue
    .line 1928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1930
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1929
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 1927
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .prologue
    .line 1873
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1874
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 1875
    const/16 v4, 0x8

    .line 1874
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1877
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1872
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1657
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1662
    return v2

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1666
    return v1

    .line 1669
    :cond_1
    return v1
.end method

.method private generateScreenOnEvent()V
    .locals 4

    .prologue
    .line 2955
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScreenOnNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 2957
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 2956
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2959
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScreenOnNeedsAnimation:Z

    .line 2954
    return-void
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .prologue
    .line 1841
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1842
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 1843
    const/4 v4, 0x5

    .line 1842
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1845
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1840
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1898
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1897
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 1895
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 1835
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1834
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 1832
    return-void
.end method

.method private getFirstChildBelowTranlsationY(F)Landroid/view/View;
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1334
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1335
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1336
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 1337
    return-object v0

    .line 1334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1319
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1320
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1321
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1322
    return-object v0

    .line 1319
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1693
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1694
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1695
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 1697
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method private getLayoutHeight()I
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxExpandHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1379
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1380
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1381
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 1383
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2335
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2336
    .local v2, "notGoneIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2337
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2338
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 2339
    return v2

    .line 2341
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 2342
    add-int/lit8 v2, v2, 0x1

    .line 2336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2345
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 5
    .param p1, "requestedChild"    # Landroid/view/View;

    .prologue
    .line 1701
    const/4 v2, 0x0

    .line 1702
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1703
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1704
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 1705
    return v2

    .line 1707
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 1708
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1710
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v3

    .line 1702
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const v1, 0x3eb33333    # 0.35f

    .line 1517
    if-nez p1, :cond_0

    .line 1518
    return v1

    .line 1520
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_1

    .line 1521
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 1522
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-eqz v0, :cond_2

    .line 1523
    const v0, 0x3e570a3d    # 0.21f

    return v0

    .line 1524
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v0, :cond_3

    .line 1525
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1527
    :cond_3
    return v1
.end method

.method private getScrollAmount()I
    .locals 2

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    .line 2908
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 2907
    add-int/2addr v0, v1

    return v0
.end method

.method private getScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1295
    const/4 v4, 0x0

    .line 1296
    .local v4, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1297
    .local v1, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 1299
    .local v0, "contentHeight":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMaxExpandHeight(Landroid/view/View;)I

    move-result v2

    .line 1300
    .local v2, "firstChildMaxExpandHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v5, v6

    .line 1301
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 1300
    add-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1302
    if-lez v4, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v3

    .line 1311
    .end local v0    # "contentHeight":I
    .end local v2    # "firstChildMaxExpandHeight":I
    :cond_0
    return v4
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 1613
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1614
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 1616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 1618
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1619
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1609
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1612
    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1068
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1066
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1055
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1053
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 305
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 306
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 307
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 308
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 309
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 310
    const v3, 0x7f10001e

    .line 309
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 311
    .local v1, "scaleFactor":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 314
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 317
    const v3, 0x7f0b03cd

    .line 316
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    const v3, 0x7f0b038d

    .line 318
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 321
    const v3, 0x7f0b03c9

    .line 320
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    .line 322
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 325
    const v3, 0x7f0b03cf

    .line 324
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 327
    const v3, 0x7f0b03d0

    .line 326
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 330
    const v3, 0x7f0b03d1

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 332
    const v3, 0x7f0b03d7

    .line 331
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 334
    const v3, 0x7f0b03d2

    .line 333
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    .line 303
    return-void
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method private isRubberbanded(Z)Z
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1536
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v1, :cond_0

    .line 1537
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1536
    :cond_0
    return v0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private needsHeightAdaption()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 346
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1209
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 1210
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1211
    return-void

    :cond_0
    move v0, v1

    .line 1208
    goto :goto_0

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    .line 1207
    :cond_2
    return-void
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1953
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1954
    const/4 v1, 0x0

    return v1

    .line 1967
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1968
    .local v8, "action":I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1969
    const/4 v1, 0x1

    return v1

    .line 1972
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2058
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return v1

    .line 1983
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1984
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 1989
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1990
    .local v11, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_3

    .line 1991
    const-string/jumbo v1, "NotificationStackScrollLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1992
    const-string/jumbo v3, " in onInterceptTouchEvent"

    .line 1991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1996
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v14, v1

    .line 1997
    .local v14, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v12, v1

    .line 1998
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 1999
    .local v15, "yDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 2000
    .local v13, "xDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v15, v1, :cond_2

    if-le v15, v13, :cond_2

    .line 2001
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2002
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 2003
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 2004
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 2005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2011
    .end local v9    # "activePointerId":I
    .end local v11    # "pointerIndex":I
    .end local v12    # "x":I
    .end local v13    # "xDiff":I
    .end local v14    # "y":I
    .end local v15    # "yDiff":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    .line 2012
    .restart local v14    # "y":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 2014
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2015
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2016
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 2024
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 2025
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 2027
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 2028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v10, 0x0

    .line 2035
    .local v10, "isBeingDragged":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_0

    .line 2034
    .end local v10    # "isBeingDragged":Z
    :cond_5
    const/4 v10, 0x1

    .restart local v10    # "isBeingDragged":Z
    goto :goto_1

    .line 2042
    .end local v10    # "isBeingDragged":Z
    .end local v14    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2043
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 2044
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2046
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 2050
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1972
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

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 960
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 961
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 956
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 820
    const/4 v2, 0x0

    return v2

    .line 822
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 827
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 953
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 829
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v22, 0x0

    .line 833
    .local v22, "isBeingDragged":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 844
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_0

    .line 830
    .end local v22    # "isBeingDragged":Z
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 832
    :cond_4
    const/16 v22, 0x1

    .restart local v22    # "isBeingDragged":Z
    goto :goto_1

    .line 850
    .end local v22    # "isBeingDragged":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 851
    .local v17, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 852
    const-string/jumbo v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 857
    .local v27, "y":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 858
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v19, v2, v27

    .line 859
    .local v19, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v25, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    .line 860
    .local v26, "xDiff":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v28

    .line 861
    .local v28, "yDiff":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v28

    if-le v0, v2, :cond_6

    move/from16 v0, v28

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 862
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 863
    if-lez v19, :cond_9

    .line 864
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int v19, v19, v2

    .line 870
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 872
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    .line 874
    .local v8, "range":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_7

    .line 875
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 879
    :cond_7
    if-gez v19, :cond_a

    .line 880
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v23

    .line 887
    .local v23, "scrollAmount":F
    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v23, v2

    if-eqz v2, :cond_8

    .line 890
    move/from16 v0, v23

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    div-int/lit8 v10, v2, 0x2

    .line 890
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 891
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    .line 890
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 893
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_EDGE_FADING_DISTANCE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v3

    .line 895
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_VERTICAL_FADING_EDGE_LENGTH:I

    .line 894
    sub-int/2addr v3, v4

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v5

    .line 894
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate(IIII)V

    goto/16 :goto_0

    .line 866
    .end local v8    # "range":I
    .end local v23    # "scrollAmount":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int v19, v19, v2

    goto :goto_2

    .line 882
    .restart local v8    # "range":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v23

    .restart local v23    # "scrollAmount":F
    goto :goto_3

    .line 901
    .end local v8    # "range":I
    .end local v17    # "activePointerIndex":I
    .end local v19    # "deltaY":I
    .end local v23    # "scrollAmount":F
    .end local v25    # "x":I
    .end local v26    # "xDiff":I
    .end local v27    # "y":I
    .end local v28    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 903
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 906
    .local v21, "initialVelocity":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 907
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .line 926
    :cond_b
    :goto_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 909
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 910
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_f

    .line 911
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v18

    .line 912
    .local v18, "currentOverScrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_d

    if-lez v21, :cond_e

    .line 913
    :cond_d
    move/from16 v0, v21

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_4

    .line 915
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_4

    .line 918
    .end local v18    # "currentOverScrollTop":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    .line 918
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto :goto_4

    .line 932
    .end local v21    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 933
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 936
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 941
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 942
    .local v20, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 943
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 944
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 948
    .end local v20    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 949
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 950
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1039
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1040
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1044
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1045
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1047
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1048
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1036
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1044
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1008
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1009
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1010
    .local v0, "currentBottomAmount":F
    int-to-float v5, p1

    add-float v2, v0, v5

    .line 1011
    .local v2, "newBottomAmount":F
    cmpl-float v5, v0, v7

    if-lez v5, :cond_0

    .line 1012
    invoke-virtual {p0, v2, v6, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1017
    :cond_0
    cmpg-float v5, v2, v7

    if-gez v5, :cond_3

    move v4, v2

    .line 1018
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v3, v5, v4

    .line 1020
    .local v3, "newScrollY":F
    cmpg-float v5, v3, v7

    if-gtz v5, :cond_1

    .line 1021
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 1024
    :cond_1
    cmpg-float v5, v3, v7

    if-gez v5, :cond_2

    .line 1025
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    .line 1027
    .local v1, "currentTopPixels":F
    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1030
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1031
    const/4 v4, 0x0

    .line 1033
    .end local v1    # "currentTopPixels":F
    :cond_2
    return v4

    .line 1017
    .end local v3    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 9
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 972
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 973
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 974
    .local v1, "currentTopAmount":F
    int-to-float v7, p1

    sub-float v3, v1, v7

    .line 975
    .local v3, "newTopAmount":F
    cmpl-float v7, v1, v8

    if-lez v7, :cond_0

    .line 976
    invoke-virtual {p0, v3, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 981
    :cond_0
    cmpg-float v7, v3, v8

    if-gez v7, :cond_3

    neg-float v4, v3

    .line 982
    .local v4, "scrollAmount":F
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v7, v7

    add-float v2, v7, v4

    .line 984
    .local v2, "newScrollY":F
    cmpl-float v7, v2, v8

    if-lez v7, :cond_4

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 986
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 987
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_1

    .line 988
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    .line 990
    .local v0, "currentBottomPixels":F
    add-float v5, v0, v2

    int-to-float v7, p2

    sub-float/2addr v5, v7

    invoke-virtual {p0, v5, v6, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 994
    .end local v0    # "currentBottomPixels":F
    :cond_1
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 995
    const/4 v4, 0x0

    .line 997
    :cond_2
    return v4

    .line 981
    .end local v2    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0

    .restart local v2    # "newScrollY":F
    :cond_4
    move v5, v6

    .line 984
    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1062
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1059
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 387
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 385
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 462
    :cond_0
    return-void
.end method

.method private setBottomMargin(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    .line 2824
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2825
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 2826
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2827
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopClipping()V

    .line 2823
    :cond_0
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .prologue
    .line 2076
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 2077
    if-eqz p1, :cond_0

    .line 2078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2079
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2075
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 2137
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 2138
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 2139
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 2140
    if-eqz v0, :cond_0

    .line 2141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 2136
    :cond_0
    return-void

    .line 2137
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method private setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 430
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .prologue
    .line 1191
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1192
    if-eqz p3, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    .line 1190
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1197
    if-eqz p2, :cond_1

    .line 1199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 1201
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1203
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 1232
    if-eqz p2, :cond_0

    .line 1233
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    .line 1231
    :goto_0
    return-void

    .line 1235
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 753
    if-eqz p1, :cond_0

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 751
    :cond_0
    return-void
.end method

.method private setTopClipping()V
    .locals 7

    .prologue
    .line 2793
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    .line 2794
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMaxNotificationCount:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    mul-int v1, v3, v4

    .line 2795
    .local v1, "height":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int v0, v3, v1

    .line 2796
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 2797
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v1, v3, v4

    .line 2799
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2800
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 2792
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    :goto_0
    return-void

    .line 2802
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2803
    .restart local v2    # "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 486
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 487
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 490
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 491
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 492
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 485
    :cond_1
    return-void
.end method

.method private shouldOverScrollFling(I)Z
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1452
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1454
    .local v0, "topOverScroll":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v3, :cond_0

    .line 1455
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 1454
    :cond_1
    :goto_0
    return v1

    .line 1456
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1457
    if-gtz p1, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private springBack()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    .line 1273
    .local v4, "scrollRange":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v5, :cond_2

    const/4 v3, 0x1

    .line 1274
    .local v3, "overScrolledTop":Z
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v5, v4, :cond_3

    const/4 v2, 0x1

    .line 1275
    .local v2, "overScrolledBottom":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1278
    :cond_0
    if-eqz v3, :cond_4

    .line 1279
    const/4 v1, 0x1

    .line 1280
    .local v1, "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v5, v5

    int-to-float v0, v5

    .line 1281
    .local v0, "newAmount":F
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1282
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1288
    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1289
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1290
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1271
    .end local v0    # "newAmount":F
    .end local v1    # "onTop":Z
    :cond_1
    return-void

    .line 1273
    .end local v2    # "overScrolledBottom":Z
    .end local v3    # "overScrolledTop":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "overScrolledTop":Z
    goto :goto_0

    .line 1274
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "overScrolledBottom":Z
    goto :goto_1

    .line 1284
    :cond_4
    const/4 v1, 0x0

    .line 1285
    .restart local v1    # "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v4

    int-to-float v0, v5

    .line 1286
    .restart local v0    # "newAmount":F
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    .prologue
    .line 1800
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1801
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 1802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1805
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 1806
    iget-wide v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 1805
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1811
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 1799
    return-void

    .line 1809
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sourceView"    # Landroid/view/View;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 1554
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1555
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1553
    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setLayoutHeight(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setTopPadding(I)V

    .line 435
    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1746
    return-void

    .line 1747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1752
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1753
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1754
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 1751
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    .line 452
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private updateContentHeight()V
    .locals 7

    .prologue
    .line 1391
    const/4 v2, 0x0

    .line 1392
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1393
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1394
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 1395
    if-eqz v2, :cond_0

    .line 1397
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v5

    .line 1399
    :cond_0
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    move-object v4, v0

    .line 1400
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1401
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 1392
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1402
    :cond_2
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 1403
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1404
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 1408
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 1390
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    .prologue
    .line 1738
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 1739
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1740
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1741
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1742
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1740
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1738
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "running":Z
    goto :goto_0

    .line 1737
    .end local v3    # "running":Z
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private updatePadding(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 338
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->shouldScaleDimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    .line 338
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 337
    return-void

    .line 340
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2164
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 2165
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2166
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2168
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 2169
    .local v0, "endPosition":F
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int/2addr v3, v4

    .line 2170
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 2169
    sub-int v2, v3, v4

    .line 2171
    .local v2, "stackEnd":I
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 2172
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    int-to-float v4, v2

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2173
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2163
    .end local v0    # "endPosition":F
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "stackEnd":I
    :cond_0
    return-void
.end method

.method private updateScrollStateForRemovedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "removedChild"    # Landroid/view/View;

    .prologue
    .line 1678
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 1679
    .local v2, "startingPosition":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int v0, v3, v4

    .line 1680
    .local v0, "childHeight":I
    add-int v1, v2, v0

    .line 1681
    .local v1, "endPosition":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v3, :cond_1

    .line 1684
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v2, v3, :cond_0

    .line 1688
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_0
.end method

.method private updateSpeedBump(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 2257
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SpeedBumpView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 2258
    .local v1, "notGoneBefore":Z
    :goto_0
    if-eq p1, v1, :cond_0

    .line 2259
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2260
    .local v0, "newVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setVisibility(I)V

    .line 2261
    if-eqz p1, :cond_3

    .line 2263
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SpeedBumpView;->setInvisible()V

    .line 2256
    .end local v0    # "newVisibility":I
    :cond_0
    :goto_2
    return-void

    .line 2257
    .end local v1    # "notGoneBefore":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "notGoneBefore":Z
    goto :goto_0

    .line 2259
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "newVisibility":I
    goto :goto_1

    .line 2266
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    goto :goto_2
.end method


# virtual methods
.method public adjustBottomMargin(I)V
    .locals 4
    .param p1, "delta"    # I

    .prologue
    .line 2815
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardShowing:Z

    if-nez v2, :cond_0

    .line 2816
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 2817
    .local v0, "isDismissVisible":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMinBottomMargin:I

    .line 2818
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMaxBottomMargin:I

    .line 2817
    :goto_1
    add-int/2addr v2, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2819
    .local v1, "margin":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBottomMargin(I)V

    .line 2814
    .end local v0    # "isDismissVisible":Z
    .end local v1    # "margin":I
    :cond_0
    return-void

    .line 2816
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isDismissVisible":Z
    goto :goto_0

    .line 2818
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMinBottomMargin:I

    goto :goto_1
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 742
    const v2, 0x7f0f025f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 743
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 698
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 699
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    .line 698
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 2281
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 1786
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1787
    .local v0, "currentIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1788
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1789
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 1790
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 1791
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1792
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1793
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1785
    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2919
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    .line 2920
    .local v0, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v6, 0x0

    .line 2921
    .local v6, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 2922
    .local v1, "height":I
    if-eqz v0, :cond_0

    .line 2924
    move-object v6, v0

    .line 2925
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v1

    .line 2927
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    if-eqz v6, :cond_1

    .line 2928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v4, v9

    .line 2929
    .local v4, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v5, v9

    .line 2931
    .local v5, "ry":I
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 2932
    .local v2, "location":[I
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2933
    const/4 v9, 0x0

    aget v7, v2, v9

    .line 2934
    .local v7, "x":I
    const/4 v9, 0x1

    aget v8, v2, v9

    .line 2935
    .local v8, "y":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    add-int v10, v8, v1

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2936
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2939
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 2918
    .end local v2    # "location":[I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "rx":I
    .end local v5    # "ry":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1079
    .local v3, "oldX":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1080
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 1081
    .local v11, "x":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 1083
    .local v12, "y":I
    if-ne v3, v11, :cond_0

    if-eq v4, v12, :cond_2

    .line 1084
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v6

    .line 1085
    .local v6, "range":I
    if-gez v12, :cond_4

    if-ltz v4, :cond_4

    .line 1086
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    .line 1087
    .local v10, "currVelocity":F
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-ltz v0, :cond_1

    .line 1088
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1092
    .end local v10    # "currVelocity":F
    :cond_1
    sub-int v1, v11, v3

    sub-int v2, v12, v4

    .line 1093
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v8, v0

    move-object v0, p0

    move v7, v5

    move v9, v5

    .line 1092
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 1094
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1098
    .end local v6    # "range":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1075
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_3
    return-void

    .line 1085
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :cond_4
    if-le v12, v6, :cond_1

    if-gt v4, v6, :cond_1

    goto :goto_0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 768
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 2855
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2856
    .local v1, "pointerIndex":I
    if-gez v1, :cond_0

    .line 2857
    const/4 v1, 0x0

    .line 2858
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 2860
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2861
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 2862
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 2863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    .line 2864
    .local v0, "notCancelOrUp":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    if-eqz v0, :cond_3

    .line 2865
    return v6

    .line 2863
    .end local v0    # "notCancelOrUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "notCancelOrUp":Z
    goto :goto_0

    .line 2862
    .end local v0    # "notCancelOrUp":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "notCancelOrUp":Z
    goto :goto_0

    .line 2867
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 719
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 720
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 717
    :cond_0
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .prologue
    .line 1769
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    if-eqz p2, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1775
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 2895
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollAmount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    int-to-float v0, v0

    .line 2897
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATIONS_EDGE_FADING_DISTANCE:F

    .line 2895
    div-float/2addr v0, v1

    .line 2894
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2896
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    .prologue
    .line 2473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 2474
    .local v3, "count":I
    const/4 v4, 0x0

    .line 2475
    .local v4, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2476
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2477
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 2475
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2480
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 2481
    .local v0, "bottom":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 2482
    move v4, v0

    goto :goto_1

    .line 2486
    .end local v0    # "bottom":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    .line 2487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 674
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 675
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    .line 676
    .local v5, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 677
    instance-of v7, v5, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 676
    if-nez v7, :cond_0

    .line 678
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v5, v7, :cond_1

    .line 674
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 682
    .local v2, "childTop":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v7

    int-to-float v7, v7

    add-float v6, v2, v7

    .line 683
    .local v6, "top":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float v0, v2, v7

    .line 688
    .local v0, "bottom":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    .line 690
    .local v4, "right":I
    cmpl-float v7, p2, v6

    if-ltz v7, :cond_0

    cmpg-float v7, p2, v0

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_0

    int-to-float v7, v4

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_0

    .line 691
    return-object v5

    .line 694
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "right":I
    .end local v5    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "top":F
    :cond_2
    const/4 v7, 0x0

    return-object v7
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 738
    return-object p1
.end method

.method public getChildLocation(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v0

    .line 421
    .local v0, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    return v1

    .line 424
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-eqz v1, :cond_1

    .line 425
    const/16 v1, 0x40

    return v1

    .line 427
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    return v1
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 638
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 639
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    .line 641
    .local v6, "localTouchY":F
    const/4 v3, 0x0

    .line 642
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 645
    .local v7, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 646
    .local v4, "count":I
    const/4 v1, 0x0

    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 647
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 648
    .local v8, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 649
    instance-of v10, v8, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 648
    if-nez v10, :cond_0

    .line 650
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v8, v10, :cond_1

    .line 646
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 654
    .local v2, "childTop":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    .line 655
    .local v9, "top":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v2, v10

    .line 657
    .local v0, "bottom":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 658
    .local v5, "dist":F
    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    .line 659
    move-object v3, v8

    .line 660
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    move v7, v5

    goto :goto_1

    .line 663
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "dist":F
    .end local v8    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v9    # "top":F
    :cond_2
    return-object v3
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1228
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getEmptyBottomMargin()I
    .locals 3

    .prologue
    .line 2111
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int v0, v1, v2

    .line 2112
    .local v0, "emptyMargin":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->needsHeightAdaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2113
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int/2addr v0, v1

    .line 2117
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2115
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEmptyShadeView()Lcom/android/systemui/statusbar/EmptyShadeView;
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .prologue
    .line 2107
    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .prologue
    .line 2290
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1348
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1349
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1350
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1351
    return-object v0

    .line 1348
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1354
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getMinStackHeight()I
    .locals 2

    .prologue
    .line 1500
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 1361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1362
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1363
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1364
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1365
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v4, :cond_2

    .line 1366
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1367
    check-cast v0, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1363
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1370
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1375
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return v2
.end method

.method public getNotificationTopPadding()I
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    return v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .prologue
    .line 2297
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPeekHeight()I
    .locals 2

    .prologue
    .line 1508
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    .line 1509
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    .line 1508
    add-int/2addr v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 2887
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 2881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPaddingOffsetRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public goToFullShade(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 2272
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 2273
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 2275
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 2276
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 2277
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2271
    return-void
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1759
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v2, :cond_1

    .line 1760
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1759
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewNotGone()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2449
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDismissViewVisible()Z
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 2072
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2876
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 2102
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2097
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 620
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 619
    return-void
.end method

.method public onChildAnimationBeginning()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2193
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 2192
    return-void

    .line 2193
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChildAnimationFinished()V
    .locals 0

    .prologue
    .line 2189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2188
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v1, :cond_0

    .line 577
    return-void

    .line 580
    :cond_0
    const v1, 0x7f0f025f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 584
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 575
    return-void
.end method

.method public onChildDismissedManually(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2842
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 2843
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 2844
    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    if-eqz v1, :cond_0

    .line 2845
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2846
    .local v0, "isSysApp":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearSingleNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 2841
    .end local v0    # "isSysApp":Z
    .end local v1    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 595
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 762
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 764
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 765
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 759
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 629
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .prologue
    .line 2121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 2120
    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2126
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2127
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStopped()V

    .line 2128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 2129
    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 2125
    :cond_0
    return-void
.end method

.method public onGoToKeyguard()V
    .locals 1

    .prologue
    .line 2504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 2506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2503
    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2148
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2150
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2146
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1560
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    if-eqz v4, :cond_1

    .line 1561
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1562
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1563
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 1564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1565
    return v3

    .line 1567
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1569
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, "expandWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-eqz v4, :cond_6

    .line 1575
    .end local v0    # "expandWantsIt":Z
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 1576
    .local v1, "scrollWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v4, :cond_7

    .line 1579
    .end local v1    # "scrollWantsIt":Z
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 1580
    .local v2, "swipeWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    .line 1581
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v4, :cond_8

    .line 1586
    .end local v2    # "swipeWantsIt":Z
    :cond_4
    :goto_2
    const-string/jumbo v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onInterceptTouchEvent swipeWantsIt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1587
    const-string/jumbo v6, ", scrollWantsIt = "

    .line 1586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1587
    const-string/jumbo v6, ", expandWantsIt = "

    .line 1586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_5
    return v3

    .line 1572
    .restart local v0    # "expandWantsIt":Z
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1573
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "expandWantsIt":Z
    goto :goto_0

    .line 1577
    .end local v0    # "expandWantsIt":Z
    .restart local v1    # "scrollWantsIt":Z
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "scrollWantsIt":Z
    goto :goto_1

    .line 1582
    .end local v1    # "scrollWantsIt":Z
    .restart local v2    # "swipeWantsIt":Z
    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v4, :cond_4

    .line 1583
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_4

    .line 1584
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .local v2, "swipeWantsIt":Z
    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 366
    .local v0, "centerX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 367
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 369
    .local v4, "width":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 370
    .local v2, "height":F
    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    .line 372
    div-float v6, v4, v9

    add-float/2addr v6, v0

    float-to-int v6, v6

    .line 373
    float-to-int v7, v2

    .line 371
    const/4 v8, 0x0

    .line 370
    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":F
    .end local v4    # "width":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize()V

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopClipping()V

    .line 362
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 356
    .local v1, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 357
    .local v2, "size":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 358
    .local v0, "childMeasureSpec":I
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChildren(II)V

    .line 353
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1247
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1248
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1249
    .local v0, "oldX":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1250
    .local v1, "oldY":I
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1251
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1252
    if-eqz p4, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    .line 1245
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :goto_0
    return-void

    .line 1255
    .restart local v0    # "oldX":I
    .restart local v1    # "oldY":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidateParentIfNeeded()V

    .line 1257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1258
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    .line 1259
    .local v2, "overScrollTop":F
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v3, :cond_1

    .line 1260
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1262
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1266
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "overScrollTop":F
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customScrollTo(I)V

    .line 1267
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollY:I

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2160
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 2155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v5, :cond_2

    const/4 v2, 0x1

    .line 777
    .local v2, "isCancelOrUp":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    if-eqz v6, :cond_3

    .line 778
    if-eqz v2, :cond_0

    .line 779
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 781
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 782
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 775
    .end local v2    # "isCancelOrUp":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "isCancelOrUp":Z
    goto :goto_0

    .line 776
    .end local v2    # "isCancelOrUp":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isCancelOrUp":Z
    goto :goto_0

    .line 785
    :cond_3
    const/4 v0, 0x0

    .line 786
    .local v0, "expandWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-eqz v6, :cond_8

    .line 797
    .end local v0    # "expandWantsIt":Z
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 798
    .local v3, "scrollerWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v6, :cond_a

    .line 801
    .end local v3    # "scrollerWantsIt":Z
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 802
    .local v1, "horizontalSwipeWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_6

    .line 803
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v6, :cond_b

    .line 808
    .end local v1    # "horizontalSwipeWantsIt":Z
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_7
    return v5

    .line 786
    .restart local v0    # "expandWantsIt":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 787
    if-eqz v2, :cond_9

    .line 788
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v6, v8}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 790
    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 791
    .local v4, "wasExpandingBefore":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 792
    .local v0, "expandWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 793
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v6, :cond_4

    .line 794
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 798
    .end local v0    # "expandWantsIt":Z
    .end local v4    # "wasExpandingBefore":Z
    .restart local v3    # "scrollerWantsIt":Z
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v6, :cond_5

    .line 799
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "scrollerWantsIt":Z
    goto :goto_2

    .line 804
    .end local v3    # "scrollerWantsIt":Z
    .restart local v1    # "horizontalSwipeWantsIt":Z
    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v6, :cond_6

    .line 805
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v6, :cond_6

    .line 806
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "horizontalSwipeWantsIt":Z
    goto :goto_3
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1719
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    move-object v0, p1

    .line 1721
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 1723
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 1724
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    .line 1718
    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1627
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1628
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    .line 1629
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v1, :cond_0

    .line 1631
    return-void

    :cond_0
    move-object v1, p1

    .line 1633
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1634
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 1635
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Landroid/view/View;)V

    .line 1636
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    .line 1637
    .local v0, "animationGenerated":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1644
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1647
    invoke-virtual {p1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1626
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2085
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2086
    if-nez p1, :cond_0

    .line 2087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2084
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1109
    add-int v2, p4, p2

    .line 1111
    .local v2, "newScrollY":I
    neg-int v3, p8

    .line 1112
    .local v3, "top":I
    add-int v0, p8, p6

    .line 1114
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 1115
    .local v1, "clampedY":Z
    if-le v2, v0, :cond_2

    .line 1116
    move v2, v0

    .line 1117
    const/4 v1, 0x1

    .line 1123
    :cond_0
    :goto_0
    if-nez p6, :cond_1

    if-eqz v1, :cond_1

    .line 1124
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 1128
    :cond_1
    invoke-virtual {p0, v4, v2, v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrolled(IIZZ)V

    .line 1129
    return v1

    .line 1118
    :cond_2
    if-ge v2, v3, :cond_0

    .line 1119
    move v2, v3

    .line 1120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 2091
    return-void
.end method

.method public scrollable()Z
    .locals 3

    .prologue
    .line 2871
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMaxNotificationCount:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v1, 0x1

    .line 2230
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 2231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2232
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 2233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2235
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2229
    return-void
.end method

.method public setAndAddEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;Z)V
    .locals 1
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;
    .param p2, "add"    # Z

    .prologue
    .line 2912
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 2913
    if-eqz p2, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2911
    :cond_0
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .param p1, "animationsEnabled"    # Z

    .prologue
    .line 1733
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 1734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 1732
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 409
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    .line 2309
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 2310
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2311
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 2312
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 2313
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2315
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2308
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 2
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2200
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 2201
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 2202
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 2203
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2204
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 2205
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2207
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2199
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 2444
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 2445
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DismissView;->setDismissAllInProgress(Z)V

    .line 2443
    return-void
.end method

.method public setDismissButton(Landroid/view/View;)V
    .locals 0
    .param p1, "dismissBtn"    # Landroid/view/View;

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissBtn:Landroid/view/View;

    .line 2356
    return-void
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 0
    .param p1, "dismissView"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 2349
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 2348
    return-void
.end method

.method public setDividingLine(Landroid/view/View;)V
    .locals 0
    .param p1, "dividingLine"    # Landroid/view/View;

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLine:Landroid/view/View;

    .line 2966
    return-void
.end method

.method public setDividingLineVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2971
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLineVisible:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLine:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 2972
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLineVisible:Z

    .line 2973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2974
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLineVisible:Z

    if-eqz v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2975
    const-wide/16 v2, 0xf0

    .line 2974
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2970
    :goto_0
    return-void

    .line 2978
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLineVisible:Z

    .line 2979
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDividingLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 1
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 2361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAndAddEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;Z)V

    .line 2360
    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 729
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2211
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    .line 2212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2213
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2214
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2215
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 2213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2217
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 2218
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 2219
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 2220
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2222
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2210
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setInterceptDelegateEnabled(Z)V
    .locals 0
    .param p1, "interceptDelegateEnabled"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    .line 571
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .prologue
    .line 2286
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 2285
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 2808
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardShowing:Z

    .line 2809
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2810
    .local v0, "isDismissVisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mKeyguardMaxBottomMargin:I

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBottomMargin(I)V

    .line 2807
    return-void

    .line 2809
    .end local v0    # "isDismissVisible":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isDismissVisible":Z
    goto :goto_0

    .line 2811
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMaxBottomMargin:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadeMinBottomMargin:I

    goto :goto_1
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 564
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 562
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 2184
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 2180
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1155
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1154
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .prologue
    .line 1168
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1167
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .prologue
    .line 1183
    if-eqz p4, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1186
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1182
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1143
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1142
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1219
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2500
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2499
    return-void
.end method

.method public setScrollView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/ViewGroup;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    .line 567
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 725
    return-void
.end method

.method public setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V
    .locals 0
    .param p1, "speedBumpView"    # Lcom/android/systemui/statusbar/SpeedBumpView;

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 2249
    return-void
.end method

.method public setStackHeight(F)V
    .locals 9
    .param p1, "height"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 505
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    .line 506
    cmpl-float v6, p1, v7

    if-lez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 507
    float-to-int v1, p1

    .line 508
    .local v1, "newStackHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 510
    .local v0, "minStackHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 515
    :cond_1
    move v3, v1

    .line 533
    .local v3, "stackHeight":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v3, v5, :cond_2

    .line 534
    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 504
    :cond_2
    return-void

    .line 520
    .end local v3    # "stackHeight":I
    :cond_3
    sub-int v4, v1, v0

    .line 523
    .local v4, "translationY":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    .line 524
    int-to-float v6, v0

    .line 523
    div-float v2, v5, v6

    .line 525
    .local v2, "partiallyThere":F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 526
    int-to-float v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    .line 527
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    .line 526
    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 531
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    float-to-int v3, v5

    .restart local v3    # "stackHeight":I
    goto :goto_0
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 703
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 704
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 702
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 709
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 710
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 708
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x1

    return v0
.end method

.method public updateDismissView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2403
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    .line 2404
    .local v2, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 2405
    .local v1, "newVisibility":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 2406
    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    .line 2407
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2408
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->cancelAnimation()V

    .line 2413
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissBtn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 2416
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2418
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2402
    :cond_0
    :goto_3
    return-void

    .line 2403
    .end local v1    # "newVisibility":I
    .end local v2    # "oldVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    .restart local v2    # "oldVisibility":I
    goto :goto_0

    .line 2404
    :cond_2
    const/16 v1, 0x8

    .restart local v1    # "newVisibility":I
    goto :goto_1

    .line 2410
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    goto :goto_2

    .line 2420
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2432
    .local v0, "dimissHideFinishRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->isButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_5

    .line 2433
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2434
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2436
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2437
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    goto :goto_3
.end method

.method public updateEmptyShadeView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2365
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    .line 2366
    .local v1, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2367
    .local v0, "newVisibility":I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 2368
    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    .line 2369
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2370
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->cancelAnimation()V

    .line 2374
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 2375
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2377
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2378
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_0

    .line 2379
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    .line 2364
    :cond_0
    :goto_3
    return-void

    .line 2365
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    .restart local v1    # "oldVisibility":I
    goto :goto_0

    .line 2366
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "newVisibility":I
    goto :goto_1

    .line 2372
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    goto :goto_2

    .line 2382
    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2391
    .local v2, "onFinishedRunnable":Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_5

    .line 2392
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2393
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2395
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 2396
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "qsMinHeight"    # I

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateIsSmallScreen(I)V

    .line 2495
    return-void
.end method

.method public updateSpeedBumpIndex(I)V
    .locals 3
    .param p1, "newIndex"    # I

    .prologue
    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 397
    .local v0, "currentIndex":I
    if-lez p1, :cond_2

    const/4 v1, 0x1

    .line 398
    .local v1, "validIndex":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_0

    .line 399
    const/4 v1, 0x0

    .line 400
    const/4 p1, -0x1

    .line 402
    :cond_0
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 405
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 393
    return-void

    .line 397
    .end local v1    # "validIndex":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "validIndex":Z
    goto :goto_0
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public updateTopPadding(FIZZ)V
    .locals 5
    .param p1, "qsHeight"    # F
    .param p2, "scrollY"    # I
    .param p3, "animate"    # Z
    .param p4, "ignoreIntrinsicPadding"    # Z

    .prologue
    .line 1473
    int-to-float v3, p2

    sub-float v3, p1, v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 1474
    .local v2, "start":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v2

    .line 1475
    .local v1, "stackHeight":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 1477
    .local v0, "minStackHeight":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 1487
    if-eqz p4, :cond_0

    float-to-int v3, v2

    :goto_0
    invoke-direct {p0, v3, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 1489
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 1491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopClipping()V

    .line 1472
    return-void

    .line 1487
    :cond_0
    float-to-int v3, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v3

    goto :goto_0
.end method
