.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;
    }
.end annotation


# instance fields
.field private QS_EXPANSION_OPEN_FRACTION:F

.field private Qs_EXPANSION_FAST_OPEN_FRACTION:F

.field private mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

.field private mAlphaAnimDuration:J

.field private mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mBlockTouches:Z

.field private mCameraDrawable:Landroid/graphics/drawable/Drawable;

.field private mClockAnimationTarget:I

.field private mClockAnimator:Landroid/animation/ObjectAnimator;

.field private mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClockView:Landroid/view/ViewGroup;

.field private mConflictingQsExpansionGesture:Z

.field private mContext:Landroid/content/Context;

.field private mDismissButton:Landroid/view/View;

.field private mDismissView:Landroid/view/View;

.field private mDismissViewInAnimation:Landroid/view/animation/Animation;

.field private mDismissViewOutAnimation:Landroid/view/animation/Animation;

.field private mDividingLine:Landroid/view/View;

.field private mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mDozing:Z

.field private mEmptyDragAmount:F

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFilterDismissButton:Landroid/view/View;

.field private mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

.field private mFilterShadeEmpty:Z

.field private mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHasBeenLayoutedSinceBooting:Z

.field protected mHasSlideDown:Z

.field protected mHasSlideUp:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimatingIn:Z

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsExpanding:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

.field private mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

.field private mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLockscreenView:Landroid/view/View;

.field private mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

.field private mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

.field private mNotificationContainerParent:Landroid/view/View;

.field private mNotificationScrimWaitDistance:I

.field private mNotificationStackInAnimation:Landroid/view/animation/Animation;

.field private mNotificationStackOutAnimation:Landroid/view/animation/Animation;

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsDetailView:Landroid/view/View;

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFullyExpanded:Z

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mScreenHeight:I

.field private mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mShadeEmpty:Z

.field private mShadeMinBottomMargin:I

.field private mShowLockscreenNotifications:Z

.field private mShowingDetail:Z

.field private mShowingFilterPanel:Z

.field private mSlideContent:Landroid/widget/FrameLayout;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field public mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

.field private mTopPaddingAdjustment:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private final mUpdateHeader:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

.field private mWallpaperIcon:Landroid/widget/ImageView;

.field private mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaAnimDuration:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasBeenLayoutedSinceBooting:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FZ)V
    .locals 0
    .param p1, "height"    # F
    .param p2, "overrideHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 202
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    .line 204
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 207
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    .line 206
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 220
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 231
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 238
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 247
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    .line 257
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    .line 259
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QS_EXPANSION_OPEN_FRACTION:F

    .line 260
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->Qs_EXPANSION_FAST_OPEN_FRACTION:F

    .line 262
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    .line 1408
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1419
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1427
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1426
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 1437
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1436
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    .line 1454
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1453
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1486
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1507
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1506
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1526
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2854
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    .line 3028
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    .line 3037
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    .line 3381
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    .line 3444
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenHeight:I

    .line 273
    invoke-static {p1}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicViewChange(Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;)V

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 276
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenHeight:I

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    const v1, 0x7f10001c

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaAnimDuration:J

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 282
    const v1, 0x7f0b028c

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeMinBottomMargin:I

    .line 283
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 271
    return-void
.end method

.method private UpdateClockOrMusicView(FF)V
    .locals 5
    .param p1, "alpha"    # F
    .param p2, "scale"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3151
    return-void

    .line 3154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3155
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_5

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3162
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_2

    .line 3163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setAlpha(F)V

    .line 3166
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_4

    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3168
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_6

    .line 3169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 3170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/music/KeyguardMusicView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3175
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->setAlpha(F)V

    .line 3148
    :cond_4
    return-void

    .line 3158
    :cond_5
    cmpl-float v0, p1, v3

    if-nez v0, :cond_1

    .line 3159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v4, v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 3171
    :cond_6
    cmpl-float v0, p1, v3

    if-nez v0, :cond_3

    .line 3172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 3173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, v4, v2}, Lcom/meizu/media/music/KeyguardMusicView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private UpdateClockOrMusicView(FFF)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "scale"    # F
    .param p3, "translationY"    # F

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 3135
    return-void

    .line 3137
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(FF)V

    .line 3140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3141
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateTranslationY(F)V

    .line 3143
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarAndMusic(F)V

    .line 3133
    return-void
.end method

.method private animateHeaderSlidingIn()V
    .locals 2

    .prologue
    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    .line 1482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1480
    return-void
.end method

.method private animateKeyguardStatusBarIn()V
    .locals 4

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1518
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1519
    const-wide/16 v2, 0x0

    .line 1517
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1520
    const-wide/16 v2, 0x2bc

    .line 1517
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1521
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1522
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1514
    return-void
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1497
    const/4 v1, 0x0

    .line 1496
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1496
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1496
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1500
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1496
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1496
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1496
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1495
    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    .prologue
    .line 2076
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    .line 2077
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v5

    .line 2076
    sub-int/2addr v4, v5

    .line 2078
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v5

    .line 2076
    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2091
    .local v2, "notificationHeight":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2094
    .local v1, "maxQsHeight":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 2095
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2098
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int v5, v1, v4

    .line 2099
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-eqz v4, :cond_2

    .line 2100
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int/2addr v4, v6

    .line 2097
    :goto_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 2103
    .local v3, "totalHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 2106
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    .line 2104
    add-int/2addr v4, v1

    .line 2107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v5

    .line 2104
    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 2108
    .local v0, "fullyCollapsedHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2110
    .end local v0    # "fullyCollapsedHeight":F
    :cond_1
    float-to-int v4, v3

    return v4

    .line 2101
    .end local v3    # "totalHeight":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 2067
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "emptyBottomMargin":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2070
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 2069
    sub-int v1, v2, v3

    .line 2071
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2072
    return v1

    .line 2068
    .end local v0    # "emptyBottomMargin":I
    .end local v1    # "maxHeight":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .restart local v0    # "emptyBottomMargin":I
    goto :goto_0
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .prologue
    .line 1764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1765
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 1764
    if-eqz v3, :cond_2

    .line 1771
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 1772
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 1771
    sub-int/2addr v3, v4

    .line 1773
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 1771
    sub-int v1, v3, v4

    .line 1774
    .local v1, "maxNotifications":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    .line 1775
    .local v2, "maxQs":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1776
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1778
    .local v0, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    .line 1779
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    .line 1778
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    return v3

    .line 1777
    .end local v0    # "max":I
    :cond_1
    move v0, v2

    .restart local v0    # "max":I
    goto :goto_0

    .line 1780
    .end local v0    # "max":I
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 1781
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    return v3

    .line 1782
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    .line 1787
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1788
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    .line 1786
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    return v3

    .line 1790
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    return v3
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1834
    :cond_0
    return-void
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 972
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    return v1

    .line 975
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 976
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 978
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private flingQsWithCurrentVelocity(Z)V
    .locals 3
    .param p1, "isCancelMotionEvent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v0

    .line 968
    .local v0, "vel":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 966
    return-void

    .line 968
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private flingSettings(FZ)V
    .locals 1
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 1841
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 1840
    return-void
.end method

.method private flingSettings(FZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    .line 1846
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "flingSettings  vel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-eqz p2, :cond_0

    .line 1848
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_0

    .line 1849
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectSecondNotiPanelFullOpen(Landroid/content/Context;)V

    .line 1854
    :cond_0
    if-eqz p2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v3

    .line 1855
    .local v2, "target":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    .line 1856
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1857
    if-eqz p3, :cond_1

    .line 1858
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1860
    :cond_1
    return-void

    .line 1854
    .end local v2    # "target":F
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 1862
    .restart local v2    # "target":F
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v1

    .line 1863
    .local v1, "belowFalsingThreshold":Z
    if-eqz v1, :cond_4

    .line 1864
    const/4 p1, 0x0

    .line 1866
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    .line 1867
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1868
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v3, v0, v4, v2, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 1869
    if-eqz v1, :cond_6

    .line 1870
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1875
    :cond_5
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1881
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v3, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1892
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1893
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 1894
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    .line 1844
    return-void

    .line 1871
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    .line 1873
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1828
    const/4 v0, 0x0

    return v0

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1223
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 1222
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "factor":F
    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    return v0

    .line 1744
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getHeaderTranslation()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2196
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    .line 2194
    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    return v0

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    return v0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1727
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1730
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    return v0

    .line 2358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    return v0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .prologue
    .line 987
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 987
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    .prologue
    .line 2114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v0, :cond_1

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    return v0

    .line 2115
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return v0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    .prologue
    .line 2059
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2060
    .local v0, "qsTempMaxExpansion":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2061
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    .line 2063
    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    .line 1121
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-eqz v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    goto :goto_0
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 4
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3096
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 3097
    .local v0, "showingDetail":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    .line 3098
    if-eqz v0, :cond_2

    .line 3100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3102
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    .line 3105
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3095
    :goto_1
    return-void

    .line 3096
    .end local v0    # "showingDetail":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showingDetail":Z
    goto :goto_0

    .line 3107
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3108
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3109
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3112
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 3110
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLineVisible(Z)V

    goto :goto_2
.end method

.method private init3PartLockscreen(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init3PartLockscreen force = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2949
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 2951
    if-eqz p2, :cond_1

    .line 2953
    const-string/jumbo v0, "force init 3-part wrapper"

    .line 2952
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 2954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2957
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    .line 2958
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 2961
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2962
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    .line 2963
    const/4 v2, -0x2

    .line 2961
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_2

    .line 2965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockSoundOn(Z)V

    .line 2966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockVibrateOn(Z)V

    .line 2974
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2975
    :cond_3
    return-void

    .line 2969
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_2

    .line 2970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockSoundOn(Z)V

    .line 2971
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockVibrateOn(Z)V

    goto :goto_0

    .line 2978
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getLockscreenView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    .line 2979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 2981
    const-string/jumbo v0, "load lockscreen view failed"

    .line 2980
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->resetFlymeTheme()V

    .line 2983
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 2984
    return-void

    .line 2986
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 2987
    const v0, 0x7f0f0244

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    .line 2989
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-nez v0, :cond_8

    .line 2990
    const v0, 0x7f0f0245

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/GLStaticBlurView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    .line 2991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 2995
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2998
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_b

    .line 2999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    .line 3003
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockRunnable(Ljava/lang/Runnable;)V

    .line 2948
    :cond_b
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1823
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1819
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 2787
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method private isInQsArea(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1115
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 1116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1117
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1115
    goto :goto_0
.end method

.method private isInSettings()Z
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method private isScrolledToTop()Z
    .locals 1

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v0

    .line 1961
    return v0

    .line 1965
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onQsExpansionChanged(F)V
    .locals 1
    .param p1, "frac"    # F

    .prologue
    .line 3090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onQsExpansionChanged(F)V

    .line 3089
    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1283
    return-void
.end method

.method private onQsExpansionStarted(I)V
    .locals 4
    .param p1, "overscrollAmount"    # I

    .prologue
    const/4 v3, 0x0

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1291
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 1292
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->scrollTo(II)V

    .line 1296
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1287
    return-void
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1158
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1159
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 1160
    const/4 v5, 0x0

    .line 1161
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1163
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1164
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1166
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1157
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1168
    :pswitch_1
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1169
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1170
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1172
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1174
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1178
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1179
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 1181
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v6, :cond_2

    const/4 v2, 0x0

    .line 1182
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1183
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1184
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1185
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1186
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1187
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .line 1181
    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "newIndex":I
    goto :goto_1

    .line 1192
    .end local v2    # "newIndex":I
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v11

    .line 1193
    .local v1, "h":F
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v11, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v12

    if-eqz v12, :cond_4

    :goto_2
    invoke-direct {p0, v11, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_3

    .line 1195
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1197
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    move v9, v10

    .line 1193
    goto :goto_2

    .line 1202
    .end local v1    # "h":F
    :pswitch_4
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1203
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1204
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1206
    .local v0, "fraction":F
    const/4 v11, 0x0

    cmpl-float v11, v0, v11

    if-nez v11, :cond_5

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_8

    .line 1207
    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v0, v11

    if-nez v11, :cond_6

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_8

    .line 1209
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 1208
    :goto_3
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 1213
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 1214
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1215
    iput-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_7
    move v10, v9

    .line 1209
    goto :goto_3

    .line 1211
    :cond_8
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    goto :goto_4

    .line 1166
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

.method private positionClockAndNotifications()V
    .locals 14

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v8

    .line 629
    .local v8, "animate":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v10

    .line 631
    .local v10, "bottom":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_0

    .line 632
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v10

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v13, v0, v1

    .line 634
    .local v13, "stackScrollerPadding":I
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 713
    .end local v10    # "bottom":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 714
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 626
    return-void

    .line 633
    .end local v13    # "stackScrollerPadding":I
    .restart local v10    # "bottom":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v13, v0, v1

    .restart local v13    # "stackScrollerPadding":I
    goto :goto_0

    .line 636
    .end local v10    # "bottom":I
    .end local v13    # "stackScrollerPadding":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 637
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMaxKeyguardNotifications()I

    move-result v1

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v4

    add-float/2addr v3, v4

    .line 643
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    .line 645
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v6}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v6

    .line 646
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 636
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIFIIIF)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 648
    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 658
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 659
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 661
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pull notification panel on keyguard-shade mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v12, v0, v1

    .line 663
    .local v12, "clockY":F
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    sub-float v1, v12, v1

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 665
    .local v11, "clockAlpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-direct {p0, v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(FF)V

    .line 703
    .end local v11    # "clockAlpha":F
    .end local v12    # "clockY":F
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v13, v0, v1

    .line 705
    .restart local v13    # "stackScrollerPadding":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_1

    .line 641
    .end local v13    # "stackScrollerPadding":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    goto :goto_2

    .line 651
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setY(F)V

    .line 652
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldLaunchCamera:Z

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateTranslationY(F)V

    goto :goto_3

    .line 668
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlock on keyguard-shade mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 676
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v3}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v3

    .line 675
    sub-int/2addr v2, v3

    .line 677
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockNotificationsPadding:I

    .line 675
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 672
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(FFF)V

    goto :goto_4

    .line 681
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 682
    .local v9, "bottom":F
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_8

    .line 685
    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 690
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 691
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v3}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v3

    .line 690
    sub-int/2addr v2, v3

    .line 692
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockNotificationsPadding:I

    .line 690
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 687
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(FFF)V

    goto/16 :goto_4

    .line 695
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-nez v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v12, v0, v1

    .line 697
    .restart local v12    # "clockY":F
    const/4 v0, 0x0

    sub-float v1, v12, v9

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 699
    .restart local v11    # "clockAlpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-direct {p0, v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(FF)V

    goto/16 :goto_4

    .line 707
    .end local v9    # "bottom":F
    .end local v11    # "clockAlpha":F
    .end local v12    # "clockY":F
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v13, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 708
    .restart local v13    # "stackScrollerPadding":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 709
    const/4 v0, 0x0

    .line 708
    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_1

    .line 709
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    goto :goto_5
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1796
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v2

    .line 1797
    .local v2, "qsTopPadding":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1798
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v6

    .line 1799
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v7, :cond_3

    .line 1800
    .end local p1    # "animate":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v7, :cond_4

    .line 1801
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-eqz v7, :cond_1

    move v3, v4

    .line 1797
    :cond_1
    :goto_1
    invoke-virtual {v5, v2, v6, p1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 1802
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1803
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1804
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v0, v3

    .line 1805
    .local v0, "delta":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeMinBottomMargin:I

    add-int/2addr v3, v0

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v3, v4, :cond_2

    .line 1806
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeMinBottomMargin:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1807
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1809
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->adjustBottomMargin(I)V

    .line 1794
    return-void

    .end local v0    # "delta":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local p1    # "animate":Z
    :cond_3
    move p1, v3

    .line 1799
    goto :goto_0

    .end local p1    # "animate":Z
    :cond_4
    move v3, v4

    .line 1800
    goto :goto_1
.end method

.method private resetDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 947
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 948
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideDown:Z

    .line 949
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideUp:Z

    .line 950
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 951
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 944
    :cond_0
    return-void
.end method

.method private setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3183
    if-eqz p2, :cond_0

    .line 3184
    new-instance v0, Landroid/view/GestureDetector;

    .line 3185
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 3184
    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 3186
    .local v0, "gd":Landroid/view/GestureDetector;
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/GestureDetector;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3182
    .end local v0    # "gd":Landroid/view/GestureDetector;
    :cond_0
    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "goingToFullShade"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1535
    if-eqz p2, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1538
    const/4 v1, 0x0

    .line 1537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1537
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1537
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1541
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1542
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1534
    :goto_0
    return-void

    .line 1544
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1545
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1558
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardStatusViewVisibility statusBarState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1560
    const-string/jumbo v2, ", isMusicPlaying = "

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1561
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v2

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1562
    const-string/jumbo v2, ",keyguardFadingAway = "

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1563
    const-string/jumbo v2, ", goingToFullShade = "

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1564
    const-string/jumbo v2, ", mStatusBarState = "

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1564
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1558
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v3, :cond_2

    .line 1566
    if-eq p1, v3, :cond_2

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1569
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1572
    const-wide/16 v2, 0x0

    .line 1570
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1573
    const-wide/16 v2, 0xa0

    .line 1570
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1574
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1570
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1570
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1576
    if-eqz p2, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1578
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1577
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1577
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1557
    :cond_1
    :goto_0
    return-void

    .line 1565
    :cond_2
    if-nez p3, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    .line 1565
    if-nez v0, :cond_0

    .line 1582
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1583
    if-ne p1, v3, :cond_6

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_4

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    .line 1588
    :cond_4
    return-void

    .line 1590
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 1592
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v6}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setAlpha(F)V

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1596
    const-wide/16 v2, 0x0

    .line 1594
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1597
    const-wide/16 v2, 0x140

    .line 1594
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1598
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1594
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1594
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1600
    :cond_6
    if-ne p1, v3, :cond_9

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->musicControlViewShow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_7

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    .line 1605
    :cond_7
    return-void

    .line 1607
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1608
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v5}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setAlpha(F)V

    goto/16 :goto_0

    .line 1612
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1613
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v5}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setAlpha(F)V

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    goto/16 :goto_0
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    .line 2406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 2404
    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 1301
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1302
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1303
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 1307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 1312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    .line 1313
    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetExpendPanelByTouchKeyguard(Landroid/content/Context;)V

    .line 1300
    :cond_0
    return-void

    .line 1301
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method private setQsExpansion(FZ)V
    .locals 8
    .param p1, "height"    # F
    .param p2, "overrideHeight"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1658
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasBeenLayoutedSinceBooting:Z

    if-eqz v1, :cond_0

    .line 1659
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1661
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1663
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1664
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_8

    .line 1668
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_3

    .line 1669
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1670
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v1, :cond_b

    .line 1678
    :cond_2
    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    .line 1681
    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateScrollViewTouchEnabled()V

    .line 1684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1686
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderExpansionFraction()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setExpansion(F)V

    .line 1688
    if-eqz p2, :cond_c

    .line 1689
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 1694
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 1699
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionChanged(F)V

    .line 1711
    :cond_4
    cmpl-float v1, p1, v5

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v1, :cond_d

    .line 1716
    :cond_5
    :goto_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 1717
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 1718
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v1, v3, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1719
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setVisibility(I)V

    .line 1657
    :cond_6
    return-void

    .end local v0    # "fraction":F
    :cond_7
    move v1, v3

    .line 1661
    goto/16 :goto_0

    .line 1665
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 1663
    if-eqz v1, :cond_1

    .line 1667
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    goto :goto_2

    .line 1671
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1672
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto/16 :goto_1

    .line 1691
    .restart local v0    # "fraction":F
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    goto :goto_3

    .line 1712
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1713
    const v4, 0x7f0901da

    .line 1712
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1714
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_4
.end method

.method private setQsExpansionMax()V
    .locals 2

    .prologue
    .line 3319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasBeenLayoutedSinceBooting:Z

    if-eqz v0, :cond_0

    .line 3320
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 3317
    :goto_0
    return-void

    .line 3322
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setQsTranslation(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    .line 1750
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    add-float/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 1752
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    .line 1755
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setTranslationY(F)V

    .line 1748
    :cond_1
    :goto_1
    return-void

    .line 1750
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    .line 1758
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    goto :goto_1
.end method

.method private setupAnimations()V
    .locals 2

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f050078

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/view/animation/Animation;

    .line 3339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f050079

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/view/animation/Animation;

    .line 3340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f05007c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackInAnimation:Landroid/view/animation/Animation;

    .line 3341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f05007d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackOutAnimation:Landroid/view/animation/Animation;

    .line 3357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3337
    return-void
.end method

.method private shouldCameraIntercept(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 3423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->isInCameraArea(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3424
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3423
    :cond_0
    return v0
.end method

.method private shouldExpendQsWhenSlideDownOnKeyguard(FFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-eqz v0, :cond_1

    .line 1940
    :cond_0
    return v2

    .line 1942
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    return v2

    .line 1945
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 1946
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1947
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1951
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1952
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isScrolledToBottom()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isScrolledToTop()Z

    move-result v0

    .line 1951
    if-eqz v0, :cond_6

    .line 1953
    :cond_4
    return v3

    .line 1948
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1949
    return v3

    .line 1955
    :cond_6
    return v2
.end method

.method private shouldFlingTopOverscrollExpand(F)Z
    .locals 6
    .param p1, "vel"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3520
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldFlingTopOverscrollExpand vel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3521
    const-string/jumbo v4, ", getQsExpansionFraction() = "

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v4

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3522
    const-string/jumbo v4, ", isKeyguardShowing() = "

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v4

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3523
    const-string/jumbo v4, ", mInitialTouchY = "

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3523
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 3520
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3525
    :cond_0
    return v0

    .line 3527
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 3529
    cmpl-float v2, p1, v5

    if-lez v2, :cond_3

    .line 3530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QS_EXPANSION_OPEN_FRACTION:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 3529
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 3530
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3529
    goto :goto_0

    .line 3532
    :cond_4
    cmpl-float v2, p1, v5

    if-lez v2, :cond_5

    .line 3533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->Qs_EXPANSION_FAST_OPEN_FRACTION:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    move v1, v0

    .line 3532
    :cond_5
    return v1
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1902
    :cond_0
    return v4

    .line 1905
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1909
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1911
    .local v0, "header":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_7

    .line 1912
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    :goto_1
    cmpg-float v5, p2, v5

    if-gtz v5, :cond_6

    const/4 v1, 0x1

    .line 1914
    .local v1, "onHeader":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1915
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_9

    .line 1916
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_8

    const/4 v2, 0x1

    .line 1917
    .local v2, "onShadeHeader":Z
    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 1918
    return v3

    .line 1906
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    .end local v2    # "onShadeHeader":Z
    :cond_3
    return v4

    .line 1909
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .restart local v0    # "header":Landroid/view/View;
    goto :goto_0

    .line 1912
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "onHeader":Z
    goto :goto_2

    .line 1911
    .end local v1    # "onHeader":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "onHeader":Z
    goto :goto_2

    .line 1916
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "onShadeHeader":Z
    goto :goto_3

    .line 1915
    .end local v2    # "onShadeHeader":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "onShadeHeader":Z
    goto :goto_3

    .line 1920
    :cond_a
    if-nez v1, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v5

    if-nez v5, :cond_c

    cmpg-float v5, p3, v7

    if-gez v5, :cond_c

    :cond_b
    return v4

    .line 1923
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v5

    if-nez v5, :cond_e

    cmpl-float v5, p3, v7

    if-lez v5, :cond_e

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_d

    :goto_4
    return v3

    :cond_d
    move v3, v4

    goto :goto_4

    .line 1925
    .end local v2    # "onShadeHeader":Z
    :cond_e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_11

    .line 1926
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v5, :cond_10

    if-nez v1, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v3

    if-eqz v3, :cond_f

    cmpg-float v3, p3, v7

    if-gez v3, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    :cond_f
    :goto_5
    return v4

    :cond_10
    move v4, v3

    goto :goto_5

    .line 1929
    :cond_11
    if-nez v1, :cond_13

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v5, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_12
    move v3, v4

    :cond_13
    :goto_6
    return v3

    :cond_14
    cmpl-float v5, p3, v7

    if-lez v5, :cond_12

    goto :goto_6
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 8
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 2609
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    .line 2608
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2607
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1815
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 1813
    return-void
.end method

.method private updateDismissView()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    const v5, 0x3f333333    # 0.7f

    .line 3305
    const v1, 0x3f333333    # 0.7f

    .line 3306
    .local v1, "factor":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v2

    sub-float/2addr v2, v5

    const v5, 0x3e99999a    # 0.3f

    div-float v0, v2, v5

    .line 3308
    .local v0, "alpha":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3309
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3310
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 3312
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissButton:Landroid/view/View;

    cmpl-float v2, v0, v7

    if-lez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3313
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissButton:Landroid/view/View;

    cmpl-float v5, v0, v7

    if-lez v5, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 3304
    :cond_0
    return-void

    .line 3306
    .end local v0    # "alpha":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0

    :cond_2
    move v2, v0

    .line 3309
    goto :goto_1

    :cond_3
    move v2, v4

    .line 3312
    goto :goto_2

    :cond_4
    move v3, v4

    .line 3313
    goto :goto_3
.end method

.method private updateEmptyShadeView()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2834
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 2836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v0, :cond_1

    .line 2837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2839
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 2831
    return-void

    .line 2834
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateFilterEmptyShadeView()V
    .locals 2

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 3589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 3587
    return-void

    .line 3589
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 2

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2180
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 2177
    :goto_0
    return-void

    .line 2182
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderKeyguard()V
    .locals 10

    .prologue
    .line 2218
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2219
    .local v3, "alphaStatusBar":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 2223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v6

    .line 2225
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 2223
    div-float v0, v6, v7

    .line 2227
    .local v0, "alphaNotifications":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 2229
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v6}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 2230
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v6}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 2232
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 2230
    div-float v3, v6, v7

    .line 2241
    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 2256
    :cond_1
    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 2257
    float-to-double v6, v0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 2258
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v6

    .line 2259
    .local v2, "alphaQsExpansion":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2265
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2266
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 2267
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBackgroundBitmap(Z)V

    .line 2268
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 2269
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 2270
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_b

    .line 2271
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    .line 2270
    if-eqz v6, :cond_b

    .line 2272
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 2273
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setVisibility(I)V

    .line 2274
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2275
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/GLStaticBlurView;->blurUnderMeRectCurrentLayer(ZZ)V

    .line 2284
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2286
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2284
    if-eqz v6, :cond_5

    .line 2287
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v6, :cond_5

    .line 2288
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    .line 2310
    :cond_5
    :goto_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2313
    return-void

    .line 2228
    .end local v2    # "alphaQsExpansion":F
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2242
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9

    .line 2243
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float v4, v6, v7

    .line 2244
    .local v4, "bottom":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v7}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 2245
    .local v5, "clockY":F
    const/4 v6, 0x0

    sub-float v7, v5, v4

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto/16 :goto_1

    .line 2235
    .end local v4    # "bottom":F
    .end local v5    # "clockY":F
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v6}, Lcom/meizu/media/music/KeyguardMusicView;->getTranslationY()F

    move-result v6

    .line 2236
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    int-to-float v7, v7

    .line 2235
    add-float/2addr v6, v7

    .line 2236
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 2235
    sub-float/2addr v6, v7

    .line 2238
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 2235
    div-float v3, v6, v7

    goto/16 :goto_0

    .line 2246
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 2247
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v7}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 2248
    .restart local v5    # "clockY":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    sub-float v7, v5, v7

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto/16 :goto_1

    .line 2254
    .end local v0    # "alphaNotifications":F
    .end local v5    # "clockY":F
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .restart local v0    # "alphaNotifications":F
    goto/16 :goto_1

    .line 2278
    .restart local v2    # "alphaQsExpansion":F
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-eqz v6, :cond_4

    .line 2279
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 2280
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2281
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2290
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-nez v6, :cond_e

    .line 2291
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 2292
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBackgroundBitmap(Z)V

    .line 2293
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 2294
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 2295
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-eqz v6, :cond_f

    .line 2296
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 2297
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2298
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setVisibility(I)V

    .line 2300
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2302
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2300
    if-eqz v6, :cond_5

    .line 2303
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v6, :cond_5

    .line 2304
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v6, :cond_5

    .line 2305
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnFromKeyguard()Z

    move-result v6

    .line 2300
    if-eqz v6, :cond_5

    .line 2306
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2307
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPlay()V

    goto/16 :goto_3

    .line 2316
    :cond_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    if-nez v6, :cond_19

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v1, v7, v6

    .line 2320
    .local v1, "alphaOfBotArea":F
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_16

    .line 2322
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onPositionChanged(F)V

    .line 2323
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->isOccludeStateChagne()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->isWallpaperStart()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2331
    :cond_11
    :goto_5
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_18

    .line 2332
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 2216
    .end local v1    # "alphaOfBotArea":F
    :cond_12
    :goto_6
    return-void

    .line 2318
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v1, v7, v6

    .restart local v1    # "alphaOfBotArea":F
    goto :goto_4

    .end local v1    # "alphaOfBotArea":F
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .restart local v1    # "alphaOfBotArea":F
    goto :goto_4

    .line 2324
    :cond_15
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_5

    .line 2326
    :cond_16
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v6

    :goto_7
    if-nez v6, :cond_11

    .line 2327
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    .line 2328
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onPositionChanged(F)V

    goto :goto_5

    .line 2326
    :cond_17
    const/4 v6, 0x0

    goto :goto_7

    .line 2333
    :cond_18
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_12

    .line 2335
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    goto :goto_6

    .line 2337
    .end local v1    # "alphaOfBotArea":F
    :cond_19
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_1b

    .line 2338
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    .line 2337
    if-eqz v6, :cond_1b

    .line 2339
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1a

    .line 2340
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 2342
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v6, :cond_12

    .line 2343
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v6, :cond_12

    .line 2344
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnFromKeyguard()Z

    move-result v6

    .line 2342
    if-eqz v6, :cond_12

    .line 2345
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPlay()V

    goto/16 :goto_6

    .line 2347
    :cond_1b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    if-nez v6, :cond_12

    .line 2348
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setAlpha(F)V

    .line 2349
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2350
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/android/systemui/statusbar/GLStaticBlurView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/GLStaticBlurView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private updateHeaderShade()V
    .locals 2

    .prologue
    .line 2187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 2190
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2186
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2122
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2123
    .local v0, "alpha":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2124
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 2125
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2132
    :cond_0
    :goto_1
    cmpl-float v1, v0, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-eq v1, v7, :cond_5

    .line 2133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2138
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2120
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v1, v0

    .line 2125
    goto :goto_0

    .line 2126
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v0

    .line 2128
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2129
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1

    .line 2134
    :cond_5
    cmpl-float v1, v0, v6

    if-nez v1, :cond_1

    .line 2135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 2136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 2139
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    goto :goto_3
.end method

.method private updateQsState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1629
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1630
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_3

    .line 1631
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1629
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateScrollViewTouchEnabled()V

    .line 1637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v0, :cond_4

    .line 1648
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail(Z)V

    .line 1652
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1653
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeNotificationFilterPanel(Z)V

    .line 1622
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1630
    goto :goto_0

    .line 1645
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    goto :goto_1
.end method

.method private updateScrollViewTouchEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3405
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    .line 3404
    return-void

    .line 3406
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    .line 3405
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateStatusBarAndMusic(F)V
    .locals 2
    .param p1, "translationY"    # F

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setTranslationY(F)V

    .line 3438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_1

    .line 3439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 3441
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getTranslationY()F

    move-result v1

    .line 3440
    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->setTranslationY(F)V

    .line 3434
    :cond_1
    return-void
.end method

.method private updateTranslationY(F)V
    .locals 2
    .param p1, "translationY"    # F

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3432
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getTranslationY()F

    move-result v1

    .line 3431
    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTranslationChanged(F)V

    .line 3430
    return-void
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 798
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    .line 799
    return-void

    .line 801
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 802
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 803
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 805
    .end local v0    # "height":F
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 796
    return-void

    .line 803
    .restart local v0    # "height":F
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 755
    return-void
.end method

.method public closeNotificationFilterPanel(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    .line 3577
    return-void
.end method

.method public closeQs()V
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 793
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 791
    return-void

    .line 793
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 2737
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail(Z)V

    .line 2734
    return-void
.end method

.method public closeQsDetail(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->closeDetail(Z)V

    .line 2742
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2896
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2895
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2934
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2935
    const/4 v0, 0x0

    .line 2936
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2937
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v1, :cond_0

    .line 2938
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v1, p1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2941
    .end local v0    # "ret":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchKeyEvent ------ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2940
    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 2942
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2945
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 841
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 2925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 2929
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3539
    const-string/jumbo v0, "\nNotificationView {"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    const-string/jumbo v0, "  mConflictingQsExpansionGesture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3542
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3543
    const-string/jumbo v0, "  mBlockTouches="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3545
    const-string/jumbo v0, "  mShowingDetail="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3547
    const-string/jumbo v0, "  shouldLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3548
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3549
    const-string/jumbo v0, "  mQsTracking="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3550
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3551
    const-string/jumbo v0, "  mCameraShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3552
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3553
    const-string/jumbo v0, "  mQsExpandImmediate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3554
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3555
    const-string/jumbo v0, " mKeyguardStatusView.getVisibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    const-string/jumbo v0, " mKeyguardStatusView.alpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    const-string/jumbo v0, " mKeyguardMusicView.getVisibility()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    const-string/jumbo v0, " mKeyguardMusicView.getVisibility()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    const-string/jumbo v0, " mKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    const-string/jumbo v0, " mShowingFilterPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    const-string/jumbo v0, " isQsTilesEditMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    const-string/jumbo v0, "    }\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    return-void
.end method

.method public exitQsTilesEditMode(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 2751
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exitQsTilesEditMode mEditMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanel;->setTilesEditMode(ZZ)V

    .line 2750
    :cond_0
    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 818
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "expandWithQs, expand qs directly if no notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 815
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 829
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 830
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 828
    return-void

    .line 831
    :cond_1
    const-string/jumbo v1, "closed"

    goto :goto_0
.end method

.method protected flingExpands(FF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    .line 1140
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v0

    .line 1143
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1144
    const/4 v0, 0x1

    .line 1146
    .end local v0    # "expands":Z
    :cond_0
    return v0
.end method

.method public flingTopOverscroll(FZ)V
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v2, :cond_0

    .line 1265
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    .line 1264
    if-nez v2, :cond_0

    .line 1265
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 1263
    if-eqz v2, :cond_1

    .line 1266
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable pull-down on keyguard-normal."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void

    .line 1270
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1271
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1272
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    :goto_0
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldFlingTopOverscrollExpand(F)Z

    move-result v0

    .line 1273
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1272
    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 1261
    return-void

    :cond_3
    move v1, p1

    .line 1272
    goto :goto_0
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2694
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2695
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v1

    .line 2694
    if-eqz v1, :cond_0

    .line 2695
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v1, :cond_1

    .line 2694
    :cond_0
    :goto_0
    return v0

    .line 2695
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

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

.method protected getCannedFlingDurationFactor()F
    .locals 1

    .prologue
    .line 2685
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2686
    const v0, 0x3f333333    # 0.7f

    return v0

    .line 2688
    :cond_0
    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .prologue
    .line 2706
    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxPanelHeight()I
    .locals 5

    .prologue
    .line 1982
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 1983
    .local v1, "min":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1984
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1985
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    .line 1986
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1985
    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 1987
    .local v2, "minHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1990
    .end local v2    # "minHeight":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 1991
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v0

    .line 1995
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1996
    return v0

    .line 1993
    .end local v0    # "maxHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v0

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2679
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getCameraView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenHeight()I
    .locals 2

    .prologue
    .line 3468
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenHeight:I

    if-nez v0, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenHeight:I

    .line 3472
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenHeight:I

    return v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 1

    .prologue
    .line 2412
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V

    .line 2413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2411
    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2808
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isExpanding()Z
    .locals 1

    .prologue
    .line 3122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return v0
.end method

.method public isFilterPanelDismissButtonVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterDismissButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getY()F

    move-result v3

    sub-float v1, p2, v3

    .line 939
    .local v1, "yTransformed":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 940
    .local v0, "stackScrollerX":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v3

    if-eqz v3, :cond_0

    cmpg-float v3, v0, p1

    if-gez v3, :cond_0

    .line 941
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 940
    :cond_0
    return v2
.end method

.method protected isKeyguardNormalMode()Z
    .locals 1

    .prologue
    .line 3274
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isKeyguardShadeMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3268
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 3280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 2764
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 2768
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isMzKeyguardAffordanceHelperSwiping()Z
    .locals 1

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationFilterPanelShowing()Z
    .locals 1

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result v0

    return v0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method public isQsFullyExpanded()Z
    .locals 1

    .prologue
    .line 2727
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    return v0
.end method

.method public isQsTilesEditMode()Z
    .locals 1

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v0

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 1970
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    .line 1972
    return v0

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    return v0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .prologue
    .line 2712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWallpaperStart()Z
    .locals 1

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->isWallpaperStart()Z

    move-result v0

    return v0
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    const v1, 0x7f0b03d7

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 447
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 449
    const v1, 0x1050017

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 456
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 460
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    const v1, 0x7f0b03d5

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 443
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    goto :goto_0
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 2

    .prologue
    .line 3294
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 3295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 3299
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 3293
    :cond_0
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2567
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2562
    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 6
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    const/4 v5, 0x1

    .line 2541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v2, p1

    .line 2542
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2543
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2544
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDisplayDensity()F

    move-result v0

    .line 2545
    .local v0, "displayDensity":F
    div-float v4, p2, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2546
    .local v1, "lengthDp":I
    div-float v4, p3, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2547
    .local v3, "velocityDp":I
    if-eqz v2, :cond_2

    .line 2549
    const/4 v4, 0x5

    .line 2548
    invoke-static {v4, v1, v3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 2550
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->launchPhone()V

    .line 2557
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startLaunchTransitionTimeout()V

    .line 2558
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 2540
    return-void

    .line 2541
    .end local v0    # "displayDensity":F
    .end local v1    # "lengthDp":I
    .end local v3    # "velocityDp":I
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .local v2, "start":Z
    goto :goto_0

    .end local v2    # "start":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "start":Z
    goto :goto_0

    .line 2553
    .end local v2    # "start":Z
    .restart local v0    # "displayDensity":F
    .restart local v1    # "lengthDp":I
    .restart local v3    # "velocityDp":I
    :cond_2
    const/4 v4, 0x4

    .line 2552
    invoke-static {v4, v1, v3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 2555
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectSlideLeftCamera(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    :cond_0
    return-void
.end method

.method protected onCameraStateChange()V
    .locals 1

    .prologue
    .line 3447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept()Z

    move-result v0

    .line 3448
    .local v0, "showBg":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onCameraStateChange(Z)V

    .line 3446
    return-void
.end method

.method public onCameraStateChange(Z)V
    .locals 2
    .param p1, "showBg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-eq v0, p1, :cond_1

    .line 3454
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 3455
    if-eqz p1, :cond_2

    .line 3456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 3459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3452
    :cond_1
    :goto_0
    return-void

    .line 3461
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onCameraTranslateEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3481
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    if-eqz v0, :cond_0

    .line 3482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3487
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3480
    :cond_1
    return-void
.end method

.method protected onCameraTranslateStart()V
    .locals 1

    .prologue
    .line 3477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3476
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-ne p1, v0, :cond_0

    .line 2530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2531
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 2532
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 2528
    :cond_0
    :goto_0
    return-void

    .line 2533
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 2534
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2508
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 2512
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setAlpha(F)V

    .line 2507
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :cond_0
    return-void
.end method

.method protected onEdgeClicked(Z)V
    .locals 2
    .param p1, "right"    # Z

    .prologue
    .line 2573
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2577
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEdgeClicked, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    return-void

    .line 2575
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2576
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v0

    .line 2573
    if-nez v0, :cond_0

    .line 2580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    .line 2581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 2572
    :cond_3
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2382
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2384
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2385
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 2386
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 2387
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2390
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 2393
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeNotificationFilterPanel(Z)V

    .line 2399
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2400
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 2402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onExpandingFinished()V

    .line 2381
    return-void

    .line 2397
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0
.end method

.method protected onExpandingStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2363
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 2364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 2365
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2366
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 2367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2371
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 2372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 2373
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2377
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onExpandingStarted()V

    .line 2362
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 294
    const v1, 0x7f0f024c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 299
    const v1, 0x7f0f01bc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 298
    check-cast v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 301
    const v2, 0x7f0f024e

    .line 300
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 302
    .local v0, "showFilterPanel":Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;
    const v1, 0x7f0f01ba

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterDismissButton:Landroid/view/View;

    .line 303
    const v1, 0x7f0f01b7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->addCallback(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;)V

    .line 354
    const v1, 0x7f0f00da

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 356
    const v1, 0x7f0f005e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 357
    const v1, 0x7f0f01de

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 358
    const v1, 0x7f0f01df

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 360
    const v1, 0x7f0f005f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockView:Landroid/view/ViewGroup;

    .line 361
    const v1, 0x7f0f0246

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    .line 365
    const v1, 0x7f0f0243

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/view/View;

    .line 366
    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    .line 368
    const v1, 0x7f0f0247

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 367
    check-cast v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDividingLine(Landroid/view/View;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 375
    const v2, 0x10c000d

    .line 374
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 377
    const v2, 0x10c000f

    .line 376
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 379
    const v2, 0x10c000e

    .line 378
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 380
    const v1, 0x7f0f0076

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .line 382
    const v1, 0x7f0f0249

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 383
    const v1, 0x7f0f0242

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideContent:Landroid/widget/FrameLayout;

    .line 384
    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setBottomAreaView(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    const v2, 0x7f0f0199

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperIcon:Landroid/widget/ImageView;

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .line 389
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperIcon(Landroid/widget/ImageView;)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->updateWallpaperIconVisibility()V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setWallpaperController(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setNotificationStackScroller(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setWallpaperIcon(Landroid/widget/ImageView;)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->addSlideContent(Landroid/view/View;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->addSlideContent(Landroid/view/View;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->addSlideContent(Landroid/view/View;)V

    .line 402
    const v1, 0x7f0f024a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/view/View;

    const v2, 0x7f0f024b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissButton:Landroid/view/View;

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setupAnimations()V

    .line 407
    const v1, 0x7f0f01dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailView:Landroid/view/View;

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setDetailWrapper(Landroid/view/View;)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->addCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V

    .line 439
    const v1, 0x7f0f008b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 292
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2488
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2489
    return-void

    .line 2491
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2484
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 7
    .param p1, "expandedHeight"    # F

    .prologue
    const/4 v6, 0x0

    .line 2005
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v4, :cond_1

    .line 2006
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2008
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v4, :cond_5

    .line 2020
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateScrollViewTouchEnabled()V

    .line 2021
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 2023
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2025
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 2026
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v4, v6}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setTranslationY(F)V

    .line 2040
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2042
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 2043
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissView()V

    .line 2045
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v4, :cond_a

    .line 2051
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 2004
    return-void

    .line 2008
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_2

    .line 2009
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v4, :cond_2

    .line 2010
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    .line 2011
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v5

    .line 2010
    add-int/2addr v4, v5

    .line 2012
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v5

    .line 2010
    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 2013
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v4

    int-to-float v1, v4

    .line 2014
    .local v1, "panelHeightQsExpanded":F
    sub-float v4, p1, v0

    .line 2015
    sub-float v5, v1, v0

    .line 2014
    div-float v2, v4, v5

    .local v2, "t":F
    goto :goto_0

    .line 2031
    .end local v0    # "panelHeightQsCollapsed":F
    .end local v1    # "panelHeightQsExpanded":F
    .end local v2    # "t":F
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v4, :cond_9

    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    .line 2030
    :goto_3
    sub-float v4, p1, v4

    .line 2028
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2035
    .local v3, "translationY":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 2036
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v4, :cond_3

    .line 2037
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v4, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setTranslationY(F)V

    goto :goto_1

    .line 2032
    .end local v3    # "translationY":F
    :cond_8
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    goto :goto_3

    .line 2033
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_3

    .line 2046
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 849
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v6, :cond_0

    .line 850
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldLaunchCamera:Z

    .line 849
    if-nez v6, :cond_0

    .line 850
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    .line 849
    if-eqz v6, :cond_1

    .line 851
    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "block touch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", show detail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 852
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    .line 851
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 852
    const-string/jumbo v9, ", launch camera is "

    .line 851
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 853
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldLaunchCamera:Z

    .line 851
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 853
    const-string/jumbo v9, ", mShowingFilterPanel = "

    .line 851
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 854
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    .line 851
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return v7

    .line 858
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 859
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 860
    .local v2, "pointerIndex":I
    if-gez v2, :cond_2

    .line 861
    const/4 v2, 0x0

    .line 862
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 864
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 865
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 867
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 933
    :cond_3
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 869
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 870
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 871
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 873
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 874
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept(FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraTouching:Z

    .line 875
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 878
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    .line 879
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 880
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 881
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 882
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 883
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto :goto_0

    .line 887
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 888
    .local v3, "upPointer":I
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v6, v3, :cond_3

    .line 890
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v3, :cond_5

    const/4 v1, 0x0

    .line 891
    .local v1, "newIndex":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 892
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 893
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_0

    .line 890
    .end local v1    # "newIndex":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "newIndex":I
    goto :goto_1

    .line 898
    .end local v1    # "newIndex":I
    .end local v3    # "upPointer":I
    :pswitch_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v6

    .line 899
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 900
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v6, :cond_7

    .line 904
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float v9, v0, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 905
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 906
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 907
    return v8

    :cond_6
    move v6, v8

    .line 904
    goto :goto_2

    .line 909
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    .line 910
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v6, v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v6

    .line 909
    if-eqz v6, :cond_3

    .line 911
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 913
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 914
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 915
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 916
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 917
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 918
    return v8

    .line 924
    .end local v0    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 925
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v6, :cond_8

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_9

    .line 926
    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 928
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 930
    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    :cond_9
    move v8, v7

    .line 927
    goto :goto_3

    .line 867
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

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 506
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 508
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasBeenLayoutedSinceBooting:Z

    if-nez v2, :cond_0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasBeenLayoutedSinceBooting:Z

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setPivotX(F)V

    .line 513
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb0c000

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setPivotY(F)V

    .line 516
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 518
    .local v0, "oldMaxHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 520
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 521
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DG_DISTANCE_EXPANDS:F

    .line 522
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    .line 521
    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QS_EXPANSION_OPEN_FRACTION:F

    .line 523
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DG_FAST_DISTANCE_EXPANDS:F

    .line 524
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    .line 523
    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->Qs_EXPANSION_FAST_OPEN_FRACTION:F

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestUpdateFlingOnLayout()V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 529
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 533
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v2, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 546
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 549
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v2, v6}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setTranslationY(F)V

    .line 562
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissView()V

    .line 566
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 567
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v3, v4

    .line 566
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    .line 574
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_5

    .line 579
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 505
    return-void

    .line 518
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 543
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_3

    .line 544
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    goto :goto_1

    .line 552
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    .line 555
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_b

    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    :goto_3
    sub-float v2, v3, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 557
    .local v1, "translationY":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 558
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v2, :cond_4

    .line 559
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v2, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setTranslationY(F)V

    goto :goto_2

    .line 555
    .end local v1    # "translationY":F
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_3
.end method

.method public onMakeStatusBar()V
    .locals 2

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 3126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    .line 3124
    :cond_0
    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v2, :cond_0

    .line 1243
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    .line 1242
    if-nez v2, :cond_0

    .line 1243
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 1241
    if-eqz v2, :cond_1

    .line 1244
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disable pull-down on keyguard-normal."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void

    .line 1248
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1249
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_2

    .line 1250
    const/4 p1, 0x0

    .line 1252
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    move v0, p1

    .line 1253
    .local v0, "rounded":F
    :goto_0
    cmpl-float v2, v0, v4

    if-eqz v2, :cond_4

    .end local p2    # "isRubberbanded":Z
    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1254
    cmpl-float v2, v0, v4

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1255
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1257
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1239
    return-void

    .line 1252
    .end local v0    # "rounded":F
    .restart local p2    # "isRubberbanded":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "rounded":F
    goto :goto_0

    :cond_4
    move p2, v1

    .line 1253
    goto :goto_1

    .end local p2    # "isRubberbanded":Z
    :cond_5
    move v2, v1

    .line 1254
    goto :goto_2

    :cond_6
    move v1, v3

    .line 1257
    goto :goto_3
.end method

.method protected onPullNotificationPanelOnKeyguardShade()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3286
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3287
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 3289
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onPullNotificationPanelOnKeyguardShade()V

    .line 3284
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2495
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2519
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 2523
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 2518
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2880
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2878
    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    .line 2884
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 2885
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 2886
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraTouching:Z

    .line 2877
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2866
    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 2871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnFromKeyguard()Z

    move-result v0

    .line 2866
    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    .line 2864
    :cond_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2499
    :cond_0
    return-void
.end method

.method public onSwipingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2629
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2630
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2625
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 993
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v3, :cond_0

    .line 994
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    .line 993
    if-eqz v3, :cond_1

    .line 995
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "block touch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", show detail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 996
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    .line 995
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 996
    const-string/jumbo v5, ", mShowingFilterPanel= "

    .line 995
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 997
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    .line 995
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return v7

    .line 1001
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 1002
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Forbidden sliding NotificationPanelView in QSTiles edit mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return v7

    .line 1006
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 1007
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v3, :cond_4

    .line 1008
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_5

    .line 1014
    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-eqz v3, :cond_6

    .line 1015
    return v6

    .line 1009
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1010
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1011
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1017
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 1018
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1029
    :cond_7
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_8

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1034
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_9

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 1036
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguard:Z

    .line 1034
    if-eqz v3, :cond_9

    .line 1037
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    if-eqz v3, :cond_b

    .line 1063
    :cond_9
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_10

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1065
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_10

    .line 1066
    return v6

    .line 1018
    :cond_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_7

    .line 1019
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1017
    if-eqz v3, :cond_7

    .line 1022
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1023
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1024
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1025
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_1

    .line 1038
    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-nez v3, :cond_9

    .line 1039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1040
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1041
    .local v1, "x":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v2, v3

    .line 1042
    .local v0, "h":F
    cmpl-float v3, v0, v5

    if-lez v3, :cond_c

    .line 1043
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideDown:Z

    .line 1045
    :cond_c
    cmpg-float v3, v0, v5

    if-gez v3, :cond_d

    .line 1046
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideUp:Z

    .line 1048
    :cond_d
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideDown:Z

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsSlideUp:Z

    if-eqz v3, :cond_f

    .line 1059
    :cond_e
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1049
    :cond_f
    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldExpendQsWhenSlideDownOnKeyguard(FFF)Z

    move-result v3

    .line 1048
    if-eqz v3, :cond_e

    .line 1050
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1052
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1056
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_e

    .line 1057
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    goto :goto_3

    .line 1069
    .end local v0    # "h":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_12

    .line 1071
    :cond_11
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1073
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1075
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_13

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_13

    .line 1076
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1075
    if-eqz v3, :cond_13

    .line 1077
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1081
    :cond_13
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v3, :cond_17

    .line 1082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_17

    .line 1083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v8, :cond_17

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_17

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_17

    .line 1086
    :goto_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v3

    .line 1081
    if-eqz v3, :cond_16

    .line 1088
    :cond_14
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTwoFingerQsExpandPossible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1090
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1090
    const-string/jumbo v5, ", mShadeEmpty = "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1091
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1091
    const-string/jumbo v5, ", event.getActionMasked() = "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1093
    const-string/jumbo v5, ", event.getPointerCount() = "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1094
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1094
    const-string/jumbo v5, ", mKeyguardShowing = "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1095
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1095
    const-string/jumbo v5, ", isKeyguardShadeMode() = "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1096
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v5

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1100
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 1107
    :cond_15
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1110
    :cond_16
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1111
    return v6

    .line 1085
    :cond_17
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 1081
    if-eqz v3, :cond_16

    goto/16 :goto_4
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 2436
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 2437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2444
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastMaxPanelHeight:F

    .line 2435
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .prologue
    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2457
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 2458
    if-eqz p1, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2462
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2464
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_2

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->reset(Z)V

    .line 2469
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2473
    :cond_3
    :goto_0
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 2474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2475
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    .line 2477
    .local v1, "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2478
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 2456
    .end local v1    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_5
    return-void

    .line 2470
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    return-void

    .line 963
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 956
    return-void
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 769
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 770
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 771
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 772
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 773
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldLaunchCamera:Z

    .line 774
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraTouching:Z

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onCameraStateChange(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    .line 782
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDividingLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3, v2, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 767
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->reset(Z)V

    goto :goto_0
.end method

.method public setBarState(IZZ)V
    .locals 7
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1322
    if-eq p1, v5, :cond_7

    .line 1323
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const/4 v0, 0x1

    .line 1325
    .local v0, "keyguardShowing":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBarState ------ statusBarState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1326
    const-string/jumbo v3, ",keyguardFadingAway="

    .line 1325
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1327
    const-string/jumbo v3, ",goingToFullShade="

    .line 1325
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    const-string/jumbo v3, ",keyguardShowing="

    .line 1325
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBarState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 1331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 1335
    :cond_0
    if-eqz v0, :cond_9

    .line 1336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v1, :cond_1

    .line 1337
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1339
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v1, v5}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    .line 1342
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1346
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1357
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_a

    .line 1359
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1361
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 1363
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1375
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setKeyguardShowing(Z)V

    .line 1376
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1377
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1378
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 1382
    :goto_4
    if-eqz p3, :cond_e

    .line 1383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1388
    :goto_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1389
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    :goto_6
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1396
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->exitQsTilesEditMode(Z)V

    .line 1398
    :cond_5
    if-eqz p3, :cond_6

    .line 1399
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateHeaderSlidingIn()V

    .line 1401
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v5, :cond_11

    .line 1402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 1320
    :goto_7
    return-void

    .line 1322
    .end local v0    # "keyguardShowing":Z
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "keyguardShowing":Z
    goto/16 :goto_0

    .line 1323
    .end local v0    # "keyguardShowing":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "keyguardShowing":Z
    goto/16 :goto_0

    .line 1349
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 1353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1365
    :cond_a
    if-eqz v0, :cond_b

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-nez v1, :cond_4

    .line 1368
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 1369
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    if-nez v1, :cond_4

    .line 1370
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedHeight(FZ)V

    .line 1371
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setFullyCollapsedOnKeyguardShade(Z)V

    goto/16 :goto_2

    :cond_c
    move v1, v2

    .line 1375
    goto/16 :goto_3

    .line 1380
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v1, v6}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    goto :goto_4

    .line 1385
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1386
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_f

    move v1, v2

    :goto_8
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x4

    goto :goto_8

    .line 1392
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v3

    goto/16 :goto_6

    .line 1404
    :cond_11
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method public setDozing(ZZ)V
    .locals 3
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2791
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2792
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 2793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_2

    .line 2794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 2790
    :cond_1
    :goto_0
    return-void

    .line 2797
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setVisibility(I)V

    .line 2798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2799
    if-eqz p2, :cond_1

    .line 2800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn()V

    .line 2801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->startFinishDozeAnimation()V

    goto :goto_0
.end method

.method public setFilterShadeEmpty(Z)V
    .locals 1
    .param p1, "empty"    # Z

    .prologue
    .line 3582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3583
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterShadeEmpty:Z

    .line 3584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFilterEmptyShadeView()V

    .line 3581
    return-void
.end method

.method public setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 3222
    :cond_0
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 2850
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2772
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2771
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_1

    .line 2419
    :cond_0
    return-void

    .line 2421
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2423
    if-eqz p2, :cond_3

    .line 2424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2430
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2417
    :cond_2
    return-void

    .line 2427
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_0
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 1
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClickable(Z)V

    .line 761
    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2
    .param p1, "qsScrimEnabled"    # Z

    .prologue
    .line 2843
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 2844
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 2845
    if-eqz v0, :cond_0

    .line 2846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2842
    :cond_0
    return-void

    .line 2843
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setShadeEmpty(Z)V
    .locals 4
    .param p1, "shadeEmpty"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2815
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 2816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2818
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    .line 2819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    .line 2818
    if-eqz v0, :cond_3

    .line 2820
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 2822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2823
    const/4 v1, 0x0

    .line 2822
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2825
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 2827
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2811
    :cond_3
    return-void
.end method

.method public setShowLockscreenNotifications(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3244
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    .line 3245
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 3243
    return-void

    .line 3245
    :cond_0
    const-string/jumbo v0, "hide lock screen notifications."

    goto :goto_0

    .line 3246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 286
    return-void
.end method

.method public shouldCameraIntercept()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3411
    return v1

    .line 3413
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyCollapsedOnKeyguardShade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3416
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3417
    return v1

    .line 3414
    :cond_2
    return v1

    .line 3419
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraTouching:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraAnimationRunning:Z

    if-nez v0, :cond_4

    .line 3420
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldCameraIntercept(FF)Z

    move-result v0

    .line 3419
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2760
    const/4 v0, 0x1

    return v0
.end method

.method protected startCameraHintAnimation()V
    .locals 0

    .prologue
    .line 3428
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimation()V

    .line 3427
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 2600
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    .line 2601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    .line 2599
    return-void
.end method

.method protected touchOnStatusBarInKeyguardShade(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3376
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 3377
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 3378
    .local v0, "onHeader":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v1

    :goto_1
    return v1

    .line 3377
    .end local v0    # "onHeader":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "onHeader":Z
    goto :goto_0

    .line 3376
    .end local v0    # "onHeader":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "onHeader":Z
    goto :goto_0

    .line 3378
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateDismissView(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3395
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 3396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->adjustBottomMargin(I)V

    .line 3394
    return-void
.end method

.method public updateResources()V
    .locals 7

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 468
    .local v4, "panelWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 470
    .local v3, "panelGravity":I
    const/4 v1, 0x0

    .line 471
    .local v1, "headerHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 478
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 480
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 481
    .local v2, "lLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v5, v4, :cond_0

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, v1, :cond_1

    .line 482
    :cond_0
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 483
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 484
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 485
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 489
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 490
    .local v0, "fLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v5, v4, :cond_2

    .line 491
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 492
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    .restart local v0    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v5, v4, :cond_3

    .line 498
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 499
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    :cond_3
    return-void

    .line 475
    .end local v0    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "lLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 3216
    return-void
.end method
