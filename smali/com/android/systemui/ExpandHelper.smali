.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$Callback;,
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$1;
    }
.end annotation


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPopDuration:I

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWatchingForPull:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ExpandHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 73
    const/4 v1, 0x4

    .line 72
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 74
    const/16 v1, 0xd

    .line 72
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ExpandHelper;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 105
    iput-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 121
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 120
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 172
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 173
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 174
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 175
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 177
    new-instance v2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 178
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 179
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string/jumbo v3, "height"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 180
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    .line 181
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 183
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 184
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 185
    const v3, 0x7f10001e

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 186
    .local v1, "scaleFactor":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 188
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 189
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 171
    return-void
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 210
    move v0, p1

    .line 211
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    :goto_0
    int-to-float v0, v1

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 213
    :cond_1
    return v0

    .line 211
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 581
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 220
    .local v0, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 221
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 222
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 223
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 227
    .end local v0    # "location":[I
    .local v1, "v":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_0
    return-object v1

    .line 225
    .end local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .restart local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0
.end method

.method private finishExpanding(ZF)V
    .locals 10
    .param p1, "force"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 536
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v5, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 541
    .local v0, "currentHeight":F
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    .line 542
    .local v3, "targetHeight":F
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    .line 543
    .local v1, "h":F
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    const/4 v4, 0x1

    .line 544
    .local v4, "wasClosed":Z
    :goto_0
    if-eqz v4, :cond_5

    .line 545
    if-nez p1, :cond_1

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    :cond_1
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 549
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 552
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v5, v3, v5

    if-nez v5, :cond_8

    move v5, v6

    :goto_2
    invoke-interface {v8, v9, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 553
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v5, v7}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 554
    cmpl-float v5, v3, v0

    if-eqz v5, :cond_9

    .line 555
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v6, v6, [F

    aput v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 556
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 557
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 558
    .local v2, "scaledView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v6, v0, v3, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 566
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 571
    .end local v2    # "scaledView":Landroid/view/View;
    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 572
    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 535
    return-void

    .line 543
    .end local v4    # "wasClosed":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "wasClosed":Z
    goto :goto_0

    .line 545
    :cond_4
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    goto :goto_1

    .line 547
    :cond_5
    if-nez p1, :cond_6

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    :cond_6
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_1

    :cond_8
    move v5, v7

    .line 552
    goto :goto_2

    .line 568
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_3
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return v0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "underFocus"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 235
    return v4

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 238
    new-array v1, v6, [I

    .line 239
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 240
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 241
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 244
    .end local v1    # "location":[I
    :cond_1
    new-array v1, v6, [I

    .line 245
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 247
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 250
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    :goto_1
    and-int v0, v2, v3

    .line 251
    :goto_2
    return v0

    :cond_2
    move v2, v4

    .line 250
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .local v0, "inside":Z
    goto :goto_2
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 375
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 371
    :cond_1
    return-void
.end method

.method private startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    const/4 v2, 0x1

    .line 509
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne p1, v0, :cond_1

    .line 514
    return v2

    .line 516
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 517
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, v2}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 522
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 523
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 532
    :goto_0
    return v2

    .line 528
    :cond_2
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 351
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 354
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 358
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 361
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 362
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 195
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 196
    .local v4, "span":F
    mul-float/2addr v4, v7

    .line 197
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 198
    .local v0, "drag":F
    mul-float/2addr v0, v7

    .line 199
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v0, v6

    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 201
    .local v3, "pull":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 202
    .local v1, "hand":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 203
    .local v5, "target":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 204
    .local v2, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 206
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 192
    return-void

    .end local v1    # "hand":F
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v5    # "target":F
    :cond_0
    move v6, v7

    .line 199
    goto :goto_0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/systemui/ExpandHelper;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 611
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 589
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 593
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 588
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    return v5

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 279
    .local v0, "action":I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    float-to-int v1, v6

    .line 281
    .local v1, "x":I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    float-to-int v3, v6

    .line 283
    .local v3, "y":I
    int-to-float v6, v3

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 284
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 285
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 286
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 289
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v6, :cond_1

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 291
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 292
    return v8

    .line 294
    :cond_1
    if-ne v0, v7, :cond_2

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 296
    return v8

    .line 298
    :cond_2
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 343
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 344
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 345
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v5

    .line 300
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    .line 301
    .local v2, "xspan":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v8, :cond_4

    .line 304
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v6, :cond_5

    .line 310
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v6, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v4, v6, v7

    .line 312
    .local v4, "yDiff":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 314
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 315
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 316
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 319
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_0

    .line 307
    .end local v4    # "yDiff":F
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 308
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    goto :goto_1

    .line 328
    .end local v2    # "xspan":F
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v6, :cond_6

    .line 329
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v6

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    .line 328
    if-eqz v6, :cond_6

    .line 330
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v5

    .line 328
    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 331
    int-to-float v5, v1

    int-to-float v6, v3

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto/16 :goto_0

    .line 339
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 403
    return v9

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 413
    .local v0, "action":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v8

    float-to-int v5, v8

    .line 415
    .local v5, "x":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    float-to-int v6, v8

    .line 417
    .local v6, "y":I
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v8, :cond_1

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 419
    return v9

    .line 421
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 500
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 501
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 502
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_3

    move v9, v10

    :cond_3
    return v9

    .line 423
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v8, :cond_4

    .line 424
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v8

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-direct {p0, v8, v11, v12}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v8

    .line 423
    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 425
    int-to-float v8, v5

    int-to-float v11, v6

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_0

    :cond_4
    move v8, v9

    .line 423
    goto :goto_1

    .line 430
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v8, :cond_5

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v7, v8, v11

    .line 432
    .local v7, "yDiff":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_5

    .line 434
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 435
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 444
    .end local v7    # "yDiff":F
    :cond_5
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v8, v11

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float v4, v8, v11

    .line 446
    .local v4, "rawHeight":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v3

    .line 447
    .local v3, "newHeight":F
    const/4 v2, 0x0

    .line 448
    .local v2, "isFinished":Z
    const/4 v1, 0x0

    .line 449
    .local v1, "expanded":Z
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 450
    const/4 v2, 0x1

    .line 451
    const/4 v1, 0x1

    .line 453
    :cond_6
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_7

    .line 454
    const/4 v2, 0x1

    .line 455
    const/4 v1, 0x0

    .line 458
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v8, :cond_8

    .line 459
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v12, v8

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    .line 460
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 463
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v8, v3}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 465
    if-eqz v2, :cond_a

    .line 466
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v8, v10, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 467
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 468
    return v9

    .line 436
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    .restart local v7    # "yDiff":F
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 439
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_2

    .line 470
    .end local v7    # "yDiff":F
    .restart local v1    # "expanded":Z
    .restart local v2    # "isFinished":Z
    .restart local v3    # "newHeight":F
    .restart local v4    # "rawHeight":F
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v8, v10}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 472
    return v10

    .line 475
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    :cond_b
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 480
    return v10

    .line 489
    :pswitch_3
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 490
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_0

    .line 496
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v8

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onlyObserveMovements(Z)V
    .locals 0
    .param p1, "onlyMovements"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 604
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 388
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .param p1, "eventSource"    # Landroid/view/View;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 254
    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 262
    return-void
.end method
