.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$1;,
        Lcom/android/systemui/statusbar/phone/PanelView$2;,
        Lcom/android/systemui/statusbar/phone/PanelView$3;,
        Lcom/android/systemui/statusbar/phone/PanelView$4;,
        Lcom/android/systemui/statusbar/phone/PanelView$5;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field protected static mIsSlideDown:Z

.field protected static mIsSlideUp:Z

.field private static sDownInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

.field private static sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sUpInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;

.field public static shouldLaunchCamera:Z


# instance fields
.field protected DG_DISTANCE_EXPANDS:F

.field protected DG_DISTANCE_UNLOCK:F

.field protected DG_FAST_DISTANCE_EXPANDS:F

.field protected PANEL_FLING_BACK_MIN_DURATION:J

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field protected mCameraAnimationRunnable:Ljava/lang/Runnable;

.field protected mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

.field protected mCameraAnimationRunning:Z

.field protected mCameraShowing:Z

.field protected mCameraTouching:Z

.field private mCancelFlingWhenTouch:Z

.field private mClosing:Z

.field private mCollapseAfterPeek:Z

.field private mDownTime:J

.field private mDozingOnDown:Z

.field private mEdgeTapAreaWidth:I

.field protected mEnablePullDownOnKeyguard:Z

.field protected mEnablePullDownOnKeyguardFromStatusBarOnly:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field private mExpanding:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field protected mFullyExpandedOnShade:Z

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mHintDistanceLongTouch:F

.field private mHintDistanceRebound:F

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInstantExpanding:Z

.field private mIntialPanelHeight:F

.field protected mIsFullyCollapsedOnKeyguardShade:Z

.field private mJustInstantCollapsed:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

.field protected mLastMaxPanelHeight:F

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLongTouch:Z

.field private mNeedRebound:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekPending:Z

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPeekTouching:Z

.field private final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mShouldStartPhase2:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mStatusBarState:I

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchOnStatusBarInKeyguardShade:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;

.field protected mWaitingForFling:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimationPhase1(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x3ee66666    # 0.45f

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    .line 1278
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1279
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1280
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sUpInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1281
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3f3ae148    # 0.73f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1282
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .line 1283
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 122
    const/high16 v3, 0x44160000    # 600.0f

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    .line 123
    const/high16 v3, 0x43c80000    # 400.0f

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    .line 124
    const/high16 v3, 0x43960000    # 300.0f

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    .line 125
    const-wide/16 v4, 0xc8

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    .line 126
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullyExpandedOnShade:Z

    .line 128
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1049
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1455
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 1527
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLastMaxPanelHeight:F

    .line 1534
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    .line 1627
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraShowing:Z

    .line 1629
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 1630
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnable:Ljava/lang/Runnable;

    .line 1638
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    .line 204
    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 206
    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 205
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 208
    const v3, 0x10c000e

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 207
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 209
    new-instance v3, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b02a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    .line 213
    const v3, 0x7f0b02a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    .line 214
    const v3, 0x7f0b02a9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    .line 215
    const v3, 0x7f100021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 218
    const-string/jumbo v4, "pull_down_on_keyguard_from_statusbar_only"

    .line 216
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    .line 202
    return-void

    :cond_0
    move v1, v2

    .line 216
    goto :goto_0
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1176
    return-void
.end method

.method private cancelHeightAnimator()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateBlurAlphaIn()V

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 667
    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "targetHeight"    # F

    .prologue
    .line 1382
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1383
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1389
    return-object v0
.end method

.method private endClosing()V
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 677
    :cond_0
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 519
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 518
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "factor":F
    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 684
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFullyExpandedOnShade()Z
    .locals 2

    .prologue
    .line 1746
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyExpandedOnShadeChanged()V
    .locals 4

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpandedOnShade()Z

    move-result v0

    .line 1751
    .local v0, "fullyExpandedOnShade":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullyExpandedOnShade:Z

    if-eq v1, v0, :cond_0

    .line 1752
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullyExpandedOnShade:Z

    .line 1753
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyExpandedOnShadeChanged fullyExpandedOnShade = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    if-eqz v0, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    .line 1758
    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetExpendPanelByTouchKeyguard(Landroid/content/Context;)V

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotiPanelFullOpen(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private notifyExpandingFinished()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 151
    :cond_0
    return-void
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 144
    :cond_0
    return-void
.end method

.method private runPeekAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "expandedHeight"

    new-array v1, v4, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    const-wide/16 v2, 0xfa

    .line 172
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 199
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 166
    return-void
.end method

.method private shouldFlingExpands(FF)Z
    .locals 6
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1693
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldFlingExpands  vel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", vectorVel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1694
    const-string/jumbo v4, ", mInitialTouchY = "

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1694
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1695
    const-string/jumbo v4, "mExpandedHeight = "

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1695
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1696
    const-string/jumbo v4, ", mIntialPanelHeight = "

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1696
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1697
    const-string/jumbo v4, ", getMaxPanelHeight() = "

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    .line 1693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1709
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 1711
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 1712
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_6

    .line 1711
    :cond_0
    :goto_0
    return v0

    .line 1700
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 1702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_1
    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    :goto_2
    return v0

    .line 1703
    :cond_2
    const/high16 v2, -0x41000000    # -0.5f

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1702
    goto :goto_2

    .line 1705
    :cond_4
    cmpl-float v2, p1, v5

    if-lez v2, :cond_5

    :goto_3
    return v0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 1714
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1715
    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1716
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1719
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    .line 1720
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_a

    .line 1719
    :cond_9
    :goto_4
    return v0

    .line 1722
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_9

    move v0, v1

    goto :goto_4

    .line 1723
    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1724
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_9

    move v0, v1

    goto :goto_4

    .line 1728
    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    .line 1730
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 1731
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    .line 1730
    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_d

    .line 1732
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_e

    .line 1730
    :cond_d
    :goto_5
    return v0

    :cond_e
    move v0, v1

    .line 1732
    goto :goto_5

    .line 1735
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 1736
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    .line 1735
    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 1737
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_11

    .line 1735
    :cond_10
    :goto_6
    return v0

    :cond_11
    move v0, v1

    .line 1737
    goto :goto_6
.end method

.method private startCameraHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    .line 1289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1290
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceLongTouch:F

    :goto_0
    sub-float v3, v6, v4

    .line 1296
    .local v3, "target":F
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1297
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_5

    const/16 v1, 0xd9

    .line 1298
    .local v1, "duration":I
    :goto_2
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1299
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1301
    .local v2, "interpolator":Landroid/animation/TimeInterpolator;
    :goto_3
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1302
    new-instance v4, Lcom/android/systemui/statusbar/phone/PanelView$14;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1328
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1329
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1287
    return-void

    .line 1291
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "duration":I
    .end local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v3    # "target":F
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceRebound:F

    goto :goto_0

    .line 1293
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v5, v4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceLongTouch:F

    :goto_4
    sub-float v4, v5, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .restart local v3    # "target":F
    goto :goto_1

    .line 1294
    .end local v3    # "target":F
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    goto :goto_4

    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceRebound:F

    goto :goto_4

    .line 1297
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v3    # "target":F
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_6

    const/16 v1, 0xb7

    .restart local v1    # "duration":I
    goto :goto_2

    .end local v1    # "duration":I
    :cond_6
    const/16 v1, 0x50

    .restart local v1    # "duration":I
    goto :goto_2

    .line 1300
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sUpInterpolator:Landroid/view/animation/PathInterpolator;

    .restart local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_3

    .end local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .restart local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_3
.end method

.method private startCameraHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1337
    const/4 v3, 0x0

    .line 1341
    .local v3, "target":F
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1342
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_1

    const/16 v1, 0xd9

    .line 1343
    .local v1, "duration":I
    :goto_1
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1344
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    if-eqz v4, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1346
    .local v2, "interpolator":Landroid/animation/TimeInterpolator;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1347
    new-instance v4, Lcom/android/systemui/statusbar/phone/PanelView$15;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1376
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1377
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1334
    return-void

    .line 1339
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "duration":I
    .end local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v3    # "target":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v3, v4

    .restart local v3    # "target":F
    goto :goto_0

    .line 1342
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_2

    const/16 v1, 0xb7

    .restart local v1    # "duration":I
    goto :goto_1

    .end local v1    # "duration":I
    :cond_2
    const/16 v1, 0x50

    .restart local v1    # "duration":I
    goto :goto_1

    .line 1345
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNeedRebound:Z

    if-eqz v4, :cond_4

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sDownInterpolator:Landroid/view/animation/PathInterpolator;

    .restart local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_2

    .end local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .restart local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_2
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0xfa

    .line 1213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1218
    .local v1, "target":F
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1219
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1220
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1221
    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$11;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1240
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1242
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v3, v3

    .line 1241
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1244
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 1241
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1245
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1241
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1211
    return-void

    .line 1216
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "target":F
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v1, v2

    .restart local v1    # "target":F
    goto :goto_0
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1264
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1266
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1273
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1274
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1261
    return-void

    .line 1263
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 236
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 237
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    .line 239
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 232
    return-void
.end method


# virtual methods
.method public cancelPeek()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 1093
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1084
    return-void
.end method

.method public collapse(Z)V
    .locals 4
    .param p1, "delayed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1028
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1029
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 1030
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    .line 1038
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1039
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 1040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1041
    if-eqz p1, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1044
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0
.end method

.method public collapseThenDismissKeyguardOnKeyguardShade(Z)V
    .locals 2
    .param p1, "delayed"    # Z

    .prologue
    .line 1541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "not in keyguard-shade mode, invalid operation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void

    .line 1546
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1540
    :cond_1
    return-void
.end method

.method public expand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1058
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateBlurAlphaIn()V

    .line 1071
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1077
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLastMaxPanelHeight:F

    .line 1056
    :cond_0
    return-void
.end method

.method protected fling(FZ)V
    .locals 12
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 729
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->shouldLaunchCamera:Z

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 741
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_5

    .line 742
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v3, 0x0

    .line 754
    .local v3, "target":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 755
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a

    .line 756
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x0

    .line 757
    .local v7, "clearAllExpandHack":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v3, v2

    .line 760
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    sput-boolean v10, Lcom/android/systemui/statusbar/phone/PanelView;->shouldLaunchCamera:Z

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getScreenHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v3, v2

    .line 764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onCameraTranslateStart()V

    .line 766
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_b

    if-eqz p2, :cond_b

    .line 767
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 768
    return-void

    .line 742
    .end local v3    # "target":F
    .end local v7    # "clearAllExpandHack":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v3, v2

    .restart local v3    # "target":F
    goto :goto_0

    .line 744
    .end local v3    # "target":F
    :cond_5
    if-eqz p2, :cond_6

    const/4 v3, 0x0

    .restart local v3    # "target":F
    goto :goto_0

    .end local v3    # "target":F
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v3, v2

    .restart local v3    # "target":F
    goto :goto_0

    .line 747
    .end local v3    # "target":F
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v3, v2

    .restart local v3    # "target":F
    goto :goto_0

    .end local v3    # "target":F
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "target":F
    goto :goto_0

    .line 756
    :cond_9
    const/4 v7, 0x1

    .restart local v7    # "clearAllExpandHack":Z
    goto :goto_1

    .line 754
    .end local v7    # "clearAllExpandHack":Z
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "clearAllExpandHack":Z
    goto :goto_1

    .line 770
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_c

    move v0, v10

    :cond_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 771
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 772
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_f

    .line 773
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v6

    .line 774
    .local v6, "belowFalsingThreshold":Z
    if-eqz v6, :cond_d

    .line 775
    const/4 p1, 0x0

    .line 777
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 778
    if-eqz v6, :cond_e

    .line 779
    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 829
    .end local v6    # "belowFalsingThreshold":Z
    :cond_e
    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v0, p0, v7}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 869
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 870
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/ScrimController;->setStaticBlurMode(Z)V

    .line 874
    if-nez p2, :cond_13

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateBlurAlphaOut(J)V

    .line 728
    :goto_3
    return-void

    .line 782
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getScreenHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 824
    :cond_10
    :goto_4
    cmpl-float v0, p1, v11

    if-nez v0, :cond_e

    .line 826
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getCannedFlingDurationFactor()F

    move-result v2

    mul-float/2addr v0, v2

    .line 825
    float-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 785
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    .line 785
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 788
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 789
    .local v8, "realDuration":F
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    long-to-float v0, v4

    cmpg-float v0, v8, v0

    if-gez v0, :cond_10

    .line 790
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 793
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 794
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    .line 796
    .local v9, "realInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v0, p0, v9, v8}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/TimeInterpolator;F)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 817
    .end local v9    # "realInterpolator":Landroid/animation/TimeInterpolator;
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_10

    .line 818
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4

    .line 878
    .end local v8    # "realDuration":F
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateBlurAlphaInIfNotRunning()V

    goto :goto_3
.end method

.method protected flingExpands(FF)Z
    .locals 1
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x1

    return v0

    .line 720
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldFlingExpands(FF)Z

    move-result v0

    return v0
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getCannedFlingDurationFactor()F
.end method

.method protected abstract getClearAllHeight()I
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract getScreenHeight()I
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(ZZ)V

    .line 1146
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustInstantCollapsed:Z

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1151
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1161
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 1167
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_2

    .line 1172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1136
    :cond_2
    return-void

    .line 1164
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1165
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1097
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1098
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1099
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(ZZ)V

    .line 1104
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_1

    .line 1105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1107
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_2

    .line 1113
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpandOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 1096
    return-void

    :cond_3
    move v0, v2

    .line 1102
    goto :goto_0
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method protected abstract isDozing()Z
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1007
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isKeyguardNormalMode()Z
.end method

.method protected abstract isKeyguardShadeMode()Z
.end method

.method protected abstract isKeyguardShowing()Z
.end method

.method public isNotificationPanelFullyCollapsedOnKeyguardShade()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1568
    return v0

    .line 1570
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNotificationPanelFullyCollapsedOnKeyguardShade mExpandedHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isNotificationPanelFullyExpandedOnKeyguardShade()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1559
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1560
    return v0

    .line 1563
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 224
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 225
    const v2, 0x7f0b03e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceLongTouch:F

    .line 226
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceLongTouch:F

    float-to-double v2, v2

    const-wide v4, 0x3ff851eb851eb852L    # 1.52

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 227
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceLongTouch:F

    float-to-double v2, v2

    const-wide v4, 0x3fc851eb851eb852L    # 0.19

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistanceRebound:F

    .line 228
    const v2, 0x7f0b03e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    .line 229
    const v2, 0x7f0b03d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    .line 221
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1395
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "keyguard-shade mode, notify panel expansion change in keyguard-shade mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 1397
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reached negative max panel height, notify panel expansion changed to unlock in keyguard-shade modes specially."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v4, :cond_0

    .line 1399
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    .line 1398
    :cond_0
    :goto_0
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    .line 1416
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandedOnShadeChanged()V

    .line 1392
    return-void

    :cond_1
    move v0, v1

    .line 1399
    goto :goto_0

    .line 1400
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    .line 1401
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to unlock on keyguard-shade but not reached max panel height yet, do not notify panel expansion changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1402
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1403
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "collapse notification panel on keyguard-shade, do not notify panel expansion changed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    goto :goto_1

    .line 1406
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "expand notification panel on keyguard-shade, notify panel expansion changed normally"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v4, :cond_5

    .line 1408
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_6

    .line 1407
    :cond_5
    :goto_2
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1408
    goto :goto_2

    .line 1411
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "non keyguard-shade mode, notify panel expansion change normally"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v4, :cond_8

    .line 1413
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_9

    .line 1412
    :cond_8
    :goto_3
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    goto :goto_1

    :cond_9
    move v0, v1

    .line 1413
    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 885
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 884
    return-void
.end method

.method protected abstract onCameraStateChange()V
.end method

.method protected abstract onCameraTranslateEnd()V
.end method

.method protected abstract onCameraTranslateStart()V
.end method

.method protected onClosingFinished()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 1183
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 706
    return-void
.end method

.method protected abstract onEdgeClicked(Z)V
.end method

.method protected onEmptySpaceClick(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 1442
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1443
    return v2

    .line 1446
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1448
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onEdgeClicked(Z)V

    .line 1449
    return v2

    .line 1451
    :cond_1
    return v2
.end method

.method protected onExpandingFinished()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 136
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 701
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 700
    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 547
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PanelView;->shouldLaunchCamera:Z

    if-eqz v7, :cond_1

    .line 548
    :cond_0
    return v8

    .line 551
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v7, :cond_2

    .line 552
    return v9

    .line 563
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 564
    .local v2, "pointerIndex":I
    if-gez v2, :cond_3

    .line 565
    const/4 v2, 0x0

    .line 566
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 568
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 569
    .local v5, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 570
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v3

    .line 572
    .local v3, "scrolledToBottom":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 659
    :cond_4
    :goto_0
    :pswitch_0
    return v8

    .line 574
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 575
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLongTouch:Z

    .line 576
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 577
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_5

    .line 578
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v7, :cond_6

    .line 579
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 577
    if-nez v7, :cond_6

    .line 579
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_7

    .line 580
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 582
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 583
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCancelFlingWhenTouch:Z

    .line 584
    return v9

    .line 586
    :cond_7
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 587
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 588
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 589
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 590
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustInstantCollapsed:Z

    .line 591
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 592
    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v7

    if-eqz v7, :cond_9

    const/high16 v7, -0x40800000    # -1.0f

    :goto_2
    cmpl-float v7, v11, v7

    if-nez v7, :cond_a

    move v7, v9

    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 593
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 594
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 595
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 598
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 600
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->touchOnStatusBarInKeyguardShade(FF)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    .line 601
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    if-eqz v7, :cond_4

    .line 602
    return v9

    :cond_8
    move v7, v9

    .line 588
    goto :goto_1

    :cond_9
    move v7, v10

    .line 592
    goto :goto_2

    :cond_a
    move v7, v8

    goto :goto_3

    .line 607
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 608
    .local v4, "upPointer":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v7, v4, :cond_4

    .line 610
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v4, :cond_b

    const/4 v1, 0x0

    .line 611
    .local v1, "newIndex":I
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 612
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 613
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_0

    .line 610
    .end local v1    # "newIndex":I
    :cond_b
    const/4 v1, 0x1

    .restart local v1    # "newIndex":I
    goto :goto_4

    .line 619
    .end local v1    # "newIndex":I
    .end local v4    # "upPointer":I
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 621
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v7

    if-ne v7, v9, :cond_c

    .line 622
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_c

    .line 623
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    if-eqz v7, :cond_10

    .line 627
    :cond_c
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v6, v7

    .line 628
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 629
    cmpl-float v7, v0, v10

    if-lez v7, :cond_d

    .line 630
    sput-boolean v9, Lcom/android/systemui/statusbar/phone/PanelView;->mIsSlideDown:Z

    .line 632
    :cond_d
    if-nez v3, :cond_e

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-eqz v7, :cond_4

    .line 633
    :cond_e
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_11

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_11

    .line 638
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 639
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 640
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 641
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 642
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 643
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 645
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v7, v0

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 646
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_f

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_f

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onPullNotificationPanelOnKeyguardShade()V

    .line 650
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 651
    return v9

    .line 624
    .end local v0    # "h":F
    :cond_10
    return v8

    .line 635
    .restart local v0    # "h":F
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 636
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraShowing:Z

    if-nez v7, :cond_4

    .line 637
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v11, v11

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_4

    goto :goto_5

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 904
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 905
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 903
    return-void
.end method

.method protected abstract onPullNotificationPanelOnKeyguardShade()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 249
    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PanelView;->shouldLaunchCamera:Z

    .line 248
    if-eqz v24, :cond_1

    .line 250
    :cond_0
    const/16 v24, 0x0

    return v24

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 270
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 271
    .local v15, "pointerIndex":I
    if-gez v15, :cond_3

    .line 272
    const/4 v15, 0x0

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 275
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .line 276
    .local v23, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    .line 277
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    if-nez v24, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_7

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 280
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    move/from16 v21, v0

    .line 281
    :goto_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 514
    :cond_5
    :goto_2
    :pswitch_0
    if-eqz v21, :cond_45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v24, v0

    :goto_3
    return v24

    .line 258
    .end local v15    # "pointerIndex":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_6
    const/16 v24, 0x0

    return v24

    .line 278
    .restart local v15    # "pointerIndex":I
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_7
    const/16 v24, 0x0

    goto :goto_0

    .line 280
    :cond_8
    const/16 v21, 0x1

    .local v21, "waitForTouchSlop":Z
    goto :goto_1

    .line 284
    .end local v21    # "waitForTouchSlop":Z
    :pswitch_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 285
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 287
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 288
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 289
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustInstantCollapsed:Z

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_f

    const/high16 v24, -0x40800000    # -1.0f

    :goto_4
    cmpl-float v24, v25, v24

    if-nez v24, :cond_10

    const/16 v24, 0x1

    :goto_5
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 291
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 292
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 294
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    if-nez v24, :cond_9

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 299
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 300
    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v24, v0

    .line 300
    if-nez v24, :cond_b

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 303
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v24, v0

    .line 305
    if-nez v24, :cond_11

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    const/16 v24, 0x1

    .line 305
    :goto_6
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 310
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_e

    .line 316
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x96

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 290
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_4

    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 305
    :cond_11
    const/16 v24, 0x1

    goto :goto_6

    .line 307
    :cond_12
    const/16 v24, 0x0

    goto :goto_6

    .line 322
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 323
    .local v17, "upPointer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 325
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    const/4 v12, 0x0

    .line 326
    .local v12, "newIndex":I
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 327
    .local v14, "newY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 328
    .local v13, "newX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 330
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 331
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    goto/16 :goto_2

    .line 325
    .end local v12    # "newIndex":I
    .end local v13    # "newX":F
    .end local v14    # "newY":F
    :cond_13
    const/4 v12, 0x1

    .restart local v12    # "newIndex":I
    goto :goto_7

    .line 336
    .end local v12    # "newIndex":I
    .end local v17    # "upPointer":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 338
    .local v8, "h":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraShowing:Z

    move/from16 v24, v0

    .line 338
    if-eqz v24, :cond_15

    .line 340
    :cond_14
    const/16 v24, 0x0

    cmpl-float v24, v8, v24

    if-lez v24, :cond_15

    .line 341
    sget-object v24, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "disable pull-down on keyguard-normal."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 345
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    move/from16 v24, v0

    .line 345
    if-eqz v24, :cond_16

    .line 347
    const/16 v24, 0x0

    cmpl-float v24, v8, v24

    if-lez v24, :cond_16

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1d

    .line 350
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 358
    :cond_16
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_18

    .line 359
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v25, v0

    sub-float v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-lez v24, :cond_18

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onCameraStateChange()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onCameraHintStarted()V

    .line 366
    :cond_17
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 367
    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    .line 394
    :cond_18
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_29

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_28

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v25, v0

    add-float v25, v25, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 397
    .local v9, "height":F
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v24, v0

    add-float v24, v24, v8

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 400
    .local v11, "newHeight":F
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    move/from16 v24, v0

    cmpl-float v24, v11, v24

    if-lez v24, :cond_1a

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 404
    :cond_19
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 406
    :cond_1a
    neg-float v0, v8

    move/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_1b

    .line 407
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 409
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustInstantCollapsed:Z

    move/from16 v24, v0

    if-nez v24, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2b

    .line 414
    :cond_1c
    :goto_c
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 349
    .end local v9    # "height":F
    .end local v11    # "newHeight":F
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardNormalMode()Z

    move-result v24

    .line 345
    if-eqz v24, :cond_16

    goto/16 :goto_8

    .line 351
    :cond_1e
    sget-object v24, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mIntialPanelHeight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 352
    const-string/jumbo v26, ", mInitialTouchY = "

    .line 351
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    .line 351
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 353
    const-string/jumbo v26, ", mExpandedHeight = "

    .line 351
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    .line 351
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 368
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v24, v0

    if-nez v24, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-eqz v24, :cond_21

    .line 369
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 370
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 371
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 372
    const/4 v8, 0x0

    .line 374
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_22

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 377
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v24, v0

    add-float v24, v24, v8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_26

    .line 383
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-nez v24, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraShowing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27

    .line 384
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    :cond_25
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    goto/16 :goto_9

    .line 382
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardNormalMode()Z

    move-result v24

    if-eqz v24, :cond_25

    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PanelView;->mIsSlideDown:Z

    if-eqz v24, :cond_25

    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PanelView;->mIsSlideUp:Z

    if-eqz v24, :cond_23

    goto :goto_d

    .line 385
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-nez v24, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraShowing:Z

    move/from16 v24, v0

    if-nez v24, :cond_25

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onPullNotificationPanelOnKeyguardShade()V

    goto :goto_d

    .line 395
    :cond_28
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v25, v0

    add-float v25, v25, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .restart local v9    # "height":F
    goto/16 :goto_a

    .line 396
    .end local v9    # "height":F
    :cond_29
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v25, v0

    add-float v25, v25, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .restart local v9    # "height":F
    goto/16 :goto_a

    .line 398
    :cond_2a
    move v11, v9

    .restart local v11    # "newHeight":F
    goto/16 :goto_b

    .line 409
    :cond_2b
    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    .line 410
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v24

    if-nez v24, :cond_1c

    .line 411
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto/16 :goto_c

    .line 419
    .end local v8    # "h":F
    .end local v9    # "height":F
    .end local v11    # "newHeight":F
    :pswitch_4
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 420
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v24, v0

    if-nez v24, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCancelFlingWhenTouch:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustInstantCollapsed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2f

    .line 426
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_35

    .line 429
    :cond_2f
    const/16 v19, 0x0

    .line 430
    .local v19, "vel":F
    const/16 v18, 0x0

    .line 431
    .local v18, "vectorVel":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    if-eqz v24, :cond_30

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-interface/range {v24 .. v25}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v19

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 434
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v18, v0

    .line 437
    :cond_30
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v24

    if-nez v24, :cond_37

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    const/4 v6, 0x1

    .line 439
    .local v6, "expand":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    move/from16 v24, v0

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v25

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v26

    .line 440
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v6, v0, v1, v2}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    .line 444
    if-nez v6, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDisplayDensity()F

    move-result v4

    .line 446
    .local v4, "displayDensity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    div-float v24, v24, v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 447
    .local v10, "heightDp":I
    div-float v24, v19, v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 449
    .local v20, "velocityDp":I
    const/16 v24, 0x1

    .line 448
    move/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 453
    .end local v4    # "displayDensity":F
    .end local v10    # "heightDp":I
    .end local v20    # "velocityDp":I
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    move/from16 v24, v0

    if-nez v24, :cond_39

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3a

    const/16 v24, 0x1

    .line 453
    :goto_f
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3b

    :goto_10
    const/16 v16, 0x1

    .line 456
    .local v16, "reachTarget":Z
    :goto_11
    if-eqz v16, :cond_32

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v5

    .line 459
    .local v5, "doHintFinish":Z
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraTouching:Z

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onCameraStateChange()V

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 462
    if-eqz v5, :cond_32

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHintFinished()V

    .line 467
    .end local v5    # "doHintFinish":Z
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-nez v24, :cond_3d

    if-eqz v16, :cond_3d

    .line 504
    .end local v6    # "expand":Z
    .end local v16    # "reachTarget":Z
    .end local v18    # "vectorVel":F
    .end local v19    # "vel":F
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 506
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 508
    :cond_34
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 509
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mCancelFlingWhenTouch:Z

    .line 510
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/systemui/statusbar/phone/PanelView;->mIsSlideDown:Z

    .line 511
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    goto/16 :goto_2

    .line 427
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-gtz v24, :cond_2f

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2f

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(FF)Z

    move-result v7

    .line 480
    .local v7, "expands":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 481
    sget-object v24, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mCameraAnimationRunning = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 482
    const-string/jumbo v26, ", mWaitingForFling = "

    .line 481
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    move/from16 v26, v0

    .line 481
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 483
    const-string/jumbo v26, ", shouldCameta"

    .line 481
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v26

    .line 481
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_36

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_36

    .line 486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraTouching:Z

    move/from16 v24, v0

    .line 484
    if-eqz v24, :cond_36

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x96

    cmp-long v24, v24, v26

    if-gtz v24, :cond_36

    .line 488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v24, v0

    if-eqz v24, :cond_41

    .line 494
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v24, v0

    if-eqz v24, :cond_42

    .line 495
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    goto/16 :goto_12

    .line 437
    .end local v7    # "expands":Z
    .restart local v18    # "vectorVel":F
    .restart local v19    # "vel":F
    :cond_37
    const/4 v6, 0x1

    .restart local v6    # "expand":Z
    goto/16 :goto_e

    .line 438
    .end local v6    # "expand":Z
    :cond_38
    const/4 v6, 0x0

    .restart local v6    # "expand":Z
    goto/16 :goto_e

    .line 453
    :cond_39
    const/16 v24, 0x1

    goto/16 :goto_f

    .line 454
    :cond_3a
    const/16 v24, 0x0

    goto/16 :goto_f

    .line 455
    :cond_3b
    const/16 v16, 0x0

    .restart local v16    # "reachTarget":Z
    goto/16 :goto_11

    .end local v16    # "reachTarget":Z
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3b

    goto/16 :goto_10

    .line 468
    .restart local v16    # "reachTarget":Z
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_3f

    .line 469
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 473
    :goto_13
    if-eqz v6, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_40

    :cond_3e
    const/16 v24, 0x0

    :goto_14
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move/from16 v24, v0

    if-eqz v24, :cond_33

    .line 475
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    goto/16 :goto_12

    .line 471
    :cond_3f
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    goto :goto_13

    .line 473
    :cond_40
    const/16 v24, 0x1

    goto :goto_14

    .line 489
    .end local v6    # "expand":Z
    .end local v16    # "reachTarget":Z
    .end local v18    # "vectorVel":F
    .end local v19    # "vel":F
    .restart local v7    # "expands":Z
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    move/from16 v24, v0

    if-nez v24, :cond_36

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v24, v0

    sub-float v24, v23, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-gtz v24, :cond_36

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v26, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    goto/16 :goto_12

    .line 496
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v24

    if-nez v24, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    move/from16 v24, v0

    if-nez v24, :cond_43

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v24

    if-eqz v24, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_44

    .line 499
    :cond_43
    :goto_15
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    .line 500
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_12

    .line 498
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardNormalMode()Z

    move-result v24

    if-eqz v24, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_33

    goto :goto_15

    .line 514
    .end local v7    # "expands":Z
    :cond_45
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 537
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(ZZ)V

    .line 524
    return-void
.end method

.method protected onTrackingStopped(ZZ)V
    .locals 1
    .param p1, "expand"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    .line 527
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped()V

    goto :goto_0
.end method

.method public onTransitingStoped()V
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTransitingStoped()V

    .line 1682
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelView;->shouldLaunchCamera:Z

    .line 1680
    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 3

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    .line 919
    .local v0, "currentMaxPanelHeight":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 921
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 922
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 923
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-eqz v1, :cond_2

    .line 916
    :cond_1
    :goto_0
    return-void

    .line 924
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 925
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-nez v1, :cond_1

    .line 926
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    goto :goto_0
.end method

.method protected requestUpdateFlingOnLayout()V
    .locals 2

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_0

    .line 1610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1611
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 1612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1608
    :cond_0
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 1022
    return-void
.end method

.method public setEnablePullDownOnKeyguard(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1604
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    .line 1605
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " pull down on keyguard."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void

    .line 1605
    :cond_0
    const-string/jumbo v0, "disable"

    goto :goto_0
.end method

.method public setExpandedFraction(FZ)V
    .locals 1
    .param p1, "frac"    # F
    .param p2, "notify"    # Z

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(FZ)V

    .line 994
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 894
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(FZ)V

    .line 893
    return-void
.end method

.method public setExpandedHeight(FZ)V
    .locals 1
    .param p1, "height"    # F
    .param p2, "notify"    # Z

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FZ)V

    .line 897
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FZ)V

    .line 930
    return-void
.end method

.method public setExpandedHeightInternal(FZ)V
    .locals 6
    .param p1, "h"    # F
    .param p2, "notify"    # Z

    .prologue
    const/4 v3, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v5

    sub-float v0, v4, v5

    .line 936
    .local v0, "fhWithoutOverExpansion":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_4

    .line 937
    sub-float v4, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 938
    .local v1, "overExpansionPixels":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v4, :cond_0

    .line 939
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 941
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 951
    .end local v1    # "overExpansionPixels":F
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 952
    .local v2, "tmp":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 953
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldCameraIntercept()Z

    move-result v4

    if-nez v4, :cond_2

    .line 955
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 959
    :cond_2
    cmpl-float v4, v0, v3

    if-nez v4, :cond_5

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 962
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 963
    if-eqz p2, :cond_3

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 934
    :cond_3
    return-void

    .line 943
    .end local v2    # "tmp":F
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 944
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v4, :cond_1

    .line 945
    sub-float v4, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    goto :goto_0

    .line 961
    .restart local v2    # "tmp":F
    :cond_5
    div-float v3, v2, v0

    goto :goto_1
.end method

.method public setFullyCollapsedOnKeyguardShade(Z)V
    .locals 0
    .param p1, "collapsed"    # Z

    .prologue
    .line 1537
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    .line 1536
    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 242
    return-void
.end method

.method public abstract shouldCameraIntercept()Z
.end method

.method protected startCameraHintAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1648
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraHintAnimation, mHeightAnimator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1649
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1649
    const-string/jumbo v2, "mTracking = "

    .line 1648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1649
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 1648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 1654
    :cond_0
    return-void

    .line 1656
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1657
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onCameraHintStarted()V

    .line 1659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onCameraStateChange()V

    .line 1660
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1670
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1671
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    .line 1672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    .line 1673
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLastMaxPanelHeight:F

    .line 1647
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    .line 1193
    :cond_0
    return-void

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1197
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onUnlockHintStarted()V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1188
    return-void
.end method

.method protected touchOnStatusBarInKeyguardShade(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1623
    const/4 v0, 0x0

    return v0
.end method
